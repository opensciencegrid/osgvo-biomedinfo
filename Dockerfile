FROM opensciencegrid/osgvo-el7

RUN yum -y upgrade && \
    yum -y install R-devel

RUN Rscript -e 'source("https://bioconductor.org/biocLite.R")' -e 'biocLite("DECIPHER")'

# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt



