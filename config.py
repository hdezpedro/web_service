import web

db_host = 'c9cujduvu830eexs.cbetxkdyhwsb.us-east-1.rds.amazonaws.com'
db_name = 'gd7xbh7954ibet3a'
db_user = 'jpvvtc47xwq2fevo'
db_pw = 'kka07146j8xyquwl'

db = web.database(
    dbn='mysql',
    host=db_host,
    db=db_name,
    user=db_user,
    pw=db_pw
    )