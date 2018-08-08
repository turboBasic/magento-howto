mao@mao:/mst/projects$ `m setup cwdefault`
  running: `echo "$USER"` in /mst/projects
     > mao
  running: `hostname` in /mst/projects
     > mao
Running command: `project:setup path=/mst/projects/cwdefault225/src version=2.2.5 db_name=cwdefault225 base_url=http://cwdefault225.mao.mirasvit.com/`
  Magento: 2.2.5
  Database: cwdefault225
  Path: /mst/projects/cwdefault225/src
Running command: `magento:build version=2.2.5`
  running: `rm -rf /mst/projects/cwdefault225/src` in /mst/projects
  running: `mkdir -p /mst/projects/cwdefault225/src` in /mst/projects
  running: `cp -r /mst/opt/m/_files/2.2.5/. /mst/projects/cwdefault225/src` in /mst/projects
  running: `mysql -uroot -pastral -h 127.0.0.1 -e 'CREATE DATABASE IF NOT EXISTS ``cwdefault225``'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h127.0.0.1 cwdefault225 < dump.sql` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;UPDATE ``mage_core_config_data`` SET value="http://cwdefault225.mao.mirasvit.com/" WHERE path="web/unsecure/base_url"'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;UPDATE ``mage_core_config_data`` SET value="http://cwdefault225.mao.mirasvit.com/" WHERE path="web/secure/base_url"'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("admin/security/admin_account_sharing", 1) ON DUPLICATE KEY UPDATE value = 1;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("admin/security/use_form_key", 0) ON DUPLICATE KEY UPDATE value = 0;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("admin/security/password_lifetime", 0) ON DUPLICATE KEY UPDATE value = 0;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("admin/security/session_lifetime", 86400) ON DUPLICATE KEY UPDATE value = 0;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("admin/captcha/enable", 0) ON DUPLICATE KEY UPDATE value = 0;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("admin/captcha/forms", NULL) ON DUPLICATE KEY UPDATE value = NULL;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("customer/captcha/enable", 0) ON DUPLICATE KEY UPDATE value = 0;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `mysql -uroot -pastral -h 127.0.0.1  -e 'USE cwdefault225;INSERT INTO ``mage_core_config_data`` (path, value) VALUES ("customer/captcha/forms", NULL) ON DUPLICATE KEY UPDATE value = NULL;'` in /mst/projects/cwdefault225/src
     > mysql: [Warning] Using a password on the command line interface can be insecure.
  running: `php -d memory_limit=4G bin/magento maintenance:enable` in /mst/projects/cwdefault225/src
     > Enabled maintenance mode
  running: `php -d memory_limit=4G bin/magento dep:m:set developer` in /mst/projects/cwdefault225/src
     > Enabled developer mode.
Running command: `project:permissions` 
  running: `find . -type d -exec chmod 2777 {} +` in /mst/projects/cwdefault225/src
  running: `find . -type f -exec chmod 666 {} +` in /mst/projects/cwdefault225/src
  running: `chmod +x bin/magento` in /mst/projects/cwdefault225/src
Running command: `project:setup:dependencies dependencies=mirasvit/module-cwdefault:dev-develop`
  running: `composer config repositories.mirasvit composer https://555:555@packages.mirasvit.com/` in /mst/projects/cwdefault225/src
  running: `composer config --unset repositories.0` in /mst/projects/cwdefault225/src
  running: `composer require mirasvit/module-cwdefault:dev-develop --ignore-platform-reqs --prefer-source  --ignore-platform-reqs` in /mst/projects/cwdefault225/src
     > ./composer.json has been updated
     > Loading composer repositories with package information
     > Updating dependencies (including require-dev)
     > Package operations: 4 installs, 0 updates, 0 removals
     >   - Installing mirasvit/module-core (1.2.68): 
     > Cloning dcb70fbf23 from cache
     >   - Installing mirasvit/module-report-api (1.0.4): 
     > Cloning 6a44b51c30 from cache
     >   - Installing mirasvit/module-report (1.3.35): 
     > Cloning dcf67dca3b from cache
     >   - Installing mirasvit/module-cache-warmer (dev-develop eef678e): 
     > Cloning eef678eb2c from cache
     > Writing lock file
     > Generating autoload files
  running: `php -d memory_limit=4G bin/magento module:enable --all` in /mst/projects/cache-warmer225/src
     > The following modules have been enabled:
     > - Mirasvit_CacheWarmer
     > - Mirasvit_Core
     > - Mirasvit_Report
     > To make sure that the enabled modules are properly registered, run '`setup:upgrade`'.
     > Cache cleared successfully.
     > Generated classes cleared successfully. Please run the '`setup:di:compile`' command to generate classes.
     > Info: Some modules might require static view files to be cleared. To do this, run '`module:enable`' with the `--clear-static-content` option to clear them.
  running: `php -d memory_limit=4G bin/magento setup:upgrade` in /mst/projects/cache-warmer225/src
     > Cache cleared successfully
     > File system cleanup:
     > /mst/projects/cache-warmer225/src/generated/code/Composer
     > /mst/projects/cache-warmer225/src/generated/code/Magento
     > /mst/projects/cache-warmer225/src/generated/code/Mirasvit
     > /mst/projects/cache-warmer225/src/generated/code/Symfony
     > Updating modules:
     > Schema creation/updates:
     > Module 'Magento_Store':
Running command: `module:to-branch`
  running: `git reset HEAD --hard` in /mst/projects/cache-warmer225/src/vendor/mirasvit/module-cache-warmer
     > HEAD is now at eef678e bug: Fixed an error: "Unable to Connect to ssl:..."
  running: `git checkout develop` in /mst/projects/cache-warmer225/src/vendor/mirasvit/module-cache-warmer
     > Already on 'develop'
     > Your branch is up-to-date with 'origin/develop'.
  running: `git pull` in /mst/projects/cache-warmer225/src/vendor/mirasvit/module-cache-warmer
     > Already up-to-date.
Running command: `project:setup:mode mode=dev`
Running command: `project:permissions`
  running: `find . -type d -exec chmod 2777 {} +` in /mst/projects/cache-warmer225/src
  running: `find . -type f -exec chmod 666 {} +` in /mst/projects/cache-warmer225/src
  running: `chmod +x bin/magento` in /mst/projects/cache-warmer225/src
  running: `php -d memory_limit=4G bin/magento maintenance:disable` in /mst/projects/cache-warmer225/src
     > Disabled maintenance mode
     
     


