#!/bin/bash
# by Wazo Inc. Support

echo "Quickfix over duplicate row in alembic_version"
  VERSION=$(sudo -u postgres psql asterisk -c "select * from alembic_version" -tA | uniq)
  sudo -u postgres psql asterisk -c "delete from alembic_version where version_num='$VERSION'";
  sudo -u postgres psql asterisk -c "insert into alembic_version (version_num) values ('$VERSION');";
echo "Quickfix alembic_version end"
echo "Quickfix over duplicate row in alembic_version_auth"
  VERSION_AUTH=$(sudo -u postgres psql asterisk -c "select * from alembic_version_auth" -tA | uniq)
  sudo -u postgres psql asterisk -c "delete from alembic_version_auth where version_num='$VERSION_AUTH'";
  sudo -u postgres psql asterisk -c "insert into alembic_version_auth (version_num) values ('$VERSION_AUTH');";
echo "Quickfix alembic_version_auth end"
echo "Quickfix over duplicate row in alembic_version_dird"
  VERSION_DIRD=$(sudo -u postgres psql asterisk -c "select * from alembic_version_dird" -tA | uniq)
  sudo -u postgres psql asterisk -c "delete from alembic_version_dird where version_num='$VERSION_DIRD'";
  sudo -u postgres psql asterisk -c "insert into alembic_version_dird (version_num) values ('$VERSION_DIRD');";
echo "Quickfix alembic_version_dird end"
echo "Quickfix over duplicate row in alembic_version_webhookd"
  VERSION_WEBHOOKD=$(sudo -u postgres psql asterisk -c "select * from alembic_version_webhookd" -tA | uniq)
  sudo -u postgres psql asterisk -c "delete from alembic_version_webhookd where version_num='$VERSION_WEBHOOKD'";
  sudo -u postgres psql asterisk -c "insert into alembic_version_webhookd (version_num) values ('$VERSION_WEBHOOKD');";
echo "Quickfix alembic_version_webhookd end"
