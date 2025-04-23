#!/usr/bin/bash
#
# This script update Redocly/Workflows admonitions
# into Reunite/Realm admonitions.
#
# It is inspired from the migrateMarkdown function 
# in https://github.com/redocly-demo/migrate-portal/blob/main/bin.ts#L795
# from Redocly.
#
# Version 0.1

 

sed -E -i \
  's/:::([^ ]+) (.+)/{% admonition type="\1" name="\2" %}/g ; s?::: *$?{% /admonition %}?g' $1


