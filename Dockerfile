FROM starefossen/ruby-node:2-8

LABEL description="Docker container for building static sites with slack notifiction"
LABEL maintainer="Tomoya Hirano <tomoya@nicecabbage.com>"

ENV HUGO_VERSION=0.33
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp
RUN mkdir -p /usr/local/sbin \
  && mv /tmp/hugo /usr/local/sbin/hugo \
  && rm -f /tmp/hugo /tmp/LICENCE.md /README.md
