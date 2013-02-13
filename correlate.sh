#!/bin/bash
MAXEVENTS=916

for EVENT in `seq 1 $MAXEVENTS`
do
	echo Event $EVENT:
	LEADING_ZEROS=`printf %04d $EVENT`
	HEX_ZEROS=`printf %04x $EVENT`
	HEX=`printf %x $EVENT`
	echo -n "freeipmi: " ; grep -w -e "^$EVENT" ipmi-sel.txt | cut -c 32-1000
	echo -n "ipmitool: " ; grep -w -e "^ *$HEX" ipmitool_sel_list.txt  | cut -c 32-1000
	echo -n "ipmiutil: " ; grep -w -e "^$HEX_ZEROS" ipmiutil_sel.txt  | cut -c 24-1000
	echo -n "selview : " ; grep -w -e "^$EVENT" selview_save.txt | cut -f 3-10
	echo
done

