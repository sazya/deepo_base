FROM ufoym/deepo:all-py36-jupyter

# change apt repository to iij
#RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y apt-transport-https

# install rstudio server
RUN echo "deb https://cran.ism.ac.jp/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list
RUN gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
RUN gpg -a --export E084DAB9 | apt-key add -

RUN apt-get update
RUN apt-get install -y r-base
RUN pip install rpy2

EXPOSE 8888