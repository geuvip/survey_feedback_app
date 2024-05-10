# Base image
FROM ruby:3.1.2

# Install PostgreSQL
RUN apt-get update && apt-get install -y postgresql postgresql-contrib

# Set the working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the application code
COPY . .

# Expose port 3000
EXPOSE 3000



