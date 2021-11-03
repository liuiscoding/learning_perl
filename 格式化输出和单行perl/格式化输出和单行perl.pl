#!/usr/bin/perl -w
# $data=16/3;
# print"$data\n";
# printf"%d\n","$data";
# printf"%.4f\n","$data";  #保留4位有效数字



#单行perl技巧
#直接打印helloworld
perl -e 'print"hello,world\n";'

#查看文件(和cat类似)
perl -ne '{chomp;print"$_\n";}' test.txt |less

#查看第15到第17行
perl -ne 'print if 15..17 ' test.txt

#替换(最好先备份文件)
perl -p -e 's/>/?????/g' test.txt|less


小结：其他的perl单行意义不大（和linux类似的正则表达式），熟练掌握perl需要勤加练习。





