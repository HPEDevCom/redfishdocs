---
seo:
  title: HPE Python Redfish library installation guide
disableLastModified: false
toc:
  enable: true
  maxDepth: 3
---

# Installation Guide

:::info NOTE
The <a href="https://subversion.apache.org/" targert="_blank">HPE Python library</a> supports **Python 2** up to the end of life (EOL) version 2.7.15 and **Python 3** (3.8).
:::

## Pip install

:::warning WARNING
The HPE Python Redfish library cannot coexist with the <a href="https://github.com/DMTF/python-redfish-library" target="_blank">DMTF Redfish Python library</a> in the same Python environment. To uninstall the DMTF Python library, use the following command:

`pip uninstall redfish`
:::

### Standard installation

`pip install python-ilorest-library`

### Installation with SOCKS proxy support

Starting with **version 2.5.0** of the HPE Python Redfish library, you can include the SOCKS proxy add-on.

`pip install python-ilorest-library[socks]`

## Building from Source

### Checkout using SVN (Subversion)

Assuming that <a href="https://subversion.apache.org/" target="_blank">SVN</a> is already installed in your system and is already in the system path, run the following command from the directory where you want to copy the sources.

`svn checkout https://github.hpe.com/intelligent-provisioning/python-redfish-library.git`

### Clone using GIT

Run the following command from the directory where you want to copy the source.

`git clone https://github.hpe.com/intelligent-provisioning/python-redfish-library.git`

### Building from source

After you have cloned the latest code, run the following commands:

```shell
cd python-ilorest-library
python setup.py sdist --formats=zip (this will produce a .zip file)
cd dist
pip install python-ilorest-library-x.x.x.zip[socks]
```

A successful installation displays that `python-ilorest-library-x.x.x` its dependencies have been successfully installed.

### Building from source with SOCKS proxy support

```shell
cd python-ilorest-library
python setup.py sdist --formats=zip  # this produces a .zip file
cd dist
pip install python-ilorest-library-x.x.x.zip[socks]
```
