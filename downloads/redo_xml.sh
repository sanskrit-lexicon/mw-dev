echo "BEGIN: downloads/redo_xml.sh"
if [ -f mwxml.zip ]
 then
 echo "remove old mwxml.zip"
 rm mwxml.zip
fi
if [ -f xml ]
 then
  rm -r xml
fi
mkdir xml
echo "copying files from ../pywork to xml/"
cp ../pywork/mw.dtd xml/
cp ../pywork/mw.xml xml/
cp ../pywork/mw-meta2.txt xml/
cp ../pywork/mwheader.xml xml/

echo "create new mwxml.zip"
zip -rq mwxml.zip xml
# clean up. Remove xml directory
rm -r xml
