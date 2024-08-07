FROM clojure:tools-deps-1.11.1.1413

COPY . /driver

RUN apt-get update && apt-get install -y \
curl

ARG METABASE_VERSION="v0.50.13"

RUN curl -Lo - https://github.com/metabase/metabase/archive/refs/tags/${METABASE_VERSION}.tar.gz | tar -xz && mv metabase-* /metabase

WORKDIR /driver