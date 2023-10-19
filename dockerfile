FROM public.ecr.aws/b4k6y9u4/node14:latest
#FROM node:14
WORKDIR /app
RUN npm install -g newman
COPY Ezra-Homes.postman_collection.json .
COPY Ezra.postman_environment.json .

# Run the Postman collection
CMD ["newman", "run", "Ezra-Homes.postman_collection.json", "-e", "Ezra.postman_environment.json"]
