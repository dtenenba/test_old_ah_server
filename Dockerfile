FROM r-base:3.2.3

RUN apt-get update

RUN apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev

RUN R -e "source('http://bioconductor.org/biocLite.R');biocLite('AnnotationHub')"

echo "options(AnnotationHub.debug=TRUE)" > $HOME/.Rprofile
