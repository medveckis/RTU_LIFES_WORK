FROM node:10

COPY ./server /server

WORKDIR /server

RUN dir /server
RUN npm install
EXPOSE 3000/tcp
HEALTHCHECK --interval=30s --timeout=3s \
CMD curl -f http://localhost/ || exit 1

CMD [ "node", "index.js" ]