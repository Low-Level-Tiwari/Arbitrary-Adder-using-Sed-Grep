
n2=$(yes 0|head -n $(expr length $2)|paste -s -d' '|sed 's/ //g')
echo $1|sed "s/^/$n2/"|grep -o '[0-9]'>1st
n1=$(yes 0|head -n $(expr length $1)|paste -s -d' '|sed 's/ //g')
echo $2|sed "s/^/$n1/"|grep -o '[0-9]'>2nd
paste 1st 2nd -d,>digits
cat digits |sed "s/,/\/ d' table|sed -n '/g "|sed "s/^/sed -e '1,\//g"|sed -n "s/$/p'/p">com
cat com|sed  "s/0\/.*'0p'/echo 0,0/">t;cp t com 
cat com|sed -r -e "s/\/([1-9]*)\/.*'0p'/echo \1,0/">t;cp t com 
cat com|sed -r -e "s/\/0\/.*'([1-9]*)p'/echo \1,0/">t;cp t com
cat com|sed  's/^.*ec/ec/'>t;cp t com
sh com>pass1
k1=$(cat pass1|cut -d, -f1|paste -s| sed 's/\t//g')
k2=$(cat pass1|cut -d, -f2|paste -s| sed 's/\t//g'|sed 's/^0//'|sed 's/$/0/')
echo $k1|grep -o '[0-9]'>1st
echo $k2|grep -o '[0-9]'>2nd
paste 1st 2nd -d,>digits
cat digits|sed "s/,/\/ d' table|sed -n '/g "|sed "s/^/sed -e '1,\//g"|sed -n "s/$/p'/p">com
cat com|sed  "s/0\/.*'0p'/echo 0,0/">t;cp t com 
cat com|sed -r -e "s/\/([1-9]*)\/.*'0p'/echo \1,0/">t;cp t com 
cat com|sed -r -e "s/\/0\/.*'([1-9]*)p'/echo \1,0/">t;cp t com
cat com|sed  's/^.*ec/ec/'>t;cp t com
sh com>pass2
echo -n "Sum: ";cat pass2|cut -d, -f1|paste -s| sed 's/\t//g'
echo -n "Carry: ";cat pass2|cut -d, -f2|paste -s| sed 's/\t//g'|sed 's/^0//'|sed 's/$/0/'
rm 1st 2nd digits t com pass1 pass2  
