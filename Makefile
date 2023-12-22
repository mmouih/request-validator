all: validate cs review test
cs:
	./vendor/bin/phpcs src
	./vendor/bin/phpcs rector.php
csf:
	./vendor/bin/phpcbf src
	./vendor/bin/phpcbf rector.php
review:
	./vendor/bin/phpstan analyse src
build:
	composer install
validate:
	composer validate
refactor:
	./vendor/bin/rector process
refactor-soft:
	./vendor/bin/rector process src --dry-run
test:
	./vendor/bin/phpunit
sf_update:
	composer update symfony/*
generate:
	./vendor/bin/phpgen generate $(dto) $(file)  -f