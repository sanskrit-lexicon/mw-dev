echo "BEGIN: downloads/redo_web1.sh"
if [ -f mwweb1.zip ]
 then
 echo "remove old mwweb1.zip"
 rm mwweb1.zip
fi
cd ../
zip  -rq downloads/mwweb1.zip web -x *pdfpages*
cd downloads
