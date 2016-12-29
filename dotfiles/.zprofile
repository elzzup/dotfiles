path=(
    "/usr/local/sbin"
    "/usr/local/bin"
    "/usr/bin"
    "/opt/grass/bin"
    "/opt/grass/scripts"
    "/opt/java/bin"
    "/opt/java/db/bin"
    "/opt/java/jre/bin"
    "/usr/bin/site_perl"
    "/usr/bin/vendor_perl"
    "/usr/bin/core_perl"
    $path
)

# {{{ brew
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# }}}
# {{{ rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# }}}
# {{{ torch
export PATH=/Users/hiro/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/Users/hiro/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/Users/hiro/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist

# }}}
# {{{ sdkman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/hiro/.sdkman"
[[ -s "/Users/hiro/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/hiro/.sdkman/bin/sdkman-init.sh"

# }}}
# {{{ android
export PATH=$PATH:/opt/android-ndk-r10d
case ${OSTYPE} in
    darwin*)
        export ANDROID_NDK_ROOT=/Applications/Android/android-ndk-r10d
        export ANDROID_SDK_ROOT=/Applications/Android/sdk
        export ANT_ROOT=/Applications/Android/apache-ant-1.9.4
        export NDK_ROOT=/Applications/Android/android-ndk-r10d
        ;;
    *)
        export NDK_ROOT=/opt/android-ndk-r9d
        export ANDROID_NDK_ROOT=/opt/android-ndk-r9d
        export ANDROID_SDK_ROOT=/opt/android-sdk
        export ANT_ROOT=/usr/bin
        ;;
esac

# }}}
# {{{ python OFF
# CFLAGS="-I$(brew --prefix openssl)/include"
# LDFLAGS="-L$(brew --prefix openssl)/lib"

# # pyenv
# export PYENV_ROOT="${HOME}/.pyenv"
# if [ -d "${PYENV_ROOT}" ]; then
#     export PATH=${PYENV_ROOT}/bin:$PATH
#     eval "$(pyenv init -)"
# fi
# 
# # caffe
# export PYTHONPATH=/path/to/caffe/python:$PYTHONPATH
# export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/cuda/lib:$HOME/.pyenv/versions/anaconda-2.0.1/lib:/usr/local/lib:/usr/lib

# }}}
# {{{ git
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# }}}
# {{{ php
PATH=$HOME/.composer/vendor/bin:$PATH

# }}}
# {{{ rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# }}}
# {{{ perl
PERL_MB_OPT="--install_base \"/Users/hiro/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/hiro/perl5"; export PERL_MM_OPT;

export PERL_CPANM_OPT="--local-lib=$HOME/.perl-extlib"
export PERL5LIB="$HOME/.perl-extlib/lib/perl5:$PERL5LIB"

# }}}
# {{{ go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# }}}
# {{{ direnv
eval "$(direnv hook zsh)"

# }}}
# {{{ nodist
export PATH=$HOME/.nodebrew/current/bin:$PATH

# }}}
# {{{ neo-vim
export XDG_CONFIG_HOME="$HOME/.config"

# }}}
