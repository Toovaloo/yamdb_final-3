rm -f api_yamdb/pytest.ini
rm -rf api_yamdb/tests

cp pytest.ini api_yamdb/pytest.ini
cp -a tests/ api_yamdb/tests

cd api_yamdb
pytest --tb=line 1>&2
