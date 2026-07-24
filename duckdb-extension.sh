#!/bin/sh

Rscript -e 'duckdb_extension_storage(location="shared"); duckdb_secret_storage(location= "shared")'
