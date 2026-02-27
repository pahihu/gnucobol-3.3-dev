# Homebrew
LDFLAGS="-L/opt/homebrew/lib"
CPPFLAGS="-I/opt/homebrew/include"

# libiconv
LDFLAGS="-L/opt/homebrew/opt/libiconv/lib $LDFLAGS"
CPPFLAGS="-I/opt/homebrew/opt/libiconv/include $CPPFLAGS"

# ncurses
LDFLAGS="-L/opt/homebrew/opt/ncurses/lib $LDFLAGS"
CPPFLAGS="-I/opt/homebrew/opt/ncurses/include $CPPFLAGS"

# berkeley-db
LDFLAGS="-L/opt/homebrew/opt/berkeley-db/lib $LDFLAGS"
CPPFLAGS="-I/opt/homebrew/opt/berkeley-db/include $CPPFLAGS"

# libxml2
export XML2_CONFIG=/opt/homebrew/opt/libxml2/bin/xml2-config
export LDFLAGS="-L/opt/homebrew/opt/libxml2/lib $LDFLAGS"
# NOTE: include/libxml2 !!!
export CPPFLAGS="-I/opt/homebrew/opt/libxml2/include/libxml2 $CPPFLAGS"

./configure --prefix=/opt/gc33bdb 2>&1 | tee myconfigure.log
