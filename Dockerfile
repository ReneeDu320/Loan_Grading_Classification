FROM rocker/verse
MAINTAINER Shuang Du <karends@email.unc.edu>
RUN apt update && apt-get -y update && apt-get install -y  libudunits2-dev libgdal-dev libgeos-dev libproj-dev
RUN R -e "install.packages('tinytex'); tinytex::install_tinytex()"
RUN R -e "install.packages(\"ggplot2\")"
RUN R -e "install.packages(\"dplyr\")"
RUN R -e "install.packages(\"Amelia\")"
RUN R -e "install.packages(\"dummies\")"
RUN R -e "install.packages(\"nnet\")"
RUN R -e "install.packages(\"nnet\")"
RUN R -e "install.packages(\"factoextra\")"
RUN wget https://sqlite.org/snapshot/sqlite-snapshot-202110132029.tar.gz
RUN tar xvf sqlite-snapshot-202110132029.tar.gz
WORKDIR sqlite-snapshot-202110132029
RUN ./configure && make && make install
WORKDIR /
RUN R -e "install.packages(\"reticulate\")"
RUN apt update && apt-get install -y python3-pip
RUN pip3 install pandas numpy sklearn
RUN R -e "install.packages(\"Metrics\")"
RUN R -e "install.packages(\"knitr\")"