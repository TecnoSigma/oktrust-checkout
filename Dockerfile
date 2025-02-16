FROM ruby:3.2.2

# Install Debian
RUN apt install curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs && apt-get install -y build-essential && apt-get install -y libpq-dev
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN mkdir /checkout
WORKDIR /checkout
COPY Gemfile /checkout/Gemfile
COPY Gemfile.lock /checkout/Gemfile.lock
RUN bundle install
COPY . /checkout

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3009

# Start the main process.
CMD bundle exec rails s -b '0.0.0.0'
