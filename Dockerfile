FROM ubuntu

WORKDIR /tmp

RUN apt-get update && apt-get install -y wget \
    # Dependências do Google Chrome
    ca-certificates ca-certificates fonts-liberation libappindicator3-1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 \
    libcairo2 libcups2 libdbus-1-3 libexpat1 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 \
    libpangocairo-1.0-0 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 \
    libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils libu2f-udev && \
    # Download e instalação do Google Chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb && \
    apt-get -fy install && rm google-chrome-stable_current_amd64.deb

ENTRYPOINT ["/usr/bin/google-chrome", "--user-data-dir=/data", "--no-sandbox", "-test-type"]
