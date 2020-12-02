BASE_DIR = "~/.config/nvim"
import os
import time
import sys


def install_termux():
    try:
        os.system("pkg install neovim ctags ")
        os.system("npm install -g neovim ")
        os.system("rm -rf ~/.config/nvim ")
        os.system(
            "git clone https://github.com/lambda-tech-myanmar/lambda-nvim.git  ~/.config/nvim "
        )

        os.system(
            "pip3 install -r $BASE_DIR/requirements.txt ")
        os.system("""
                  mkdir ~/linux_trainning 
                  mkdir ~/python_programming 
                  mkdir ~/python_exercise 
                  mkdir ~/linux_exercise 
                  mkdir ~/tool_testing 
                  mkdir ~/tmp 
                  """)
        os.system(
            """curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim """
        )
        os.system(
            "python3 -m venv ~/.neovim_env && . ~/.neovim_env/bin/activate && pip3 install -r ~/.config/nvim/requirements.txt "
        )
        os.system("""
                  nvim -c PlugInstall -c q -c q 
                  nvim -c UpdateRemotePlugins -c q -c q 
                  """)
    except KeyboardInterrupt:
        print("r u really want to exit")
        time.sleep(1)
    except BaseException as e:
        print(e)


def install_linux():

    try:
        os.system(
            "sudo apt-get install neovim universal-ctags ")
        os.system("sudo apt-get install nodejs ")
        os.system("sudo apt-get install npm ")
        os.system("sudo apt-get install xclip xsel yank ")
        os.system("sudo npm install -g neovim ")
        os.system("rm -rf ~/.config/nvim ")
        os.system(
            "git clone https://github.com/lambda-tech-myanmar/lambda-nvim.git  ~/.config/nvim "
        )
        os.system(
            "python3 -m venv ~/.neovim_env && . ~/.neovim_env/bin/activate && pip3 install -r ~/.config/nvim/requirements.txt "
        )

        os.system(
            "pip3 install -r {}/requirements.txt ".format(
                BASE_DIR))
        os.system("""
                  mkdir ~/Desktop/linux_trainning 
                  mkdir ~/Desktop/python_programming 
                  mkdir ~/Desktop/python_exercise 
                  mkdir ~/Desktop/linux_exercise 
                  mkdir ~/Desktop/tool_testing 
                  """)
        os.system(
            """curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim """
        )
        os.system(
            "cd ~/ && python3 -m venv ~/.neovim_env && source ~/.neovim_env/bin/activate && pip3 install -r ~/.config/nvim/requirements.txt  "
        )
        os.system("""
                  nvim -c 'PlugInstall -c q -c q' 
                  nvim -c 'UpdateRemotePlugins -c q -c q' 
                  nvim -c 'CocInstall -sync coc-python coc-tabnine coc-html coc-explorer coc-dictionary coc-metals coc-pyright coc-vimlsp coc-word coc-git coc-snippets coc-json|q' 

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
