echo "BEGIN redo_hw.sh"
echo "construct xxxhw.txt"
python3 hw.py ../../orig/temp_mw_ab_slp1.txt hwextra/mw_hwextra.txt mwhw.txt
python3 hw2.py mwhw.txt mwhw2.txt
python3 hw0.py mwhw.txt mwhw0.txt
# both hw2.txt and hw0.txt are easily constructed from hw.txt
# not clear, therefore, that either hw2.txt or hw0.txt is needed directly
# We would need to change the 'awork/sanhw1.pt' program. 
# To avoid this change might be sufficient reason to keep hw2.txt and hw0.txt
echo "construct xxxhw2.txt"
echo "construct xxxhw0.txt"
echo "construct mwkeys.sqlite"
cd mwkeys
sh redo.sh
echo "DONE redo_hw.sh"
