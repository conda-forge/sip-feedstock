set -exou

if [[ $(uname) == "Darwin" ]]; then
    export CFLAGS="-arch x86_64 -arch arm64"
    export CXXFLAGS="-arch x86_64 -arch arm64"
    export LDFLAGS="-arch x86_64 -arch arm64"
fi

$PYTHON -m pip install . -vv
