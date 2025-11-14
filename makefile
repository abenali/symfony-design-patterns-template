.PHONY: test phpstan cs-fix quality

test:
	bin/phpunit

phpstan:
	vendor/bin/phpstan analyse

cs-fix:
	vendor/bin/php-cs-fixer fix

quality: cs-fix phpstan test