import web

db_host = 'bfjrxdpxrza9qllq.cbetxkdyhwsb.us-east-1.rds.amazonaws.com'
db_name = 'nvfeh2ysrhosai9j'
db_user = 'ylvz82qx3ecwkhfx'
db_pw = 'd1bsacja01ga1yzh'

db = web.database(
    dbn='mysql',
    host=db_host,
    db=db_name,
    user=db_user,
    pw=db_pw
    )