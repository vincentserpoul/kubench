######################
# Stage: Builder
FROM ruby:2.7.0-alpine as Builder

RUN apk add --update --no-cache \
    build-base
WORKDIR /app

# Install gems
ADD Gemfile* /app/
RUN bundle config --global frozen 1 \
    && bundle install --without development test -j4 --retry 3 \
    # Remove unneeded files (cached *.gem, *.o, *.c)
    && rm -rf /usr/local/bundle/cache/*.gem \
    && find /usr/local/bundle/gems/ -name "*.c" -delete \
    && find /usr/local/bundle/gems/ -name "*.o" -delete

# Add the Rails app
ADD . /app

###############################
# Stage Final
FROM ruby:2.7.0-alpine

# Add Alpine packages
RUN apk add --update --no-cache 

# Copy app with gems from former build stage
COPY --from=Builder /usr/local/bundle/ /usr/local/bundle/

WORKDIR /app

# Start up
CMD ["bundle", "exec", "puma"]