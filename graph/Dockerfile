FROM neo4j:3.3.1

ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.3.0.1/apoc-3.3.0.1-all.jar

RUN mv plugins /plugins \
    && ln -s /plugins

RUN apk add --no-cache --quiet \
    bash \
    curl && \
    rm -rf /var/cache/apk/*

RUN cd /var/lib/neo4j/plugins \
        && curl --fail --show-error --location --output apoc-all.jar $APOC_URI \
        && mv apoc-all.jar /plugins
