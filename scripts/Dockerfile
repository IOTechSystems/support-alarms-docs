FROM node:14-buster-slim
LABEL maintainer="iotech <support@iotechsys.com>"

RUN apt-get update
RUN apt-get install --yes git

# Install graphql-markdown
RUN npm install -g graphql@15.0.0 # dependency
RUN git clone https://github.com/IOTechSystems/graphql-markdown.git
WORKDIR /graphql-markdown
RUN npm install -g
RUN rm /usr/local/lib/node_modules/graphql-markdown # remove soft-link
RUN cp -r ../graphql-markdown /usr/local/lib/node_modules/graphql-markdown

COPY ./docs/api/graphql /graphql
COPY ./scripts/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]