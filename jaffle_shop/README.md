Welcome to the DBT project!  This project is to create the single-tenant views from the multi-tenant schemas.

## Usage

### Running the PM script

```
> ./scripts/pm/run.sh
```

This script does 3 things:
1. Cleans up the `./models/pm` folder
2. Creates the model definitions in `./models/pm`
3. Performs the `dbt run --models pm` to actually generage all the PM view models







