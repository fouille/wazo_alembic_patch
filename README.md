# Information

You can use only if you have to version of alembic in your database. 
You can verify with this command : 
```console
foo@bar:~$ sudo -u postgres psql asterisk -c "select * from alembic_version"
``` 

# Installation

```console
foo@bar:~$  cd /tmp
foo@bar:~$  wget https://raw.githubusercontent.com/fouille/wazo_alembic_patch/master/patch.sh
foo@bar:~$  chmod +x patch.sh
foo@bar:~$  ./patch.sh
``` 
