# aqui você informa qual imagem quer usar.
FROM node:latest

# aqui voce cria a pasta aonde vai ficar sua aplicação.
WORKDIR /app

#aqui você copia a pasta app para a raiz do docker.
COPY . /app

# aqui copiamos o package.json que contem as dependencias do projeto.
COPY package.json .

#instalando as dependencias do projeto
RUN npm install 

#apontando a porta da aplicação dentro do docker
EXPOSE 3000

# abrindo terminal dentro da imagem do docker e rodando a aplicação
CMD ["node", "server.js"]