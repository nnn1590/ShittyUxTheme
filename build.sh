#!/usr/bin/env bash
set -e

declare -r THREAD_MODEL='-win32'  # '-win32' | '-posix' | ''

mkdir -pv ./{x64/,}{Debug,Release}/bin
echo 'Building for x86_64 (Debug)...'   && "x86_64-w64-mingw32-g++${THREAD_MODEL}" -o   'x64/Debug/bin/ShittyUxTheme.exe' -g  -m64 -std=c++17 -mwin32 -DUNICODE -D_DEBUG -D_CONSOLE -static-libgcc -static-libstdc++ ShittyUxTheme.cpp takeown.cpp -ldbghelp
echo 'Building for x86_64 (Release)...' && "x86_64-w64-mingw32-g++${THREAD_MODEL}" -o 'x64/Release/bin/ShittyUxTheme.exe' -O2 -m64 -std=c++17 -mwin32 -DUNICODE -DNDEBUG -D_CONSOLE -static-libgcc -static-libstdc++ ShittyUxTheme.cpp takeown.cpp -ldbghelp
echo 'Building for i686 (Debug)...'     && "i686-w64-mingw32-g++${THREAD_MODEL}"   -o       'Debug/bin/ShittyUxTheme.exe' -g  -m32 -std=c++17 -mwin32 -DUNICODE -D_DEBUG -D_CONSOLE -static-libgcc -static-libstdc++ ShittyUxTheme.cpp takeown.cpp -ldbghelp
echo 'Building for i686 (Release)...'   && "i686-w64-mingw32-g++${THREAD_MODEL}"   -o     'Release/bin/ShittyUxTheme.exe' -O2 -m32 -std=c++17 -mwin32 -DUNICODE -DNDEBUG -D_CONSOLE -static-libgcc -static-libstdc++ ShittyUxTheme.cpp takeown.cpp -ldbghelp
