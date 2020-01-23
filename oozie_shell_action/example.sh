timestamp ()
{
    date "+%y/%m/%d %H:%M:%S"
}
touch /tmp/file.log
chmod 755 /tmp/file.log
echo "`timestamp` INFO Hello from oozie example" >> /tmp/file.log

# hive -e "select count(*) from db.tbl;" >> /tmp/file.log

