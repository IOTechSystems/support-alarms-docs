#!/bin/sh

# Generate Markdown file for GraphQL Scehma

# removed unsupported directive "@specifiedBy"
cat /graphql/router-schema.graphqls /graphql/alarms-schema.graphqls | sed 's/scalar JSON @specifiedBy(url: ".*")/scalar JSON/' > /graphql/support-alarms-schema.graphql

/usr/local/bin/graphql-markdown /graphql/support-alarms-schema.graphql > /graphql/support-alarms-schema.md
rm /graphql/support-alarms-schema.graphql

chown -R $UID:$GID /graphql