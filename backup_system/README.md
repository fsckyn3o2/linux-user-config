# BACKUP SYSTEM

Simple script to save system in a target path.

## Specification

### Environment variables

 - `BACKUP_SYS_TARGET` : target path

### Directories excluded from backup

### Backup destination

 - `$BACKUP_SYS_TARGET/$SOURCE_HOST/system/$DATE_BACKUP`
   - `SOURCE_HOST` hostname
   - `DATE_BACKUP` `date +'%Y-%m'`

### Backup archive

With `tar -zcvf` to `$BACKUP_SYS_TARGET/$SOURCE_HOST/system/archive-$DATE_BACKUP.tar.gzip`
Backup directory is removed just after in this example.
