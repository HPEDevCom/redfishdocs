---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: HPE Python Redfish library installation guide
---

# Installation Guide

{% admonition type="info" name="NOTE" %}
The <a href="https://subversion.apache.org/" targert="_blank">HPE Python library</a> supports only **Python 3** (3.8 and above).  
Note that Python 2 is already EOL on Jan 1, 2020 and support is discontinued.
{% /admonition %}

## Pip install

{% admonition type="warning" name="WARNING" %}
The HPE Python Redfish library cannot coexist with the <a href="https://github.com/DMTF/python-redfish-library" target="_blank">DMTF Redfish Python library</a> in the same Python environment. To uninstall the DMTF Python library, use the following command:

`pip uninstall redfish`
{% /admonition %}

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

  {% tabs %}
{% tab label="Example" %}

```shell Example
cd python-ilorest-library
python setup.py sdist --formats=zip (this will produce a .zip file)
cd dist
pip install python-ilorest-library-x.x.x.zip[socks]
```
  
  {% /tab %}
  {% /tabs %}
A successful installation displays that `python-ilorest-library-x.x.x` its dependencies have been successfully installed.

### Building from source with SOCKS proxy support

  {% tabs %}
{% tab label="Example" %}

```shell Example
cd python-ilorest-library
python setup.py sdist --formats=zip  # this produces a .zip file
cd dist
pip install python-ilorest-library-x.x.x.zip[socks]
```
  
  {% /tab %}
  {% /tabs %}
