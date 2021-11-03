#!/usr/bin/perl -w
# use strict;
# for(my $i=1;$i<10;$i++){
	# print"$i\n";
# }


# foreach(1..10){
	# print"$_\n";
# }


#循环控制
#last操作（终止循环）,next是跳过,last是终止，例如nextif(/^\s+$/)代表着跳过文件空白
# use strict;
# foreach(1..10){
	# if($_==5){
		# last;
	# }else{
		# print"$_\n";
	# }
# }



#高级循环控制（简化代码量）
#三目操作符
use strict;
print"请输入你的分数\n";
chomp(my $score=<STDIN>);
my $result=
($score==100)?"非常好":
($score<100&&$score>90)?"很好":
"你需要好好学习";
print"$result\n";












