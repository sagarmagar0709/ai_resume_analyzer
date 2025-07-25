# Step 1: Install dependencies
FROM node:20-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
 
# Step 2: Build the app
FROM node:20-alpine AS builder
WORKDIR /app
COPY . .
COPY --from=deps /app/node_modules ./node_modules
RUN npm run build
 
# Step 3: Serve with http-server
FROM node:20-alpine AS runner
WORKDIR /app
RUN npm install -g http-server
COPY --from=builder /app/build ./build
 
EXPOSE 8080
CMD ["http-server", "build", "-p", "8080"]
 
