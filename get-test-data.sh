#!/bin/bash

mkdir $HOME/test-data;

cd $HOME/test-data;

echo "Downloading IMDB Dataset...";
wget https://datasets.imdbws.com/title.basics.tsv.gz -O imdb.title.tsv.gz -nc;
wget https://datasets.imdbws.com/title.ratings.tsv.gz -O imdb.ratings.tsv.gz -nc;
wget https://datasets.imdbws.com/title.principals.tsv.gz -O imdb.principals.tsv.gz -nc;

if [ -f imdb.title.tsv.gz ]; then
    echo "Unpacking .gz files...";
    gzip -d *.tsv.gz;
fi

echo "Test data is ready!"
