echo "BEGIN: downloads/redo_txt.sh"
if [ -f mwtxt.zip ]
 then
 echo "remove old mwtxt.zip"
 rm mwtxt.zip
fi
if [ -f txt ]
 then
  rm -r txt
fi
mkdir txt
echo "copying files from ../pywork to txt/"
cp ../orig/mw.txt txt/
cp ../pywork/mw-meta2.txt txt/
cp ../pywork/mwheader.xml txt/

echo "create new mwtxt.zip"
zip -rq mwtxt.zip txt
# clean up. Remove txt directory
rm -r txt
