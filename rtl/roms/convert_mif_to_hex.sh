MIF2HEX=mif2hex
for i in *.mif; do \
   echo "Processing" $i; \
   $MIF2HEX $i tmp.tmp; \
   cat tmp.tmp | cut -c 10-11 | head -n -1 > $i.hex; \
   rm tmp.tmp; \
done;

