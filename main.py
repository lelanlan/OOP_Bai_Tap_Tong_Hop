from pymysql import NULL
import deck as dec
import player as Player
import card as ca
import subprocess as sp
import db as data
import game as ga

def main():  # khó
    game = ga.Game()
    game.setup()
    memu=[]
    dem=data.get_lanchoigannhat() 
    if dem is None:
        dem=0
    
    memu.append('1.Xem danh sách người chơi  ♥‿♥')
    memu.append ('2.Thêm mới người chơi ♥‿♥')
    memu.append ('4.Chia bài ♥‿♥')
    memu.append('5.Lật bài ♥‿♥')
    memu.append('6.Xem game gần nhất ♥‿♥')
    memu.append("7.Tổng số lượt chơi trong ngày ♥‿♥")
    memu.append('8. Thoát game ♥‿♥')
    while True:
        for i in memu:
            print(i)
        luachon=int(input("✌✌  lựa chọn của bạn ✌✌ :\n"))
        if luachon==1:
                    game.list_players()
        elif luachon==2:
                    game.add_player()
        elif luachon==3:
                    id=int(input("Nhập id người dùng muốn xóa:"))
                    game.remove_player(id)
        elif luachon==4:
                  if game.is_playing:
                      print("\nBài đã được chia rồi ^^^^^ ≧◔◡◔≦ \n")
                  else:
                    game.deal_card()
                    dem=dem+1
                    data.log(game,dem)        
        elif luachon==5:
                    if game.is_playing == False:
                        print("\nBài Chưa được chia mà lật gì ^^^^^ (•‿•)\n")
                    else:
                        print(" ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦  ")
                        for i in range(0,len(game.lisNguoi)):
                            game.lisNguoi[i].flip_card()
                        print(f'người chơi chiến thắng:',end='')
                        game.flip_card().flip_card()
                        data.game(game,dem)
                        game.boBai= dec.Deck()
                        for i in range(0,len(game.lisNguoi)):
                             game.lisNguoi[i].listBai.clear()
        elif luachon==6:
                    print(" ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦  ")
                    data.get_last_game()
        elif luachon==7:
                    print(" ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦ ≧◔◡◔≦  ")
                    data.history()
        elif luachon==8:
                    break
        else:
                 print("Unknown Option Selected!")


main()

