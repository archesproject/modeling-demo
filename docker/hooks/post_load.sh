#!/bin/bash
cd ${WEB_ROOT} &&git clone https://github.com/archesproject/Ogee.git
rm -rf ${WEB_ROOT}/Ogee/business_data/*
cd ${APP_ROOT} && ${WEB_ROOT}/ENV/bin/python manage.py packages -o load_package -s ../Ogee -y
${WEB_ROOT}/ENV/bin/python manage.py controlled_lists -o migrate_collections_to_controlled_lists -co ''