#!/bin/bash

# delay sparqlify start up so that all other services are ready
sleep $SPARQLIFY_DELAY

# create triple store dump
sparqlify -D -m /data/mapping.sml -j jdbc:postgresql://database:5432/postgres -U postgres > dump.rdf

# run sparql endoint server
# sparqlify -m /data/mapping.sml -j jdbc:postgresql://database:5432/postgres -U postgres
