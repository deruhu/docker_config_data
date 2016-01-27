# Data container for ownCloud, taken/adopted from http://www.herr-norbert.de/2014/10/04/docker-owncloud/

FROM ubuntu
MAINTAINER sebastian.noack@fh-kiel.de

RUN mkdir -p /owncloud
RUN chmod -R 0777 /owncloud
RUN chown -R www-data:www-data /owncloud
VOLUME ["/owncloud"]

RUN mkdir -p /var/www/owncloud/apps_persistent
RUN chmod -R 0777 /var/www/owncloud/apps_persistent
RUN chown -R www-data:www-data /var/www/owncloud/apps_persistent
VOLUME ["/var/www/owncloud/apps_persistent"]

CMD echo "ownCloud data container (providing /owncloud , /var/www/owncloud/apps_persistent)"
