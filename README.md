Prerequisites
=============
* [ipmiutil](http://ipmiutil.sourceforge.net/)
* [freeipmi](http://www.gnu.org/software/freeipmi/)
* [ipmitool](http://ipmitool.sourceforge.net/)
* [SELVIEWER](http://www.intel.com/support/motherboards/server/sb/CS-031911.htm)

Commands To Run 
===============
<pre>
ipmitool sel list > ipmitool_sel_list.txt
ipmitool -V >> ipmitool_sel_list.txt

ipmi-sel >ipmi-sel.txt 2>&1
ipmi-sel  --version >>ipmi-sel.txt

ipmiutil sel > ipmiutil_sel.txt
ipmiutil | head -n 1 >> ipmiutil_sel.txt

./selview /save kyle.sel && mv kyle.sel selview_save.txt
./selview /h | grep Version >> selview_save.txt
</pre>
