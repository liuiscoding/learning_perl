#!/usr/bin/perl -w
#统计fasta文件中基因数目和基因的平均长度#
use strict;
open IN,"$ARGV[0]";  #命令行输入文件
while(<IN>){
	chomp;
	my ($filename,$path)=(split /=/,$_)[0,1];  #切割
	# print"$_\n";  #测试
	my ($gene_num,$avg_length)=&state($path);  #调用函数
	# print"$path\n";
	print"$filename\t$gene_num\t$avg_length\n";  #打印结果
}
close IN;
sub state{   #写函数的用法
	my $path=shift @_;   #重新声明变量
	my $genenum=0;
	my $genelength=0;
	open FA,"$path";
	while(<FA>){
		chomp;
		if(/^>/){
			$genenum+=1
		}else{
			my $len=length($_);  #当前行的长度（已经去除空格）
			$genelength+=$len;   #自增的加法运算
		}
	}
	my $aveage_length=$genelength/$genenum;
	return $genenum,$aveage_length;
	close FA;
}

#代码调试小技巧：perl -c 代码名称