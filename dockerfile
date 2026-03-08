# Stage 1 — Build
FROM node:18-alpine AS builder

WORKDIR /app

COPY app/package.json .
RUN npm install --production

COPY app/ .

# Stage 2 — Production
FROM node:18-alpine AS production

WORKDIR /app

COPY --from=builder /app .

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:3000', (r) => process.exit(r.statusCode === 200 ? 0 : 1))"

CMD ["node", "index.js"]