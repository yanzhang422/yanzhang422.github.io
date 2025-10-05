# Use official Jekyll image
# FROM jekyll/jekyll:4.2.2
# bundler 2.7.2 need ruby >3.2.2
FROM ruby:3.3-alpine


# Set working directory
WORKDIR /srv/jekyll


# Install dependencies
RUN apk add --no-cache \
    build-base \
    libffi-dev

# Install the exact Bundler version that matches Gemfile.lock
RUN gem install bundler:2.7.2 jekyll

# Copy Gemfile and Gemfile.lock FIRST (before bundle install)
#COPY Gemfile Gemfile.lock ./

# Install gems specified in Gemfile
#RUN bundle install

# Copy project files
#COPY . .

# Install Jekyll and dependencies
# RUN bundle install 2>/dev/null || jekyll build

# Expose port 4000 for Jekyll server
EXPOSE 4000 35729

# Delete Gemfile.lock and rebuild from scratch
CMD rm -f Gemfile.lock && \
    bundle install && \
    bundle exec jekyll serve --host 0.0.0.0 --livereload --force_polling