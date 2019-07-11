for columns separated by ;
```
awk -F ';' '{a[NR]=$0}NR>0{for (i=1;i<=NF;i++) if(length($i)!=0) b[i]++}END{for (k=1;k<=NR;k++) { LINE="" ; split(a[k],c,";") ; for (j=1;j<=NF;j++) if(b[j]>0) LINE=LINE";"c[j] ; print substr(LINE,2,length(LINE)-1)}}' file
```
