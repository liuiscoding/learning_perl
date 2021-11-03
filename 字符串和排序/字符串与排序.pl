#!/usr/bin/perl -w
#index函数介绍
# use strict;
# my $seq="ATCACTACTATCTATCATCAGCGACGTAGGCTATCTA";
# my $where=index($seq,"CTA");  #最先出现的位置
# my $last_where=index($seq,"CAT");  #最后出现的位置
# print"$where\n";
# print"$last_where";

#substr函数（截取想要的序列）
# my $seq="ATCACTACTATCTATCATCAGCGACGTAGGCTATCTA";
# my $start=index($seq,"TCA");
# my $end=rindex($seq,"AGG");
# my $length=$end-$start+3;
# my $new_seq=substr($seq,$start,$length);
# print"$new_seq\n";


# substr函数替换（删除）的功能
# use strict;
# my $string="hello,world!";
# substr($string,0,5)="你好";
# substr($string,0,5)=~s/hello/nihao/g;
# substr($string,0,5)=~s/hello/\n/g;
# print"$string\n";



#其他常用的字符串函数
# length #统计长度
# chomp #去掉结尾的换行符
# chop #去掉结尾的字符串
# reverse #反转字符串
# lc #将字符串转换为小写
# uc #将字符串转换为大写
# lcfirst ucfirst #切换首字母大小写
# ord #计算字母的ascll值


#列表数字排序
# use strict;
# my @array=(1..20);
# print"@array\n";
# my @normal_sort=sort @array;
# my @teshu_sort=sort{$a<=>$b}@array;
# my @teshu_sort=reverse sort{$a<=>$b}@array;
# my @teshu_sort=sort{$b<=>$a}@array;
# print"@normal_sort\n";   #按照ASCLL码排序
# print"@teshu_sort\n";   #按照数字大小排序

#列表字母排序
# use strict;
# my @array=qw /A b C c d a s d/;
# my @first_sort=sort @array;  #大小写分开排序
# # my @second_sort=sort {$a cmp $b}@array;
# my @second_sort=sort {"\L$a" cmp "\L$b"}@array;  #大小写在一起排序
# print"@first_sort\n";
# print"@second_sort\n";  #注释小技巧 ctrl+shift+q  批量添加注释，ctrl+q单次注释

#哈希的排序
# use strict;
# my %score=(
# "tom"=>91,
# "jack"=>90,
# "alex"=>97,
# "siri"=>98,
# "cex"=>93,
# );

#按照键的首字母大小写来排序
# for(sort {$a cmp $b} keys %score){
	# print"$_\n";
# }

#按照值的大小来排序
# for(  reverse sort {$a <=> $b} values %score){
	# print"$_\n";
# }

# for(sort {$score{$a}<=>$score{$b}} keys %score){
	# print"'$_'=>$score{$_}\n";   #带键排序输出哈希
# }


# my @value=keys %score;
# print"@value\n";  #哈希是无序的
























































