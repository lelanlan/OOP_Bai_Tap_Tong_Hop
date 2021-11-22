'''Kết nối CSDL'''
from pymysql import connect, cursors, Error
import game as ga
from datetime import datetime
from datetime import date

config = {
  'host': 'localhost',
  'user': 'root',
  'password': '',
  'database': 'hackathon',
  }
cnx = connect(**config)

def log(ga,dem):
    for i in range(0,len(ga.lisNguoi)):
        sql="INSERT INTO logs (game_id,player,cards,point,biggest_card,lanchoi) VALUES (%s, %s,%s,%s,%s,%s)"
        value=(i,ga.lisNguoi[i].name,ga.lisNguoi[i].ghep_card(),ga.lisNguoi[i].point,ga.lisNguoi[i].biggest_card.__str__(),dem)
        cur = cnx.cursor()    
        try:
            cur.execute(sql,value)
            cnx.commit()
        except:
            cnx.rollback()
    sql1="INSERT INTO game (name_win,lanchoi,time) VALUES (%s, %s,%s)"
    value1=(ga.flip_card().name,dem,datetime.now())
    cur1 = cnx.cursor()
    try:
            cur1.execute(sql1,value1)
            cnx.commit()
    except:
            cnx.rollback()
    
    '''
    Ghi thông tin về game vào CSDL và 2 bảng games và logs

    Bảng games gồm tên người chiến thắng

    Bảng logs gồm danh sách người chơi, bộ bài, điểm và lá bài lớn nhất tương ứng với game

    Chú ý, sau khi INSERT vào games, có thể lấy id của game vừa tạo với cursor.lastrowid
    '''
    pass

def get_lanchoigannhat():
    sql="SELECT MAX(lanchoi) as lancho FROM `logs` "
    cur = cnx.cursor()
    cur.execute(sql)
    for i in cur:
        result= i[0]
    return result

def get_last_game():

    '''Lấy thông tin về game gần nhất từ cả 2 bảng games và logs'''
    sql1="SELECT name_win,time FROM `game` WHERE `lanchoi`=(SELECT max(lanchoi) FROM game)"
    cur1 = cnx.cursor()
    cur1.execute(sql1)
    for i in cur1:
       print(i[1]) 
       print(f"Người chơi chiến thắng: {i[0]}")
    sql="SELECT * FROM `logs` WHERE `lanchoi`=(SELECT max(lanchoi) FROM logs)"
    cur = cnx.cursor()
    cur.execute(sql)
    for i in cur:
       print(f"Tên người chơi: {i[2]} Bộ bài: {i[3]} Điểm: {i[4]} Lá bài lớn nhất: {i[5]}")
   
    


def history():
    '''
    Lấy thông tin về lịch sử chơi

    Bao gồm tổng số game đã chơi, số game chiến thắng ứng với mỗi người chơi (sử dụng GROUP BY và các hàm tổng hợp)
    '''
    sql=f"SELECT COUNT(id) as tong FROM `game` where time like '{date.today()}%'"
    cur = cnx.cursor()
    cur.execute(sql)
    for i in cur:
        print(f"Tồng số game đã chơi trong ngày hôm nay: {i[0]}")

    sql1="SELECT name_win,COUNT(name_win) as tong FROM game GROUP BY name_win"
    cur1 = cnx.cursor()
    cur1.execute(sql1)
    for i in cur1:
        print(f"Tên người chơi: {i[0]}| số bàn thắng: {i[1]}")

    
