#!/usr/bin/perl -w
# open IN,"<gene.fnn";
# open OU,">protein.faa";   #文件写入，清空文件再写入
# open OU,">>protein.faa"   #文件追加，将内容添加至文件结尾，常见在linux操作中的日志文件的生成
# @ARGV #这个数组存储命令行参数
# perl file.pl gene.fnn protein.faa 1    #命令行运行此命令
# file.pl $0 #程序
# gene.fnn protein.faa  @ARGV[0]和@ARGV[1] #输入文件和输出文件
# 1  @ARGV[2] #命令行第三个参数

#测试
# open IN,"<$ARGV[0]",or die "不能打开此文件\n";
# print"\$0 is $0\n";
# print"\$ARGV[0] is $ARGV[0]\n";
# print"\$ARGV[1] is $ARGV[1]\n";
# print"\$ARGV[2] is $ARGV[2]\n";

#句柄操作
# open IN,"<$ARGV[0]";
# $first=<IN>;
# $second=<IN>;
# print "$first\n$second\n";

#while循环读取文件
open IN,"<$ARGV[0]";
open OU,">$ARGV[1]";
while(<IN>){
	chomp;
	print OU "$_\n";
}
close IN;
close OU;



