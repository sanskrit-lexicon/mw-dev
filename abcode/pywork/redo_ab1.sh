echo "redo_ab1.sh in abcode/pywork directory"
echo "assume orig/temp_mw_ab_slp1.txt has been computed"

echo "BEGIN redo_hw.sh"
sh redo_hw.sh
echo "END redo_hw.sh"

echo "BEGIN redo_xml.sh"
sh redo_xml.sh
echo "END redo_xml.sh"


echo "BEGIN redo_postxml.sh"
sh redo_postxml.sh
echo "END redo_postxml.sh"
