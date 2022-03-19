#!/usr/bin/env python
import sys


def win_to_linux(file_name):
    with open(file_name, "rb") as f:
        data = f.read()
        data = data.replace(b"\r\n", b"\n")
        new_file = "Linux_" + file_name
        with open(new_file, "w") as f2:
            f2.write(data.decode())


def linux_to_win(file_name):
    with open(file_name, "rb") as f:
        data = f.read()
        data = data.replace(b"\n", b"\r\n")
        new_file = "Windows_" + file_name
        with open(new_file, "w") as f2:
            f2.write(data.decode())


if __name__ == '__main__':
    if len(sys.argv) == 1:
        print("Detect you don't have command argument\n"
              "Please try it again")
        exit(1)
    file_name = sys.argv[1]
    print("\033[36mChoose the change type you want!\033[0m")
    print(">1 \033[1;37;40mWindows to Linux\033[0m")
    print(">2 \033[1;37;40mLinux to Windows\033[0m")
    choice = input("\033[3mChoose the type you want: \033[0m")
    if choice == "1":
        win_to_linux(file_name)
    elif choice == "2":
        linux_to_win(file_name)
    else:
        print("\033[31mYou should choose the type!\033[0m")
        exit(1)
    print("\033[1;96;96mChange finish\033[1m")
