#!/usr/bin/perl -w
# $_="hello,world";
# if(/hello/){  ##if(/h.llo/)一样可以匹配，两个点号无法匹配，而且点号无法代替换行符
	# print"匹配成功\n";
# }else{
	# print"没有匹配上\n";
# } 


$_="google";
if(/g.*e/){  #*号匹配前面的子表达式零次或多次。例如，zo*能匹配“z”以及“zoo”。*等价于{0,}。
	print"成功";
}else{
	print"fail";
}


# $_="gooooooogle";
# if(/goo+gle/){   # +号表示至少匹配一次以上
	# print"成功";
# }else{
	# print"fail";
# }


# $_="gooooooogle";
# if(/goo?gle/){   # ?号表示匹配一次或者0次
	# print"成功";
# }else{
	# print"fail";
# }


# $_="gooooooogle";
# if(/goo{1,100}gle/){   # {}号表示自定义匹配
	# print"成功";
# }else{
	# print"fail";
# }


# $_="googlegooglegooglegoogle";
# if(/(google){4}/){   # {}号表示自定义匹配，在单词外面则匹配整个单词的个数
	# print"成功";
# }else{
	# print"fail";
# }


#小记：➕号表示1到无穷大，星号表示0到无穷大，问号表示1或者0

#字符集
#择1匹配
# $_="at";
# /(b|c|d|f|g|h|j|k)at/
# /[dbadbasd]at/
# [a-z]  小写字母
# [A-Z]  大写字母
# [0-9]  数字，简写eq
# \d+    代表所有数字
# \w     单词字符
# \s+    空白
# ^      除了。。。以外















