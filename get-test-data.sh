#!/bin/bash

mkdir $HOME/test-data;

cd $HOME/test-data;

function download {
    url=$1
    output_file=$2

    if curl --output /dev/null --silent --head --fail "$url"; then
        wget "$url" -O "$output_file" -nc;
        if [ -f "$output_file" ]; then
            echo "Unpacking $output_file file...";
            gzip -d "$output_file";
        fi
    else
        echo "URL: $url does not exist!"
        echo "Skipping..."
    fi
}

echo "Downloading IMDB Dataset...";
download https://datasets.imdbws.com/title.basics.tsv.gz imdb.title.tsv.gz;
download https://datasets.imdbws.com/title.ratings.tsv.gz imdb.ratings.tsv.gz;
download https://datasets.imdbws.com/name.basics.tsv.gz imdb.name.tsv.gz;


echo "Downloading AirBnB Dataset...";

download "http://data.insideairbnb.com/united-kingdom/england/london/2023-09-06/data/listings.csv.gz" "airbnb.london.listings.csv.gz";
download "http://data.insideairbnb.com/united-kingdom/england/london/2023-09-06/data/reviews.csv.gz" "airbnb.london.reviews.csv.gz";
download "http://data.insideairbnb.com/turkey/marmara/istanbul/2023-09-24/data/listings.csv.gz" "airbnb.istanbul.listings.csv.gz";
download "http://data.insideairbnb.com/turkey/marmara/istanbul/2023-09-24/data/reviews.csv.gz" "airbnb.istanbul.reviews.csv.gz";

echo "Test data is ready!";
