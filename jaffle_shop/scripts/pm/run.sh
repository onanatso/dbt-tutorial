./remove_pm_table_models.sh
./create_pm_table_models.sh
dbt -r timing.txt run --models pm
 