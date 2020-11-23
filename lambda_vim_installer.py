BASE_DIR = "~/.config/nvim"
import os
import time
import sys


def install_dependency():
    try:
        os.system("pkg install ctags")
        os.system("pip3 install -r $BASE_DIR/requirements.txt")
        os.system("npm install -g neovim")
        os.system("rm -rf ~/.config/nvim")
        os.system(
            "git clone https://github.com/lambda-tech-myanmar/lambda-nvim.git  ~/.config/nvim"
        )
        os.system("""
                  mkdir ~/linux_trainning
                  mkdir ~/python_programming
                  mkdir ~/python_exercise
                  mkdir ~/linux_exercise
                  mkdir ~/tool_testing
                  mkdir ~/tmp
                  """)
        os.system(
            """curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"""
        )
        os.system(
            "cd ~/ && python3 -m venv ~/.neovim_env && source ~/.neovim_env/bin/activate && pip3 install -r requirements.txt "
        )
        os.system("""
                  nvim -c PlugInstall -c q -c q
                  nvim -c UpdateRemotePlugins -c q -c q
                  nvim -c 'CocInstall -sync coc-python coc-tabnine coc-html coc-explorer coc-dictionary coc-metals coc-pyright coc-vimlsp coc-word coc-git coc-snippets coc-json|q'

                  """)
    except KeyboardInterrupt:
        print("r u really want to exit")
        time.sleep(1)
    except BaseException as e:
        print(e)


print("LambdaVim Installer beta")
install_dependency()
