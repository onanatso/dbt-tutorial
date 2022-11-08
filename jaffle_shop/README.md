Welcome to the DBT project!  This project is to create the single-tenant views from the multi-tenant schemas.

## Usage

In development you need to set these environment variables:
* export MT_DATABASE=[multitenant_database_name]
* export MT_TENANT=[target_tenant_name]

### Running the PM script

1. Run this script in a terminal:
```
> ./scripts/pm/run.sh
```

This script does 3 things:
a. Cleans up the `./models/pm` folder
b. Creates the model definitions in `./models/pm`
c. Performs the `dbt run --models pm` to generate the PM views in Snowflake


### Clean Up

1. Run this script in a terminal:
```
> ./scripts/pm/generate_drop_views_script.sh
```

2. Take the output from the script and run it in Snowflake








