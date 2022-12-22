FROM node:16

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
