defineEnvVar AUTHOR "The author of the image(s) to build" "me";
defineEnvVar AUTHOR_EMAIL "The author's email" "me@example.com";
defineEnvVar NAMESPACE "The docker registry's namespace" "example";
defineEnvVar DATE "The date format used to tag images" "$(date '+%Y%m')";
defineEnvVar TIME "A timestamp" "$(date)";
defineEnvVar ROOT_IMAGE_VERSION "The root image version" "0.9.18";
defineEnvVar ROOT_IMAGE_64BIT "The default root image for 64 bits" "phusion/baseimage"
defineEnvVar RANDOM_PASSWORD "A random password" "secret" 'head -c 20 /dev/urandom | sha1sum | cut -d' ' -f1';
defineEnvVar ROOT_IMAGE_32BIT "The default root image for 32 bits" "${ROOT_IMAGE_64BIT_DEFAULT}32";
defineEnvVar BASE_IMAGE_64BIT "The base image for 64 bits" '${NAMESPACE}/base';
defineEnvVar BASE_IMAGE_32BIT "The base image for 32 bits" '${BASE_IMAGE_64BIT_DEFAULT%%64}32';
defineEnvVar REGISTRY "The registry to push Docker images to" "tutum.co";
defineEnvVar REGISTRY_NAMESPACE "The namespace under the registry where the image is to be uploaded" '${NAMESPACE}';
defineEnvVar JAVA_VERSION "The Java version" "8";
defineEnvVar APTGET_INSTALL \
             "Installs a program via apt-get" \
             '/usr/local/bin/aptget-install.sh -vv ';
defineEnvVar APTGET_CLEANUP \
             "The cleanup commands after an apt-get so that the resulting image size is optimal" \
             '/usr/local/bin/aptget-cleanup.sh -v ';
defineEnvVar SMTP_HOST \
             "The SMTP host to send emails, including monit's" \
             "mail.example.com";
defineEnvVar BACKUP_HOST \
             "The backup host to send the backup files" \
             "backup.example.com";
defineEnvVar MONIT_HTTP_PORT \
             "The port used by Monit's webapp" \
             "2812";
defineEnvVar MONIT_HTTP_USER \
             "The user to login in monit's webapp" \
             "monit";
defineEnvVar MONIT_HTTP_PASSWORD \
             "The password to login in monit's webapp" \
             "head -c 20 /dev/urandom | sha1sum | cut -d' ' -f1";
defineEnvVar MONIT_HTTP_TIMEOUT \
             "The timeout before alerting that monit's own http interface is down" \
             "15 seconds";
defineEnvVar INCLUDES_FOLDER \
             "The folder where 'include' files are located" \
             "./.templates";
defineEnvVar COPYRIGHT_PREAMBLE_FILE \
             "The file with the copyright preamble" \
             'copyright-preamble.default.txt';
defineEnvVar LICENSE_FILE \
             "The file with the license details" \
             'LICENSE.gpl3';
defineEnvVar ENABLE_SSH "Whether to enable SSH by default" "false";
defineEnvVar ENABLE_MONIT "Whether to enable Monit" "true";
defineEnvVar ENABLE_SYSLOG "Whether to enable syslog" "true";
defineEnvVar ENABLE_CRON "Whether to enable cron" "true";
defineEnvVar ENABLE_RSNAPSHOT "Whether to enable rsnapshot" "true";
defineEnvVar ENABLE_LOGSTASH \
             "Whether to enable logstash, if available for the specific image" \
             "true";
