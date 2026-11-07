# 
# 0. copy xxxheader.xml from pywork to web
cp mwheader.xml ../web/
# 1. Redo web/xxx.sqlite
cd sqlite || exit 1
sh redo.sh
cd ../ # back in pywork
# 2. redo db (query_dump) for advanced search
cd webtc2 || exit 1
sh redo.sh
cd ../ # back to pywork
# For applicable dictionaries, update other web/sqlite databases
# abbreviations
 cd mwab || exit 1
 sh redo.sh
 cd ../ # back to pywork
# literary source.
 cd mwauth || exit 1
 sh redo.sh
 cd ../ # back to pywork
# two extra links dbs for mw
 # Westergaard DAtupAWa links
 cd westmwtab || exit 1
 sh redo.sh
 cd ../ # back to pywork
 # Whitney roots links.
 cd whitmwtab || exit 1
 sh redo.sh
 cd ../ # back to pywork
