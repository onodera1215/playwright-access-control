FROM mcr.microsoft.com/playwright:v1.58.2-noble

WORKDIR /workspace

COPY package.json package-lock.json ./
RUN npm ci --omit=dev \
  && npx playwright install-deps \
  && npx playwright install chrome


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh \
  && chown -R ubuntu:ubuntu /workspace /entrypoint.sh

USER ubuntu

CMD ["/entrypoint.sh"]