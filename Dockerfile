FROM node:14.16-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
RUN yarn global add gitbook-cli@2.2.0

# Bundle app source
COPY . .

RUN gitbook build .

EXPOSE 4000

CMD ["gitbook", "serve"]
