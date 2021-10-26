from node:14

COPY package*.json ./

RUN npm ci

COPY . .

CMD [ "npm", "start" ]

