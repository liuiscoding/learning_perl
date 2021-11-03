#!/usr/bin/perl -w
#根据一个小数据从大数据里面提取想要的信息
#思路：将小数据集存储在hash中，遍历大数据，如果在hash中，输出打印出来
#hash的典型应用，需要牢记掌握
use Data::Dumper;
if(scalar @ARGV==0){   #注意这里的@符号不是$符号，这里提示输出错误提示
	die "perl $0 idlist fasta \n";    #$0代表文件名称
}
# use strict;
open IN,"$ARGV[0]" or die;
# my %hash=();
%hash=();
while(<IN>){
	chomp;
	$hash{$_}=1;
}       
close IN;
# print Dumper(\%hash);
open FA,"$ARGV[1]";
open OU,">$ARGV[2]";
$/=">";<FA>;
while(<FA>){
	chomp;
	($id,$seq)=(split /\n/,$_,2)[0,1];
	$new_id=(split /\s/,$id,2)[0];
	if(exists $hash{$new_id}){
		print OU ">$new_id\n$seq";
		# print">$new_id\n$seq";
	}
	else{
		next;
	}
}
close FA;
close OU;








