#!/usr/bin/env bash

# This Script is intended to be used in the following situation:
# When you have a PHP-Laravel web application in production server
# and you uploaded it with Git directly from your repository.

echo "****** Initializing Application Updates ******"

# Laravel Command: Puts Laravel application in Maintenance Mode.
echo "****** Maintenance Mode On ******"
php artisan down;

# Git Command: Cleans HEAD from any changes that are not commited.
echo "****** Cleaning HEAD ******"
git reset --hard;

# Git Command: Pulls any recent changes from the "master" branch in your repository.
echo "****** Pulling New Changes ******"
git pull;

# Composer Command: Updates Composer dependencies without Dev dependencies.
echo "****** Updating Composer dependencies ******"
php composer.phar update --no-interaction --prefer-dist --optimize-autoloader --no-dev;

echo "************************************************************"
echo "**********************************************************"
echo "********************************************************"
echo "******************************************************"
echo "****************************************************"
echo "**************************************************"
echo "************************************************"
echo "**********************************************"
echo "********************************************"
echo "******************************************"
echo "****************************************"
echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"

echo " ****** Cleaning Laravel Application Cache ******"

php artisan clear-compiled;

# Clear caches
php artisan cache:clear;

# Clear and cache config
php artisan config:clear
php artisan config:cache

# Clear and cache routes
php artisan route:clear;
php artisan route:cache;

# Clear compiled views
php artisan view:clear;

php composer.phar dumpautoload -o;

echo "****** Setting Script Permissions ******"
chmod 700 update-production-app-script.sh;

echo "****** Maintenance Mode Down ******"
php artisan up;

echo "************************************************************"
echo "**********************************************************"
echo "********************************************************"
echo "******************************************************"
echo "****************************************************"
echo "**************************************************"
echo "************************************************"
echo "**********************************************"
echo "********************************************"
echo "******************************************"
echo "****************************************"
echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"

echo "***********************************"
echo "****** Done! your app is up and running now ******"
