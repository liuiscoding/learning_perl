#!/usr/bin/perl -w
# use strict;
# print"你喜欢perl语言吗？\n";
# my $choice=<STDIN>;
# if ($choice=~/yes/i){   #忽略大小写字符i
	# print"你需要努力学习!\n";
# }else{
	# print"你需要更加努力学习!\n";
# }


# 提取符合条件的行
use strict;
open IN,"$ARGV[0]" or die;
while(<IN>){
	chomp;
	if(/GCG.*ACT/){ ## *号匹配前面的子表达式零次或多次。例如，zo*能匹配“z”以及“zoo”。*等价于{0,}。*.表示匹配任意字符0次到n次
		print"$_\n";
	}else{
		next;
	}
}
close IN;

.*表示贪婪匹配（匹配最长的）
.*?  表示懒惰匹配（匹配最短的）

有关单词的锚定:
/\bcat\b/ 严格匹配
/cat\b/  匹配.*cat
/\bcat/  匹配cat.*
/^pig.*cat$/  匹配以pig开头，cat结尾的字符












