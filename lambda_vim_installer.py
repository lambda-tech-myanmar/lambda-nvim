BASE_DIR = "~/.config/nvim"
import os
import time
import sys


def install_termux():
    try:
        os.system("pkg install ctags > /dev/null 2>&1")
        os.system("npm install -g neovim > /dev/null 2>&1")
        os.system("rm -rf ~/.config/nvim > /dev/null 2>&1")
        os.system(
            "git clone https://github.com/lambda-tech-myanmar/lambda-nvim.git  ~/.config/nvim > /dev/null 2>&1"
        )

        os.system(
            "pip3 install -r $BASE_DIR/requirements.txt > /dev/null 2>&1")
        os.system("""
                  mkdir ~/linux_trainning > /dev/null 2>&1
                  mkdir ~/python_programming > /dev/null 2>&1
                  mkdir ~/python_exercise > /dev/null 2>&1
                  mkdir ~/linux_exercise > /dev/null 2>&1
                  mkdir ~/tool_testing > /dev/null 2>&1
                  mkdir ~/tmp > /dev/null 2>&1
                  """)
        os.system(
            """curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /dev/null 2>&1"""
        )
        os.system(
            "python3 -m venv ~/.neovim_env && . ~/.neovim_env/bin/activate && pip3 install -r ~/.config/nvim/requirements.txt > /dev/null 2>&1"
        )
        os.system("""
                  nvim -c PlugInstall -c q -c q > /dev/null 2>&1
                  nvim -c UpdateRemotePlugins -c q -c q > /dev/null 2>&1
                  """)
    except KeyboardInterrupt:
        print("r u really want to exit")
        time.sleep(1)
    except BaseException as e:
        print(e)


def install_linux():

    try:
        os.system("sudo apt-get install universal-ctags > /dev/null 2>&1")
        os.system("sudo apt-get install nodejs > /dev/null 2>&1")
        os.system("sudo apt-get install npm > /dev/null 2>&1")
        os.system("sudo apt-get install xclip xsel yank > /dev/null 2>&1")
        os.system("sudo npm install -g neovim > /dev/null 2>&1")
        os.system("rm -rf ~/.config/nvim > /dev/null 2>&1")
        os.system(
            "git clone https://github.com/lambda-tech-myanmar/lambda-nvim.git  ~/.config/nvim > /dev/null 2>&1"
        )
        os.system(
            "python3 -m venv ~/.neovim_env && . ~/.neovim_env/bin/activate && pip3 install -r ~/.config/nvim/requirements.txt > /dev/null 2>&1"
        )

        os.system(
            "pip3 install -r {}/requirements.txt > /dev/null 2>&1".format(
                BASE_DIR))
        os.system("""
                  mkdir ~/Desktop/linux_trainning > /dev/null 2>&1
                  mkdir ~/Desktop/python_programming > /dev/null 2>&1
                  mkdir ~/Desktop/python_exercise > /dev/null 2>&1
                  mkdir ~/Desktop/linux_exercise > /dev/null 2>&1
                  mkdir ~/Desktop/tool_testing > /dev/null 2>&1
                  """)
        os.system(
            """curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /dev/null 2>&1"""
        )
        os.system(
            "cd ~/ && python3 -m venv ~/.neovim_env && source ~/.neovim_env/bin/activate && pip3 install -r ~/.config/nvim/requirements.txt  > /dev/null 2>&1"
        )
        os.system("""
                  nvim -c 'PlugInstall -c q -c q' > /dev/null 2>&1
                  nvim -c 'UpdateRemotePlugins -c q -c q' > /dev/null 2>&1
                  nvim -c 'CocInstall -sync coc-python coc-tabnine coc-html coc-explorer coc-dictionary coc-metals coc-pyright coc-vimlsp coc-word coc-git coc-snippets coc-json|q' > /dev/null 2>&1

                  """)
        print("done! run :checkhealth in nvim")
    except KeyboardInterrupt:
        print("r u really want to exit")
        time.sleep(1)
    except BaseException as e:
        print(e)


def choice():
    try:
        x = int(input("[1] for termux [2] for linux"))
        if x == 1:
            install_termux()
        elif x == 2:
            install_linux()

    except:
        print("plz choose 1 or 2")
        choice()


if __name__ == "__main__":

    print("LambdaVim Installer beta")
    os.system("cat test.txxt")
    choice()
