FROM docker:19.03

# 1. newer versions of 'cryptography' package have deprecation warnings
#    see: https://github.com/paramiko/paramiko/issues/1369
#
# 2. installing specific 'idna' package version, required by compose
#
# 3. newer version of 'paramiko' package require latest 'cryptography' package
#    see: http://www.paramiko.org/changelog.html#2.5.0
#
# TODO: check these to lessen dependencies
#       https://github.com/docker/compose/issues/6617#issuecomment-478662098
#       https://github.com/docker/compose/issues/6617#issuecomment-485175495

RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make &&\
    pip install --no-cache-dir "idna>=2.5,<2.8" cryptography==2.4.2 paramiko==2.4.2 docker-compose
