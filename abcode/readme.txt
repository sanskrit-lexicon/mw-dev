Changes to various files to adapt xml and displays to mw_AB.txt
pywork/redo_hw.sh   # location of slp1 version of digitization
pywork/redo_xml.sh  # location of slp1 version of digitization
pywork/redo_postxml.sh
============================================================
pywork/mw.dtd  # added markup, elements and attributes

New elements
ar|cl|col|ety|gk|ln|nt|pcol|pe|pg|sch
<ar> </ar>
<cl> </cl>
<col> </col>
<ety> </ety>   changed to <cog> </cog>
<gk> </gk>
<ln> </ln>
<nt> </nt>
<pe> </pe>
<pg> </pg>
<sch> </sch>
<cse> used 87 times.   Purpose?
 
new div attributes
<div n="cf"/>
<div n="cl"/>
<div n="p"/>

Existing tags, perhaps used differently in mw-dev?
<lang> is used with no 'n' attribute 3615 times in mw_AB.
 e.g. <lang>Eng.</lang>
 Changed ATTLIST for 'lang n' from #REQUIRED to #IMPLIED
 
<pcol> </pcol>

add shortlong as child of s1. Only 1 instance at ararāka
mw-dev new children of ls: nt,pg,ln

pywork/xmlchk.sh
  Uses xmlvalidate.py to check xml validity.
  python xmlvalidate.py mw.xml mw.dtd
  Note: sometimes this programs 'hangs'
==========================================================
