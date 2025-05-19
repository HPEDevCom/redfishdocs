---
excludeFromSearch: true
---

# Slate to Redocly Markdown scripts

This folder contains Bash scripts aiming at moving Slate auto
generated files into Redocly/Realm Markdown format. It contains
also needed modifications to update from Redocly/Workflows
to Redocly/Realm.

These scripts is a quick and dirty fix of what should be
performed in the Python scripts in the
internal <a href="https://github.hpe.com/HPE-iLO-Redfish-API/tools/tree/master/RedfishRefDoc"
target="_blank">GitHub tools repository</a>.

## Slate to Redocly

- _script_wrapper.sh
- _msgregs.sh
- _resmap.sh
- _lintFiles.sh
- _python_library.sh
- _resourcedefns.sh
- _split_resourcedefns.sh
- _msgregs.sh

## Workflows to Realm

- _frontMatterMigration.sh
- _admonitionMigration.sh
- _tabbedExamples.sh
- _internalLinks.sh
