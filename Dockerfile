FROM electronuserland/builder
ENV NODE_ENV=production
WORKDIR /app

COPY ["package.json", "yarn.lock",  "./"]

COPY . .

CMD './node_modules/.bin/electron-builder'