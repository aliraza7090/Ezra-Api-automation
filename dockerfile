#FROM public.ecr.aws/i3e9y2n8/node:latest
FROM node:14
WORKDIR /app
RUN npm install -g newman
COPY Ezra-Homes.postman_collection.json .
COPY Ezra.postman_environment.json .

# Run the Postman collection
CMD ["newman", "run", "Ezra-Homes.postman_collection.json", "-e", "Ezra.postman_environment.json"]
