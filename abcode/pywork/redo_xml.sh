echo "BEGIN redo_xml.sh"
echo "construct mw.xml..."
python3 make_xml.py ../../orig/temp_mw_ab_slp1.txt mwhw.txt mw.xml # > redoxml_log.txt
echo "xmllint on mw.xml..."
xmllint --noout --valid mw.xml
echo "mw.sqlite..."
#  construct things that depend on xxx.xml
sh redo_postxml.sh
echo "END redo_xml.sh"
