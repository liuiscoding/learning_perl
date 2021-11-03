#!/usr/bin/perl -w
# use strict;  #程序里用了use strict之后，就必须用our或者my声明变量

#构建数组
# @age=(10,20,30);
# @name=("小王","小李","小刘");
# print"$age[1]\n";
# print"$name[0]\n";
# print"@age\n";

#构建列表
# @list=(1,2,3,4,5,6);
# print"@list\n";
# print"$list[2]\n";

#范围操作符，每次加1
# @number=(1..100);
# print"@number\n";

#qw操作符，可以省略逗号和引号
# @string=qw(a b c d);
# print"@string\n";
# print"$string[2]\n";


#数组的赋值
# ($name,$age,$hobby)=("小王","20岁","打篮球");
# print"$name\n";
# print"$age\n";
# print"$hobby\n";

#qw操作符
# @week=qw/周一 周二 周三 .../;
# print"@week\n";

#字符串的分割和拼接
# $scalar="a:b:c:d";
# @array=split/:/,$scalar;
# print"@array\n";   #将标量转换为数组

# $new_scalar=join":",@array;
# print"$new_scalar\n";  #与上相反

# $new_scalar=join"\t",@array;
# print"$new_scalar\n";  #与上相反















