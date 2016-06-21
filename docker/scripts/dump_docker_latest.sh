docker exec -it $(docker-compose ps -q mysql) bash -c 'exec mysqldump --force --opt --comments=false --quote-names --single_transaction -uroot --password=$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE' > dump.sql