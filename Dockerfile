FROM node:18-alpine 
WORKDIR /app 
ADD . .
RUN yarn install --production && yarn cache clean
ENTRYPOINT ["node"]
CMD ["src/index.js"]
EXPOSE 3000