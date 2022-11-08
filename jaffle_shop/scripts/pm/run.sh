#!/bin/bash

echo -e '*** run: STARTING\n'

./scripts/pm/remove_pm_table_models.sh
./scripts/pm/create_pm_table_models.sh

dbt run --threads 50 --models pm

echo -e '*** run: DONE\n'
 