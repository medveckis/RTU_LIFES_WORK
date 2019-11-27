FROM node:10

WORKDIR ./RTU_LIFES_WORK
COPY . .
COPY package*.json ./

RUN npm install
EXPOSE 8000/tcp
HEALTHCHECK --interval=30s --timeout=3s \
CMD curl -f http://localhost/ || exit 1

CMD [ "node", "index.js" ]