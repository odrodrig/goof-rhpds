FROM node:14.18.1

RUN mkdir /usr/src/goof && mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update && npm install
EXPOSE 3001
ENTRYPOINT ["npm", "start"]
