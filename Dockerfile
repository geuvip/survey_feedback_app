# Base image
FROM ruby:3.1.2

# Set working directory
WORKDIR /app

# Install dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application code
COPY . .

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]