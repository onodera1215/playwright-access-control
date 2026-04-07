FROM mcr.microsoft.com/playwright:v1.58.2-noble

WORKDIR /workspace

COPY package.json package-lock.json ./
RUN npm ci

RUN chown -R ubuntu:ubuntu /workspace

USER ubuntu

CMD ["npm", "run", "mcp"]