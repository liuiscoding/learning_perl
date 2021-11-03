#!/usr/bin/perl -w

#pop函数
# @num=(1,2,3,4);
# print"pop @num\n";
# pop @num;
# print"@num\n";
# $value=pop @num;
# print"$value\n";

#push函数
# @name_list=("小王","小刘","小李");
# push @name_list,"小张";
# print"@name_list\n";

#shift&unshift
# @num_list=(1,2,3,4);
# $var=shift @num_list;
# print"$var\n";
# print"@num_list\n";

# unshift @num_list,"我是新加进来的字符串";
# print"@num_list\n";  #从头开始加元素

#sort排序
# @num=(3,4,2,7);
# @new_num=sort(@num);
# @reverse_num=reverse sort(@num);
# print"@new_num\n";
# print"@reverse_num\n";

#foreach循环
# @num_list=(1..15);
# foreach $num(@num_list){
	# print"$num\n";
# }

# foreach(@num_list){  
	# print"$_\n";  #默认变量$_
# }


# 有关$_的使用
# $_="hello,lhd";
# print;  #默认打印变量$_


#上下文
#同一个表达式出现在不同的地方具有不同的意义
# @people=("name","age","hobby");
# @people_another_way=qw(name age hobby);
# @sorted_another_way=sort(@people_another_way);
# $len=scalar(@people_another_way);  #数组的长度
# @sorted=sort(@people);
# @number=42+@people;
# print"@sorted\n";
# print"@number\n";
# print"@sorted_another_way\n";
# print"$len\n";

# $num_list="dawdawdawfd";
# $len=length($num_list);
# print"数组的长度是$len\n";  #字符串的长度
























