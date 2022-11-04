./remove_table_models.sh
./create_table_models.sh
dbt -r timing.txt run --models pm
 