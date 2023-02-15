# 
# 0. copy xxxheader.xml from pywork to web
cp mwheader.xml ../web/
# 1. Redo web/xxx.sqlite
cd sqlite
sh redo.sh
cd ../ # back in pywork
# 2. redo db (query_dump) for advanced search
cd webtc2
sh redo.sh
cd ../ # back to pywork
# For applicable dictionaries, update other web/sqlite databases
# abbreviations
 cd mwab
 sh redo.sh
 cd ../ # back to pywork
# literary source.
 cd mwauth
 sh redo.sh
 cd ../ # back to pywork
# two extra links dbs for mw
 # Westergaard DAtupAWa links  # Uses 'php' executable.
 cd westmwtab
 sh redo.sh
 cd ../ # back to pywork
 # Whitney roots links. # Uses 'php' executable.
 cd whitmwtab
 sh redo.sh
 cd ../ # back to pywork
