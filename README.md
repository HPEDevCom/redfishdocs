---
excludeFromSearch: true
---

# hpe-ilo-redocly

This <a href="https://github.com/HewlettPackard/hpe-ilo-redocly" target="_blank">hpe-ilo-redocly</a> private repository contains the sources of the [HPE Redfish documentation portal](https://servermanagementportal.ext.hpe.com/). It is linked to the <a href="https://app.cloud.redocly.com/" target="_blank">Redocly/Realm application</a>. The Redocly/Realm application consists of a complete documentation environment to renders `.md` and OpenAPI files contained in this repo using specific configuration files.

You need an account to be able to access the Redocly/Realm platform.

Read the <a href="https://redocly.com/docs/realm" target="_blank">Redocly/Realm documentation</a> for more information, including the <a href="https://redocly.com/docs/realm/get-started/migrate-from-legacy-portal" target="_blank">migration</a> from the
legacy Redocly/Workflows product.

The structure of this repository is designed to reach the following goals:

* Ability to render multiple Redfish services (i.e. iLO, CSUS3200) and Redfish clients (i.e. iLOrest, Python/PowerShell libraries) documentation.
* Ability to render multiple versions of a specific Redfish service (i.e. iLO 6 v1.10, iLO 7 v1.11.00, iLOrest 6.0.0...)

> NOTE: To minimize the portal size, the number of iLO firmware versions is limited. Refer to the `keepOldVersions` variable in the [_script_wrapper.sh](/docs/_scripts/_script_wrapper.sh) for more detail.

Table of contents

* [Repository structure](#repository-structure)
* [Redocly markdown](#redocly-markdown)
* [File folder naming scheme](#file-folder-naming-scheme)
* [Redocly rendering processes](#redocly-rendering-processes)
* [Review and publication processes](#review-and-publication-processes)
* [Automatic Redocly workflow](#automatic-redocly-workflow)
* [Local rendering](#local-rendering)
* [Appendix](#appendix)
  * [Setup for local rendering](#setup-for-local-rendering)
  * [Caveats](#caveats)
  * [Guidelines to convert from Workflows](#guidelines-to-convert-from-workflows)

## Repository structure

A typical Redocly/Realm portal structure is explained in the <a href="https://redocly.com/docs/realm/author/concepts/project-structure" target="_blank"> Realm documentation</a>. Our Redfish portal structure may be slightly different to cope with Grommet. Then, the documents are posted under the `docs` directory.

| File or folder name | Description | Comments |
| ---- | ---- | ---- |
|`_components`, `_override`, `components`, `scripts`, `static` | Grommet and Redocly folders | **NOTE** A `docs/_script` folder exists and contains scripts to be used during the rendering process. |
| `theme.ts`, `grommet-theme.json` | Look and feel directives | |
| `images` | Folder containing images | |
| `redocly.yaml` | Portal configuration file | Contains global directives |
| `packages.json` | Everything needed to build the portal | Among other things, it contains the start command of the local portal with TCP default port 4000. |
| `index.page.tsx` | Portal entry page design | Mixture of Markdown, JavaScript and React directives |
| `sidebars.yaml` | Left pane hierarchical menus | Define sections pointers to `.md` and `.yaml` documents |
| `docs` | Document/content folder sources and rendering scripts. | The structure of the this folder tries to reflect the `sidebars.yaml` structure. |

**NOTE**: `.yaml` files MUST be in the UNIX format
(Unicode text, UTF-8 text with LF terminators). Use the `dos2unix`
tool to force to the UNIX file format. Windows/DOS format
(CRLF line terminators) may result with build errors.

**NOTE**: Markdown files prefixed with an `_` char are note processed by the Redocly engine even if not mentioned in `sidebars.yaml`. Markdown files prefixed with an `_` char are not processed by the Redocly engine. Refer to the `ignore` directive in the `redocly.yaml` configuration file.

To exclude files from the search engine, include directive `excludeFromSearch: true` in the <a href="https://redocly.com/docs/realm/config/front-matter-config" target="_blank">front matter</a> section of the desired files.

## Redocly markdown

Redocly `.md` files are processed by a <a href="https://redocly.com/learn/markdoc" target="_blank">Markdoc engine</a>. It is slightly different from the
<a href="https://spec.commonmark.org/current/" target="_blank">CommonMark</a> markdown used by the Redocly/Workflows.

### Admonitions

Markdown files support <a href="https://redocly.com/docs/realm/get-started/migrate-from-legacy-portal#change-admonition-syntax" target="_blank"> admonitions</a>. This feature provides a way to distinguish info, warnings, danger, attention and success text. The Markdoc syntax is:

```text
{% admonition type="keyword" name="Optional" %} text
Pick keyword from the list: info, success, warning, danger, attention
{% /admonition %}
```

### External links

To ease navigation, external links should use the HTML anchor `href` syntax in order to open a new tab with the external link. The syntax is: `<a href="https://some.external.link" target="_blank">String</a>`.

### Global environment variables

Redocly/Realm has the possibility to handle <a href="https://redocly.com/docs/realm/setup/how-to/env-variables#manage-environment-variables" target="_blank">global environment variables</a>. Those variables are expended during both the local or the realm rendering processes. For local use, refer to the `.env` file in the root directory of this repo.

 When willing to deploy/render the project infrastructure, make sure that the Settings/Environment Variables are up to date (left pane).

Then, you can reference those variables in the `.md` files with the following syntax: `{{process.env.VARIABLENAME}}`.

As an example, the content of `.env` is:

```shell
PUBLIC_LATEST_ILO_GEN_VERSION=ilo7
PUBLIC_LATEST_FW_VERSION=111
PUBLIC_LATEST_ILO6_FW_VERSION=168
PUBLC_LATEST_ILO7_FW_VERSION=111
PUBLIC_LATEST_ILO5_FW_VERSION=309
PUBLIC_LATEST_PYTHON_LIBRARY_VERSION=3200
```

With the above definitions, the following Markdoc tag:

`{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "/#hpeilobackuprestoreservice") %} Latest iLO {% /link-internal %}`

 will be expanded into:

`/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_hpe_resourcedefns167#hpeilobackuprestoreservice`

The use of those firmware variables ensures that hrefs links and fragments present in markdown files always point to the most appropriate firmware revision section.

## File folder naming scheme

For a smooth and efficient reviewing and publishing process, it is important to define and respect a clear naming scheme for folders, `.yaml` and `.md` file names tight to a specific iLO or iLOrest version.

The following table defines the rules for an iLO of generation `G` and firmware version `x.yz`, with associated examples. There is as well similar lines for iLOrest.

> NOTE: To avoid file/folder case problems in such CI/CD infra, mixing Operating Systems (Linux/Windows/PowerShell/Cygwin) and applications as Service(GitHub/Redocly), it is wise to follow a strict strategy concerning the case of alphabetic chars: LOWER case ONLY.

> NOTE: Redocly naming scheme for file names and properties is a bit different, as it allows an upper case letter as a separator for each sub words except the first one. Examples: `redocly.yaml` or `lastUpdateBlock`.

| File or folder description | Location | Example | Comment |
| ---- | ---- | ---- | ---- |
|OpenAPI/Swagger files| `openapi/iloG_xyz/iloG_xyz-openapi.yaml` | `openapi/ilo6_110/ilo6_110-openapi.yaml` | The reason to have `_` and `-` separators is to avoid rendering the version in italic. |
| iLO Manually generated MD files | `docs/ilos/iloG/iloG_lowercasetring.md` | `docs/ilos/ilo6/ilo6_accountservice.md` | Chars must be lowercase |
| iLO Automatically generated MD files | `docs/ilos/iloG/iloG_xyz/iloG_lowercasestringxyz.md` | `docs/ilos/ilo6/ilo6_110/ilo6_resmap110.md` | Chars must be lower case |
| iLOrest files | `ilorest/ilorestXYZ/ilorestXYZ_lowercasestring` | `ilorest/ilorestXYZ/ilorest400_bioscommands.md` | |

## Redocly rendering processes

There are two possibilities to trigger the rendering of a Redocly/Realm portal:

1. A local rendering manual process happening in your laptop. This process renders the portal in a local web server on port 4000 by default. Refer to the <a href="https://redocly.com/docs/cli" target="_blank">documentation</a> to install the Redocly/CLI on your laptop. Then, run `redocly preview [--port=<portNumber>]` and connect your favorite browser to `http://localhost:<portNumber>`
2. The automatic Redocly/Realm workflow. See below for more detail.

**NOTE**: When deploying the documentation of a new iLO firmware version, don't forget to launch the `docs/_scripts/_script_wrapper.sh` to generate `resmap.md`, `resourcedefns.md` and `msgregs.md` files.

### Automatic Redocly workflow

A Redocly workflow is a process that transforms markdown and `yaml` files into `html`/JavaScript files suitable for your favorite browser. This process happens in the Redocly's infrastructure.

The following explains briefly the last revision of this Redocly <a href="https://redocly.com/blog/redocly-for-tech-writers/#review-and-collaborate" target="_blank">whitepaper</a>.

Redocly triggers its automatic workflow to post a **Preview** of the portal when:

* a GitHub Pull Request is created to merge a development branch into the main/master branch. The preview of a branch called `my-branch` is accessible at <a href="https://preview.redoc.ly/redfish/my-branch" target="_blank">https://preview.redoc.ly/redfish/my-branch</a>.
* a commit is performed into the an already created PR like above.

As a consequence, project reviewers can review the source code in the modified GitHub branch as well as its rendered aspect in the preview location at <a href="https://preview.redoc.ly/redfish/my-branch" target="_blank">https://preview.redoc.ly/redfish/my-branch</a>. This is a tremendous advantage over the Slate process where we had to launch the `./deploy.sh` script in the internal GitHub repo.

Redocly triggers its automatic workflow to post a **Production** view of the portal when:

* Fully approved Pull Requests of development branches are merged into the main/master branch.

Timewise, a Redfish portal rendering using the automatic Redocly workflow lasts around ten minutes.

During the automatic Redocly workflow, you can only view the a "wait" logo or the return status of the Redocly tasks in GitHub PR detail page. Only users with an account in Redocly can see the progress detail of this process, as well as error logs if any.

### Link Checker

Redocly/Realm embeds a link checker that can be enabled/disabled in the `redocly.yaml` file, with the `ignoreLinkChecker` Boolean <a href="https://redocly.com/docs/developer-portal/configuration/siteconfig/link-checker/#usage" target="_blank">directive</a>. Note that this link checker adds time to the rendering process. Moreover, if the `severity` is set to `error`, the entire build is considered unsuccessful and cannot be not deployed in case of error. A `severity` of `warning` does not prevent the publication.

## Review and publication processes

Considering the Redocly workflow process described in the previous paragraph, here is a possible review and publication process for the Redfish Redocly portal.

* Clone the `hpe-ilo-redocly` GitHub repository on your laptop:
  
  `git clone git@github.com:HewlettPackard/hpe-ilo-redocly.git`

* Create a development branch and switch to it:

  `git checkout -b my-branch`  

* Perform your modifications, commit and push upstream
  
  `git add <files>`

  `git commit -sm "Text"`

  `git push` # if the branch exists upstream or,

  `git push --set-upstream origin my-branch` # if the branch does not exists upstream.

The above `push` command creates a Pull Request in the <a href="https://github.com/HewlettPackard/hpe-ilo-redocly/pulls" target="_blank">hpe-ilo-redocly</a> repository. A Redocly rendering workflows starts, that will be published at <a href="https://preview.redoc.ly/redfish/my-branch" target="_blank">'https://preview.redoc.ly/redfish/my-branch'</a>.
  
* Technical writer can ask reviewers to review the PR (approve, comment...).

* For each new commit in the `my-branch` PR, a new preview build will be started.
  
* When all reviewers' change requests have been implemented and approved, it is possible to merge the PR into the main branch. This is synonym of publishing the portal to the **Production** site. This publish process runs again the Redocly workflows.

>NOTE: for a given iLO firmware or iLOrest version, it could be wise to merge all the development branches.

## Appendix

### Setup for local rendering

Follow the <a href="https://redocly.com/docs/cli" target="_blank">documentation</a> steps to install the Redocly/CLI tool
on your laptop. When done, using a CMD.exe or PowerShell terminal, change directory to your local Redocly repository,
and launch `redocly preview`. This command starts a local web server on port 4000 (by default).

With a Web browser, connect to this local web server (http://localhost:4000) to view in real time the
modifications performed in the content files, using your favorite IDE (i.e. Visual Studio Code).

>NOTE: As of the writing of this file, the splash screen of the portal is mis-rendered. However, all
other pages are Ok, including the search engine.

When editing is done, commit your changes upstream.

### Guidelines to convert from Redocly/Workflows

This section provides some Markdown differences between Redocly/Workflows and Redocly/Realm.
While Redocly/Workflows Markdown pages are based upon
<a href="https://spec.commonmark.org/" target="_blank">CommonMark</a>, Reunite/Realm
uses <a href="https://markdoc.dev" target="_blank">Markdoc</a>.
As a consequence, several parts of pages must be updated.

Most of the updates in the following table comes from the Workflows to Realm
<a href="https://redocly.com/docs/realm/get-started/migrate-from-legacy-portal"
target="_blank">migration documentation section</a>.

>NOTE: Most of the steps to convert files from Redocly/Workflows to Realm
have been automated in scripts of the `docs/_scripts` folder.

| Description | Redocly/Workflows | Reunite/Realm |
| ---- | ---- | ---- |
| Insert Redocly <a href="https://redocly.com/docs/realm/config/front-matter-config#options-in-front-matter-only" target="_blank">front matter section</a> at the very beginning of `.md` files | <pre>---<br>seo:<br>  title: Client best practices<br>toc:<br>  enable: true<br>  maxDepth: 2<br>disableLastModified: true<br>---<br><br># Level 1 header</pre> | <pre>---<br>seo:<br>  title: Client best practices<br>sidebar:<br>  hide: false<br>markdown:<br>  toc:<br>    hide:true<br>    depth: 2<br>  lastUpdateBlock:<br>    hide: true<br>---<br><br># Level 1 header</pre> |
| Replace Workflows admonitions with <a href="https://redocly.com/docs/realm/get-started/migrate-from-legacy-portal#change-admonition-syntax" target="_blank"> Realm's</a> | <pre>:::info NOTE<br>Some text<br>:::</pre> | <pre>{% admonition type="info" name="NOTE" %}<br>Some text<br>{% /admonition %}</pre> |
| Use HTML syntax to open external links in a new browser tab | <pre><a href="https://external.io/URI" target="_blank"\> Some text\</a\></pre> | No change |
| Use Markdoc syntax to create an internal link with environment variables | <pre>\[property](/docs/redfishServices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}})</pre> | <pre>{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION) %} property {% /link-internal %} |
| Wrap inline code with only one backtick | <pre>This is the root URI: \`/redfish/v1/\`</pre> | No change |
| Use Markdoc tag to add code block/fence titles  | <pre>\```text GET request<br>GET /redfish/v1/Chassis"<br>\```<br></pre> | <pre>\```text {% title="GET request" %}<br>GET /redfish/v1/Chassis"<br>\```<br></pre> |
| Change code tabbed examples. See doc for <a href="https://redocly.com/docs/realm/get-started/migrate-from-legacy-portal#change-tabbed-code-samples" target="_blank">named tabs</a> | <pre>\```javascript<br>javascript;<br>\```<br><br>\```python<br>python<br>\```<br><br>\```java title<br>example text<br>\```<br><br>\```custom tab name<br>example text<br>\```</pre> | <pre>{% tabs %}<br>\```javascript<br>javascript;<br>\```<br><br>\```python<br>python<br>\```<br><br>\```java title<br>example text<br>\```<br><br>\```custom tab name<br>example text<br>\```<br>{% /tabs %}</pre> |
| Escape underscores when not for italic | <pre>Thermal.v1\\_1\\_0<br>AccountService.v1\\_5\\_0.AccountService</pre> | No change |
