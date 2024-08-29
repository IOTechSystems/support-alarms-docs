#!/bin/sh

# Generate Markdown file for GraphQL Scehma

# removed unsupported directive "@specifiedBy"
cat /graphql/router-schema.graphqls | sed 's/scalar JSON @specifiedBy(url: ".*")/scalar JSON/' > /graphql/router-schema.graphql

/usr/local/bin/graphql-markdown /graphql/router-schema.graphql > /graphql/router-schema.md
rm /graphql/router-schema.graphql

chown -R $UID:$GID /graphql