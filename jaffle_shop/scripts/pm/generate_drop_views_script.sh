#!/bin/bash

echo -e '*** generate_drop_views_script: STARTING\n'

# Compile the utility model that generates the script
dbt compile --m pm-util.drop_views_script

PROJECT_DIR=${PWD##*/}
COMPILED_FOLDER=${PWD}/target/$PROJECT_DIR/models/pm-util

echo -e '*** generate_drop_views_script: Script created in $COMPILED_FOLDER/drop_views_script.sql\n'
echo -e '*** generate_drop_views_script: DONE\n'