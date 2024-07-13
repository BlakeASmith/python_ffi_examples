here="$(dirname "$0")"

pushd "$here" > /dev/null
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
popd > /dev/null
