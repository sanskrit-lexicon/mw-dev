sqlitedb="mw.sqlite"
xml="../mw.xml"
echo "remaking $sqlitedb from $xml with python..."
python3 sqlite.py $xml $sqlitedb
echo "moving $sqlitedb to web/sqlite/"
mv mw.sqlite ../../web/sqlite/
