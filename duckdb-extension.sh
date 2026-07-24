#!/bin/sh
Rscript -e 'library(duckdb);duckdb_extension_storage(location="shared"); duckdb_secret_storage(location= "shared")'
