behat-drupal
============

An example setup for using Behat for BDD against Drupal 7.

For detailed information, check out the slides at https://slid.es/matason/nwdug-behat-drupal-june-2013

Assumes Mac OSX or Linux operating system.

# Prerequistes #
Selenium Server - http://docs.seleniumhq.org/download/
Drupal 7 - https://drupal.org/project/drupal

# Installation #
Clone this repository and run the following commands to install and run Composer:

$ curl -sS https://getcomposer.org/installer | php
$ php composer.phar install

Configure base_url in behat.yml to point to your Drupal 7 site.

Start Selenium:
$ java -jar selenium-server-standalone-<version>.jar

# Running Behat #
$ ./bin/behat

# Show available step definitions #
$ ./bin/behat -dl