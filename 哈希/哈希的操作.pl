#!/usr/bin/perl -w
use Data::Dumper;   #打印hash表
%hash=();    #不要忘记加等号
open IN,"$ARGV[0]";
while(<IN>){
	chomp;
	@line=split /\s+/,$_;
	$hash{$line[0]}=$line[1];
	#print"@line\n"; 
	# print"$line[1]\n";
}
close IN;
#print Dumper (\%hash);


#hash其他函数
# @key=keys %hash;#返回键
# print"@key\n";
# @value=values %hash;   #返回值
# print"@value";

#也可以采用循环遍历数组的方法打印出来键和值
# @temp=sort keys %hash;
# foreach (@temp){
	# print"$_:$hash{$_}\n";
	##print"$hash{$_}\n";
# }


#each函数
# while (($key,$value)=each %hash){
	# print"$key:$value\n";
# }


#if函数
# if (exists $hash{Jilin}){
	# print"$hash{Jilin}\n";    #注意大小写和符号
# }

#删除操作
# delete $hash{Jilin};

#交互，输入省，打印出市
chomp($province=<STDIN>);   #读入输入的内容，但是不包含换行符！！！
if (exists $hash{$province}){
	print"$hash{$province}";
}
else{
	next;
}
