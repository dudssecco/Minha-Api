# Use uma imagem oficial do Node.js
FROM node:14

# Crie o diretório de trabalho
WORKDIR /usr/src/app

# Copie o arquivo package.json e instale as dependências
COPY package*.json ./
RUN npm install

# Copie o restante do código
COPY . .

# Exponha a porta 3000
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["node", "server.js"]
