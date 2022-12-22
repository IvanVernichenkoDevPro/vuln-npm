FROM node:16

ARG MY_SECERT_ARG_1
ARG MY_SECRET_ARG_2

ENV SECERT_ARG_1 MY_SECERT_ARG_1
ENV SECERT_ARG_2 MY_SECERT_ARG_2
 
WORKDIR /app

COPY server.js ./
COPY package*.json ./

RUN npm install --omit=dev && \
	groupadd -g 10001 nodejs && \
	useradd -u 10000 -g nodejs nodejs && \
	chown -R nodejs:nodejs /app

USER nodejs:nodejs

EXPOSE 5555

CMD ["node", "server.js"]
