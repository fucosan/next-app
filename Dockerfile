FROM node:18
# use node 16 image

WORKDIR /usr/src/app # set the working directory

COPY package.json .
# copy package json to the directory
RUN npm install
# install the dependencies
COPY . .
# copy the files

EXPOSE 3000
# open up port 3000

CMD ["npm","run","start"] # cmd command
