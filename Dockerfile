FROM node:16.19.1-bullseye-slim
LABEL author "Wes Lambert, wlambertts@gmail.com"
LABEL description="Dockerised version of Cyberchef server (https://github.com/gchq/CyberChef-server)"
LABEL copyright "Crown Copyright 2020"
LABEL license "Apache-2.0"
COPY . /CyberChef-server
RUN npm cache clean --force && \
         npm install /CyberChef-server
ENTRYPOINT ["npm", "--prefix", "/CyberChef-server", "run", "prod"]
