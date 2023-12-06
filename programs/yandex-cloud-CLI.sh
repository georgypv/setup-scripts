#!/bin/bash

#https://cloud.yandex.ru/docs/cli/operations/install-cli#non-interactive
curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | \
    bash -s -- -a

#next
#create account:  https://cloud.yandex.ru/docs/cli/operations/profile/profile-create#interactive-create
#install terraform: https://cloud.yandex.ru/docs/tutorials/infrastructure-management/terraform-quickstart#install-terraform