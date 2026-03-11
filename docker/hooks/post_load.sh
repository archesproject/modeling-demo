#!/bin/bash
cd ${WEB_ROOT} &&git clone https://github.com/archesproject/Ogee.git
rm -rf ${WEB_ROOT}/Ogee/business_data/*
cd ${APP_ROOT} && python3 manage.py packages -o load_package -s ../Ogee -y