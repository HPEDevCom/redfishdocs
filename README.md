---
exclude: true
---

# hpe-ilo-redocly

This <a href="https://github.com/HewlettPackard/hpe-ilo-redocly" target="_blank">hpe-ilo-redocly</a> private repository contains the sources of the [HPE Redfish documentation portal](https://redfish.redoc.ly/). It is linked to the <a href="https://app.redoc.ly/login" target="_blank">Redocly workflows application</a>. The Redocly application nicely renders `.md` and OpenAPI files contained in this repo using specific configuration files. Read the <a href="https://redocly.com/docs/" target="_blank">Redocly documentation</a> for more information.

The structure of this repository is designed to reach the following goals:

* Ability to render multiple Redfish APIs (i.e. iLO) and tools (i.e. iLOrest) documentation.
* Ability to render multiple versions of a specific API (i.e. iLO 6 v1.10, iLO6 v2.0, iLOrest 4.0.0...)

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
  * [Guidelines to convert from Slate](#guidelines-to-convert-from-slate)

## Repository structure

A typical Redocly portal structure is explained in the <a href="https://redocly.com/docs/developer-portal/guides/organizing-files/" target="_blank"> Redocly documentation</a>. Our Redfish portal structure is slightly different to cope with Grommet. Then, most of the documents are posted under the `docs` directory while Redocly's example post them under the `developer-portal` folder.

| File or folder name | Description | Comments |
| ---- | ---- | ---- |
|`_components`, `_override`, `components`, `scripts`, `static` | Grommet and Redocly folders | **NOTE** A `docs/_script` folder exists and contains scripts to be used during the rendering process. |
| `theme.ts`, `grommet-theme.json` | Look and feel directives | |
| `images` | Folder containing images | |
| `siteConfig.yaml` | Main Portal configuration file | Contains global directives |
| `packages.json` | Everything needed to build the portal | Among other things, it contains the local development web portal TCP port (3001), the scripts invocation to build the portal and the Redocly portal version.
| `index.mdx` | Portal entry page design | Mixture of Markdown, JavaScript and React directives |
| `openapi` | Folder containing OpenAPI/swagger documents | |
| `sidebars.yaml` | Left pane hierarchical menus | Define sections pointers to `.md` and `.yaml` documents |
| `docs` | Document folder sources and rendering scripts. | The structure of the this folder tries to reflect the `sidebars.yaml` structure. |

**NOTE**: `.yaml` files MUST be in the UNIX format
(Unicode text, UTF-8 text with LF terminators). Use the `dos2unix`
tool to force to the UNIX file format. Windows/DOS format
(CRLF line terminators) will result with build errors.

**NOTE**: Markdown files not prefixed with an `_` char are processed by the Redocly engine even if not mentioned in `sidebars.yaml`. Markdown files prefixed with an `_` char are not processed by the Redocly engine. To completely avoid any processing on a specific  `.md` fie, you have to comment out its reference in `sidebars.yaml` AND add the `-` prefix to the file name.

Some files cannot be prefixed with the `_` char, like `README.md` files. Just prepend a `exclude: true` front matter surrounded with `---` lines.

Unlike Slate which concatenates all the MD files listed in the `source/index.html.md` file before the rendering process, Redocly renders individual MD files sequentially as they appear in the `sidebars.yaml` file. This is an important difference because hrefs are not just fragments but can be relative URIs.

As an example, in the `resmap.md` file of Slate, the markdown URI corresponding to the collection of chassis is the fragment: `[Chassis](#chassis-v1_10_2-chassis)`.

In Redocly, the same URI is coded with a relative URI and fragment: `[Chassis](../ilo6_chassis_resourcedefns/#chassis)`.

**NOTE**: The above fragment does not include `-v1_10_2-chassis` suffix. The reason is because this suffix would appear in the Table of Content (TOC) on the right side of the main display pane. Since the TOC is very narrow, the rendering with the suffix takes more than a line and is, somehow not pretty.

The removal of the suffix as well as the insertion of the correct URI/fragment is performed in the `docs/_scripts` folder.

TBD: need an example in iLOrest userguide /TBD

## Redocly markdown

Redocly `.md` files follow the <a href="https://spec.commonmark.org/current/" target="_blank">CommonMark</a> markdown specs which are slightly different from the <a href="https://github.com/slatedocs/slate" target="_blank">Slate</a> doc generator.

### Generic rendering

An important difference between Redocly and Slate markdown syntax, is the inline code text. Slate supports surrounding three backticks (```code text```) while Redocly only supports single backticks (`code text`).

Concerning italics, Redocly markdown syntax supports both surrounding `*` or `_` chars. The later can be a problem for data type strings. As an example, in both iLO and iLOrest docs, `#Storage.v1_10_1.Storage` is incorrectly rendered #Storage.v1*10*1.Storage. For a correct rendering, the `_` chars must be escaped like this: `#Storage.v1\_10\_1.Storage`.

In addition, error return codes of iLOrest are wrongly rendered (i.e. RIS*ILO*CHIF*ACCESS*DENIED_ERROR instead of RIS_ILO_CHIF_ACCESS_DENIED_ERROR).

The `siteConfig.yaml` and MD files support an `seo` [section](https://redocly.com/docs/developer-portal/configuration/siteconfig/seo/) containing directives for enabling/disabling features like the table of content (toc). This section is called "front matter" in MD files. The `siteConfig.yaml` file contains the default values that can be overwritten in front matter sections.

### Admonitions

Markdown files support <a href="https://redocly.com/docs/developer-portal/guides/markdown/#admonitions" target="_blank"> admonitions</a>. This feature provides a way to distinguish info, warnings, danger, attention and success text. The syntax is:

```text
:::keyword Optional text
Pick keyword from the list: info, success, warning, danger, attention
:::
```

### External links

To ease navigation, external links should use the HTML anchor `href` syntax in order to open a new tab with the external link. The syntax is: `<a href="https://some.external.link" target="_blank">String</a>`.

The port of manually generated from Slate to Redocly is performed manually. The [README.md](./docs/README.md) file in the `docs` folder contains a table with the status of this port for each file of the project.

The port of automatically generated files (`resmap.md`, `resourcedefns.md` and `msgregs.md`) is performed by scripts in the `docs/_scripts` folder. Those scripts have to be launched manually. See the [README.md](./docs/README.md) file for more information.

### Global environment variables

Redocly has the possibility to handle <a href="https://redocly.com/docs/developer-portal/guides/environment-files/#.env.development" target="_blank">global environment variables</a>. Those variable are expended during both the local or the workflow rendering processes. They are defined in hidden files in the root of this repo with a naming scheme similar to `.env.filename`. To authorize their substitution before the Redocly rendering process occurs, you must list them in the `envVariablesAllowedClientSide` section of the `siteConfig.yaml` file as well as in the <a href="https://app.redocly.com/org/hpe/portal/redfish/settings/env-variables" target="_blank">Settings</a> of the portal.

To ensure substitution during the local rendering process (yarn start on laptop), you have to declare those variables as part of your current shell (see example below).

Then, you can reference those variables in the `.md` files with the following syntax: `{{process.env.VARIABLENAME}}`.

As an example, the content of `.env.firmwareversions` is:

```shell
# cat .env.firmwareversions
LATEST_FW_VERSION="120"
LATEST_iLO6_FW_VERSION="120"
LATEST_iLO5_FW_VERSION="278"
LATEST_iLO_GEN_VERSION="ilo6"
```

The `siteConfig.yaml` file contains the following section to enable the substitution of the `LATEST_FW_VERSION` in the `.md` files.

```shell
envVariablesAllowedClientSide:
  - LATEST_FW_VERSION
  - LATEST_ILO_GEN_VERSION
  - LATEST_ILO6_FW_VERSION
  - LATEST_ILO5_FW_VERSION

```

**Local rendering**: In addition to the above, and to benefit from this feature during a local rendering process, you must **declare corresponding environment variable** in your shell/bash session:

```bash 
cat >> ~/.bashrc << __EOF__
export LATEST_ILO_GEN_VERSION="ilo6"
export LATEST_FW_VERSION="120"      # This is the latest fw version of the latest iLO Gen version
export LATEST_ILO6_FW_VERSION="120"
export LATEST_ILO5_FW_VERSION="278"
__EOF__

source ~/.bashrc
```

With the above definitions, a reference to:

`/docs/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilobackuprestoreservice`

 will be expanded to:

`/docs/ilos/ilo6/ilo6_120/ilo6_hpe_resourcedefns120/#hpeilobackuprestoreservice`

The use of those firmware variables ensures that hrefs links and fragments present the markdown files always point to the most appropriate firmware revision section.

## File folder naming scheme

For a smooth and efficient reviewing and publishing process, it is important to define and respect a clear naming scheme for folders, `.yaml` and `.md` file names tight to a specific iLO or iLOrest version.

The following table defines the rules for an iLO of generation `G` and firmware version `x.yz`, with associated examples. There is as well similar lines for iLOrest.

> NOTE: To avoid file/folder case problems in such CI/CD infra, mixing Operating Systems (Linux/Windows/PowerShell/Cygwin) and applications as Service(GitHub/Redocly), it is wise to follow a strict strategy concerning the case of alphabetic chars: LOWER case ONLY.

> NOTE: Redocly naming scheme for file names and properties is a bit different, as it allows an upper case letter as a separator for each sub words except the first one. Examples: `siteConfig.yaml` or `disableLastModified`.

| File or folder description | Location | Example | Comment |
| ---- | ---- | ---- | ---- |
|OpenAPI/Swagger files| `openapi/iloG_xyz/iloG_xyz-openapi.yaml` | `openapi/ilo6_110/ilo6_110-openapi.yaml` | The reason to have `_` and `-` separators is to avoid rendering the version in italic. |
| iLO Manually generated MD files | `docs/ilos/iloG/iloG_lowercasetring.md` | `docs/ilos/ilo6/ilo6_accountservice.md` | Chars must be lowercase |
| iLO Automatically generated MD files | `docs/ilos/iloG/iloG_xyz/iloG_lowercasestringxyz.md` | `docs/ilos/ilo6/ilo6_110/ilo6_resmap110.md` | Chars must be lower case |
| iLOrest files | `ilorest/ilorestXYZ/ilorestXYZ_lowercasestring` | `ilorest/ilorestXYZ/ilorest400_bioscommands.md` | |

## Redocly rendering processes

There are two possibilities to trigger the rendering of a Redocly portal:

1. A local rendering manual process happening in your laptop. This process renders the portal in a local web server accessible via a TCP port defined in the `package.json` file (`scripts.start = redocly-portal develop -p 3001` property).
2. The automatic Redocly workflow happening in the GitHub repository of the portal, upon Pull Request creations and commits. See below for more detail.

**NOTE**: Until the automatic generation of `resmap.md`, `resourcedefns.md` and `msgregs.md` with Redocly MD,  those files MUST be processed by the `docs/_scripts` before any rendering process.

### Local rendering

The local rendering process is faster than the automatic process to see the result of modifications. It is triggered by the start of Nodejs/yarn scripts in the laptop. However, this process is not bullet proofed and sometimes, errors happen, requiring a complete restart of the process. See [Appendix](#appendix) for installation and start tips. The size of the files to be rendered may break the process if too heavy. A `resourcedefns.md` with 40000+ lines may fail while the same file with 15000 lines succeeds.

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

Redocly embeds a link checker that can be enabled/disabled in the `siteConfig.yaml` file, in the `linkChecker` <a href="https://redocly.com/docs/developer-portal/configuration/siteconfig/link-checker/#usage" target="_blank">directive</a>. Note that this link checker adds time to the rendering process. Moreover, if the `severity` is set to `error`, the entire build is considered unsuccessful and cannot be not deployed in case of error. A `severity` of `warning` does not prevent the publication.

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

The local rendering process requires `nodejs`, and `yarn`. Here are tips to setup this environment on a Windows/Cygwin laptop.

* The <a href="https://nodejs.org/en/download/" target="_blank">nodejs</a> for  Windows **LTS** version can be installed safely.

>**NOTE:** You may need to create a `C:\Windows\Installer` folder to avoid an error with code `2755`.

* Install `yarn` from `$HOME` in a Cygwin/MinTTY terminal:

  `cd ~`
  `npm install --location=global yarn` # `nm` comes with `nodejs`.

* Cleanup and install required modules in your local repo clone:
  
  `cd CloneOfPrivate-hpe-ilo-redocly`

  `rm -r node_modules/* .yarn .yarnrc.yml yarn.lock` # to make sure the place is clean.

  `npm install`

* Start the local rendering process:
  
  `yarn start`

* If no errors, connect your favorite browser to the non-secure HTTP URL: `http://localhost:3001`

### Caveats

In a perfect world, modifications to markdown files triggers an automatic local re-rendering of the modified file. However, often it generates errors related to the modified files and a restart of the web server is necessary:

`Ctrl-C` # to kill the local web server

`yarn start`

In addition, you may encounter an `RangeError: Maximum call stack size exceeded` error. This may be related to a too big `resourcedefns.md` file. A workaround is to truncate this file with 16000 lines during the development phase and push the original file upstream when done. Not ideal !

### Guidelines to convert from Slate

| Description | Slate | Redocly |
| ---- | ---- | ---- |
| Insert Redocly front line matter section at the very beginning | <pre># Level 1 header</pre> | <pre>---<br>seo:<br>  title: Client best practices<br>toc:<br>  enable: true<br>  maxDepth: 2<br>disableLastModified: true<br>---<br><br># Level 1 header</pre> |
| Replace Slate and HTML admonitions with <a href="https://redocly.com/docs/developer-portal/guides/markdown/#admonitions" target="_blank"> Redocly's</a>| <pre>> \*\*NOTES** Some text<br></pre><pre>\<aside class=\"warning"\><br>Some text<br>\</aside\></pre> | <pre>:::warning Warning<br>Some text<br>:::</pre><br><pre>:::info Tip<br>Some text<br>:::</pre> |
| Use HTML syntax to open external links in a new browser tab | <pre>\[Some text](https://external.io/URI)</pre> | <pre><a href="https://external.io/URI" target="_blank"\> Some text\</a\></pre> |
| Wrap inline code with only one backtick | <pre>This is the root URI: \```/redfish/v1/\```</pre> | <pre>This is the root URI: \`/redfish/v1/\`</pre> |
| Wrap code blocks with three backticks and supply a language and a title | <pre>> GET /redfish/v1/Chassis/<br><br>\```<br>{<br>    "@odata.id": "/redfish/v1/Chassis/"<br>}<br>\```</pre> | <pre>\```text GET request<br>GET /redfish/v1/Chassis"<br>\```<br><br>\```json Body response<br>{<br>    "@odata.id": "/redfish/v1/Chassis/" <br>}<br>\```</pre> |
| Escape underscores when not for italic | <pre>Thermal.v1_1_0<br>AccountService.v1_5_0.AccountService</pre> | <pre>Thermal.v1\\_1\\_0<br>AccountService.v1\\_5\\_0.AccountService</pre> |
| Remove inline code directives in headers | <pre>### SecureBoot (\`/redfish/v1/systems/{item}/SecureBoot\`)</pre> | <pre>### SecureBoot (/redfish/v1/systems/{item}/SecureBoot)</pre> |
| Replace text mentioning the Slate "right pane" with "below" | <pre>See the examples in the right pane</pre> | <pre>See example below</pre> |
