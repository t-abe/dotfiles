PREFIX=$HOME/.local

export FONT_HOME=$PREFIX/share/fonts

export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/share/pkgconfig:$PREFIX/lib/pkgconfig
export PATH=$PATH:$PREFIX/bin
export LD_LIBRARY_PATH=$PREFIX/lib
export CPLUS_INCLUDE_PATH=$PREFIX/include
export C_INCLUDE_PATH=$PREFIX/include
export LDFLAGS="-L$PREFIX/lib"
export DYLD_LIBRARY_PATH=$PREFIX/lib

# for golang
# export GOROOT=$HOME/go
# export GOPATH=$PREFIX/go
# export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# for CUDA & CAFFE
# source $HOME/cuda.source

# export PYTHONPATH=.:$PREFIX/lib/python2.7/site-packages
export PYTHONPATH=.

export LIBRARY_PATH=$LD_LIBRARY_PATH
