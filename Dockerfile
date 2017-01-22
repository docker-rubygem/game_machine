FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.6

RUN gem install game_machine --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bundle_run.sh"]
CMD ["--help"]
