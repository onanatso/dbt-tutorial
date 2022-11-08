#!/bin/bash

echo -e '*** remove_pm_table_models: STARTING\n'

MODELS_PM_FOLDER=${PWD}/models/pm

rm $MODELS_PM_FOLDER/*

echo -e '*** remove_pm_table_models: DONE\n'
