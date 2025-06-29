---
excludeFromSearch: true
---

# Documents folder

The `docs` folder contains an `index.md` file describing the `Home` page of the Portal (Splash HPE banner and `Start Here` button). Subfolders contain an `index.md` files describing each section of the Portal as well as the related markdown files:

* The [concepts](./concepts) directory contains generic Redfish concepts like authentication, Redfish conformance, navigating the data model...
* The [examples](./examples) directory contains sets of example use cases like Bios, ISCSI or boot examples.
* The [ilos](./ilos) directory contains one subfolder per iLO generation starting at iLO 6.
* [\_ilorest-userguide](./\_ilorest-userguide) is a place holder for the iLOrest Redfish client. Remove the `_` leading char before moving files in this folder.
* The [\_scripts](./_scripts) folder contains scripts to port autogenerated files from the Slate MD to Redocly MD. Launch the [wrapper](./\_scripts/\_script_wrapper.sh) for each new version of those files, and before rendering the portal.

## Scripts for autogenerated files

As mentioned in the main [README.md](../README.md) file, and until the automatic `tools/make.ps1` and associated Python scripts are able to generate Redocly markdown files (`resmap.md`, `resourcedefns.md`, `msgregs.md` and `events.md`), it is necessary to use the scripts in the `docs/_scripts` folder before rendering newly imported versions of these files.

### Scripts description

Refer to the [README.md](_scripts/README.md) file for a light description of the scripts.

### Methodology to import autogenerated files

Once the autogenerated files for iLO 6 version `X.YZ` have been generated by the `tools/make.ps1` script and, optionally reviewed and fixed, copy them as the following:

| original file name | target file location |
| --- | --- |
| `_ilo6_resourcedefns.md` | .../_ilo6_XYZ/_raw_ilo6_resourcedefnsXYZ.md-bck |
| `_ilo6_resmap.md` | .../ilo6/ilo6_XYZ/_raw_ilo6_resmapXYZ.md-bck |
| `_ilo6_msgregs.md` | .../ilo6/ilo6_XYZ/_raw_ilo6_msgregs.md-bck |
| `_tbd_events.md` | .../ilo6/ilo6_XYZ/_raw_ilo6_eventsXYZ.md-bck |

Then, launch the `_script_wrapper.sh` script, that will last between and 15 and 20 minutes on a laptop.

## iLOrest user guide

This section is related to the HPE iLOrest user guide.

## HPE Python Redfish library

The external <a href="https://github.com/HewlettPackard/python-ilorest-library/tree/master/docs" target="_blank">HPE Python Redfish library</a> documentation is created with the Python Sphinx extension. This extension can generate a Markdown output with the <a href="https://stackoverflow.com/questions/13396856/markdown-output-for-sphinx-based-documentation" target="_blank">Sphinx markdown builder</a>. Perform the following to install it properly:

```shell
# load suitable HPE Python Venv if needed:
source ~/PythonHpeVenv/bin/activate

cd suitable/dir
git clone <python-ilorest-library>
cd python-ilorest-lirary/docs

pip install Sphinx
pip install sphinxcontrib sphinxcontrib.restbuilder sphinx-markdown-builder

# edit conf.py and modify:
extensions = ['sphinx.ext.autodoc', 'sphinxcontrib.restbuilder', 'sphinx_markdown_builder']
language = 'en'

# Build all markdown files
sphinx-build -b markdown ./ .build/md

# Only the reference.md is interesting for us:
cp .build/md/reference.md /Redocly/dir/docs/python-redfish-library/x.y/pythonTBD

cd TBD
Prepend seo 
fix typos
```
