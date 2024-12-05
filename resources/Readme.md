# Setup Environment
## 1.Install Python
`python3 -m venv .venv`
`source .venv/bin/activate`
`python3 --version` or `python3 -V`

## 2.Install PIP
`python3 -m pip install --upgrade pip`
`python3 -m pip --version`

## 3.Install Robot framework and libraries
`python3 -m pip install -r requirements.txt`

## Run tests
`robot -d result/test -L TRACE -T -i tag testcases`
