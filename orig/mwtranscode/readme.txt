
Transcoding mw_AB.

## retrieve pieces needed for transcoding in this repository
cp  /c/xampp/htdocs/sanskrit-lexicon/MWS/mwtranscode/mw_transcode2.py mw_transcode3.py
cp /c/xampp/htdocs/sanskrit-lexicon/MWS/mwtranscode/transcoder.py .
cp -r /c/xampp/htdocs/sanskrit-lexicon/MWS/mwtranscode/transcoder2 .

## Revisions to mw_transcoder3.py
- Add special characters 〈 〉 { }  that can occur in <s>X</s>
  This revision in update_slp1chars function
-

cp ../mw_AB.txt temp_mw_AB.txt

python mw_transcode3.py roman slp1 temp_mw_AB.txt ../temp_mw_ab_slp1.txt

==========================================================================
TODO 
19 matches for "<s>[^<]*\." in buffer: mw_01_iast_plain_AB.txt
most of these need to be corrected in csl-orig/v02/mw/mw.txt

In L-70273 change to GrA/~
==========================================================================

python mw_transcode3.py roman slp1 temp_mw_AB.txt ../temp_mw_ab_slp1.txt

This program exposes certain characters as 'unexpected'.
Changes made to temp_mw_AB.txt are in change_ab_1.txt
Request AB to make these changes in mw_AB.txt.

#---------------------------------------------------------------
now back to roman to check for invertibility
python mw_transcode3.py slp1 roman ../temp_mw_ab_slp1.txt temp_mw_AB_check.txt 

diff temp_mw_AB.txt temp_mw_AB_check.txt
# no difference.  The round trip worked!

#---------------------------------------------------------------
AB changes to mw_AB.txt incorporate some, but not all, of the changes
in change_01.txt.
Redo the transcoding.
cp ../mw_AB.txt temp_mw_AB.txt
python mw_transcode3.py roman slp1 temp_mw_AB.txt ../temp_mw_ab_slp1.txt
# 5 'unexpected character' warnings remain (as expected)
 #37436, #116756, #118589, #369500, #425594

python mw_transcode3.py slp1 roman ../temp_mw_ab_slp1.txt temp_mw_AB_check.txt 
diff temp_mw_AB.txt temp_mw_AB_check.txt
# no difference.  The round trip worked!

---------------------------------------------------------------
# These 5 cases can be changed to '<s1>X</s1>'
python ../../pywork/updateByLine.py ../mw_AB.txt change_ab_1a.txt temp_mw_AB.txt

python mw_transcode3.py slp1 roman ../temp_mw_ab_slp1.txt temp_mw_AB_check.txt 
diff temp_mw_AB.txt temp_mw_AB_check.txt
# no difference.  The round trip worked!
