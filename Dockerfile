FROM kalilinux/kali-rolling
RUN apt update 
RUN apt upgrade -y 
RUN apt install git -y 
RUN apt-get install curl -y 
RUN apt install -y ffmpeg opus-tools bpm-tools 
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash -
RUN apt install nodejs -y
RUN git clone https://github.com/mee6support/support-Mee6.git
RUN cd support-Mee6
WORKDIR /support-Mee6
RUN npm install --force
CMD node MeeSeeks™.js