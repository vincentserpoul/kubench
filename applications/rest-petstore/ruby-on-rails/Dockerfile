######################
# Stage: Builder
FROM ruby:2.7.0-alpine as Builder

RUN apk add --update --no-cache \
    build-base sqlite sqlite-dev tzdata

WORKDIR /app

# Install gems
COPY Gemfile* /app/

RUN bundle config --global frozen 1 \
    && bundle install --without development test -j4 --retry 3 \
    # Remove unneeded files (cached *.gem, *.o, *.c)
    && rm -rf /usr/local/bundle/cache/*.gem \
    && find /usr/local/bundle/gems/ -name "*.c" -delete \
    && find /usr/local/bundle/gems/ -name "*.o" -delete

# Add the Rails app
COPY . /app

###############################
# Stage Final
FROM ruby:2.7.0-alpine

# Add Alpine packages
RUN apk add --update --no-cache \
    sqlite sqlite-dev tzdata

ENV SECRET_KEY_BASE golangisawesome

# Add user
RUN addgroup -g 1000 -S app \
    && adduser -u 1000 -S app -G app
USER app

# Copy app with gems from former build stage
COPY --from=Builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=Builder --chown=app:app /app /app

WORKDIR /app

# Start up
CMD ["rails", "server", "-e", "production"]