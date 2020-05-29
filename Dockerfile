FROM node:alpine
RUN mkdir /app

COPY . /app

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

RUN yarn

CMD ["npm", "start"]