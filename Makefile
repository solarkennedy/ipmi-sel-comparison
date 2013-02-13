all: correlated.txt

ipmitool_sel_list.txt:
	ipmitool sel list > ipmitool_sel_list.txt
	ipmitool -V >> ipmitool_sel_list.txt

ipmi-sel.txt:
	ipmi-sel >ipmi-sel.txt 2>&1
	ipmi-sel --version >>ipmi-sel.txt

ipmiutil_sel.txt:
	ipmiutil sel > ipmiutil_sel.txt
	ipmiutil | head -n 1 >> ipmiutil_sel.txt

selview_save.txt:
	./selview /save kyle.sel && mv kyle.sel selview_save.txt
	./selview /h | grep Version >> selview_save.txt

correlated.txt: ipmi-sel.txt ipmitool_sel_list.txt ipmiutil_sel.txt selview_save.txt
	./correlate.sh  > correlated.txt

clean:
	rm -rf *.txt


