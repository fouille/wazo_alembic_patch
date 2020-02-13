#!/bin/bash
# by Wazo Inc. Support

echo "Quickfix over duplicate row in nestbox-confd alembic version"
  VERSION=$(sudo -u postgres psql asterisk -c "select * from alembic_version" -tA | uniq)
  sudo -u postgres psql asterisk -c "delete from alembic_version where version_num='$VERSION'";
  sudo -u postgres psql asterisk -c "insert into alembic_version (version_num) values ('$VERSION');";
echo "Quickfix end"
