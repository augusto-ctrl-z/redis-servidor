# imagem oficial do node.js
FROM node:20

#Definir o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# copiar os arquivos de dependências
COPY package*.json ./

# instalar as dependências
RUN npm install

# copiar o restando do código da aplicação
COPY . .

# expor a porta que o express usa
EXPOSE 3000

CMD ["node", "index.js"]