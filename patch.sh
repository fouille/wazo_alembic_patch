#!/bin/bash
# by Wazo Inc. Support

for table in alembic_version alembic_version_auth alembic_version_dird alembic_version_webhookd chatd_alembic_version do;
    echo "Quickfix over duplicate row in ${table}"
    VERSION=$(sudo -u postgres psql asterisk -c "select * from ${table}" -tA | uniq)
    sudo -u postgres psql asterisk -c "delete from ${table} where version_num='$VERSION'";
    sudo -u postgres psql asterisk -c "insert into ${table} (version_num) values ('$VERSION');";
    echo "Quickfix ${table} end"
done
