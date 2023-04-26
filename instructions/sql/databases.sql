-- Make sure to search and update all files accordingly with new credentials

-- CMS
CREATE SCHEMA IF NOT EXISTS `nltp_cms` CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'nltp_cms_user'@'%' IDENTIFIED WITH mysql_native_password BY 'nltp_cms_pass';
GRANT ALL PRIVILEGES ON `nltp_cms`.* TO 'nltp_cms_user'@'%';

-- Keycloack
CREATE SCHEMA IF NOT EXISTS `nltp_keycloak` CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'nltp_keycloak_user'@'%' IDENTIFIED WITH mysql_native_password BY 'nltp_keycloak_pass';
GRANT ALL PRIVILEGES ON `nltp_keycloak`.* TO 'nltp_keycloak_user'@'%';

-- Translation system service
CREATE SCHEMA IF NOT EXISTS `nltp_translation_systems` CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'nltp_translation_systems_user'@'%' IDENTIFIED WITH mysql_native_password BY 'nltp_translation_systems_pass';
GRANT ALL PRIVILEGES ON `nltp_translation_systems`.* TO 'nltp_translation_systems_user'@'%';

-- File translation service
CREATE SCHEMA IF NOT EXISTS `nltp_filetranslation` CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'nltp_filetranslation_user'@'%' IDENTIFIED WITH mysql_native_password BY 'nltp_filetranslation_pass';
GRANT ALL PRIVILEGES ON `nltp_filetranslation`.* TO 'nltp_filetranslation_user'@'%';

-- Website translation service
CREATE SCHEMA IF NOT EXISTS `nltp_websitetranslation` CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'nltp_websitetranslation_user'@'%' IDENTIFIED WITH mysql_native_password BY 'nltp_websitetranslation_pass';
GRANT ALL PRIVILEGES ON `nltp_websitetranslation`.* TO 'nltp_websitetranslation_user'@'%';

-- CAT-tool
CREATE SCHEMA IF NOT EXISTS `nltp_cattool` DEFAULT CHARACTER SET utf8;
CREATE SCHEMA IF NOT EXISTS `nltp_cattool_conversions_log` DEFAULT CHARACTER SET utf8;

CREATE USER IF NOT EXISTS 'nltp_cattool_user'@'%' IDENTIFIED WITH mysql_native_password BY 'nltp_cattool_pass';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE, SHOW VIEW ON `nltp_cattool`.* TO 'nltp_cattool_user'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE, SHOW VIEW ON `nltp_cattool_conversions_log`.* TO 'nltp_cattool_user'@'%';

FLUSH PRIVILEGES;