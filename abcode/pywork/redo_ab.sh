echo "in abcode/pywork directory"
echo "BEGIN orig/mwtranscode/redo.sh"
cd ../../orig/mwtranscode/ || exit 1
sh redo.sh
cd ../../abcode/pywork || exit 1
echo "BEGIN redo_hw.sh"
sh redo_hw.sh
echo "END redo_hw.sh"

echo "BEGIN redo_xml.sh"
sh redo_xml.sh
echo "END redo_xml.sh"


echo "BEGIN redo_postxml.sh"
sh redo_postxml.sh
echo "END redo_postxml.sh"
