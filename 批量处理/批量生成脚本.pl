#!/usr/bin/perl -w
#生物信息基本操作：序列的质量控制，拼接，对比，基因预测等
#批量生成脚本减少了人为的重复书写（时间长并且可能出现错误）
#使用SOAPdenovo-63mer软件进行拼接
# use strict;
# my $soapdenovo="SOAPdenovo-63mer";
# my $lib=$ARGV[0];
# for(my $i=13;$i<=63;$i+=2){
	# my $kmer="kmer"."$i";
	# print"$soapdenovo all -s $lib -K $i -u -d 1 -o $kmer >$kmer.log\n";
# }


#批量生成blast脚本
#切割文件分成50份，再将每份文件和数据库进行序列比对（大大提高blast比对效率）
use strict;
my @line=();
my $part=50;
my $num=`grep ">" $ARGV[0]|wc -l`;  
my $j=int($num/$part);
#转义字符（linux和perl语言联合使用）
# print"$num\n";


#将序列存放在数组之中
open IN,"$ARGV[1]";
$/=">";<IN>;
while(<IN>){
	chomp;
	my($id,$seq)=(split/\n/,$_,2)[0,1];
	$seq=~s/\n//g;
	my $out=">$id\n"."$seq";
	push @line,$out;
}
# print"@line\n";
close IN;
# `mkdir split`;  #创建split文件夹
open IN,">blast.sh";
for(my $i=1;$i<=$part;$i++){
	print IN"blastall -$i .....\n";
	open OU,">split/split_$i.fa";
	for(0..$j-1){
		my $output=shift @line;  #弹出数组
		print OU"$output\n"   #大循环决定生成多少个文件，小循环决定了每个文件生成多少条序列（例如房子一样）
}
}
close IN;
close OU;


















