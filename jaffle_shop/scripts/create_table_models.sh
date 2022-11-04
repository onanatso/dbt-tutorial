# This script will generate the dbt model files for every table in the PM schema

# This is a bit of a hack.  We have a mock model called schema_tables just so we can get a list into a file.
# We will only compile this model, never actually run.
# When compiled the list will be generated in ./target/compiled/project/models/util/schema_tables.sql
dbt compile --models util.schema_tables_list

PROJECT_DIR=${PWD##*/}
MODELS_PM_FOLDER=${PWD}/models/pm
SCHEMA_TABLES_FOLDER=${PWD}/target/compiled/$PROJECT_DIR/models/util/
SCHEMA_TABLES_ORIG_FILE=$SCHEMA_TABLES_FOLDER/schema_tables_list.sql
SCHEMA_TABLES_CLEAN_FILE=$SCHEMA_TABLES_FOLDER/clean_schema_tables_list.sql

# Strip blank lines as it's hard to get them out of the DBT Jinja generated files
sed -e '/^$/d' $SCHEMA_TABLES_ORIG_FILE > $SCHEMA_TABLES_CLEAN_FILE

# Create a model file for every tablename found in the list
cat $SCHEMA_TABLES_CLEAN_FILE | tr ' \t' '\n\n' | while read TABLENAME; do
    if test -f "$MODELS_PM_FOLDER/$TABLENAME"; then
       echo "Skipping \"$TABLENAME\", it already exists"
    else
       echo "Creating model $TABLENAME"
       cat > "$MODELS_PM_FOLDER/$TABLENAME.sql" <<EOF
{{ config(materialized='view',secure=true) }}{{ create_pm_view('$TABLENAME') }}
EOF
    fi
done