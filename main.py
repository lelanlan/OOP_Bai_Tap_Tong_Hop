import deck as dec
import player as pla
import card as ca
import subprocess as sp



import game as ga
def main():  # khó
    game = ga.Game()
    game.setup()
    print("==========================")
    print('1.Xem danh sách người chơi')
    print("2.Thêm mới người chơi ")
    print("3.Bỏ một người chơi ")
    print("4.Chia bài ")
    print("5.Lật bài: ")
    print("6.Xem lịch sử chơi")
    print("7.Tổng số lượt chơi trong ngày")
    print("===========================================================")
    luachon=int(input("lựa chọn của bạn:"))
    def luachon_(lc):
        switcher={
                1:game.list_players(),
                2: game.list_players(),
                3:'Tuesday',
                4:'Wednesday',
                5:'Thursday',
                6:'Friday',
                7:'Saturday'
             }
        return f'{switcher.get(lc)}'
    luachon_(luachon)
    # if luachon==1:
    #     game.list_players()






main()




