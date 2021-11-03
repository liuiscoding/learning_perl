#综合运用之前学过的，数组，哈希，正则表达式，文本处理等，巩固一下所学内容
#目的是统计最长序列，最短序列，平均序列长度，基因组GC含量指标从而反应基因组的特征
#!/usr/bin/perl -w
use strict;
my $total_num=0;
my $total_len=0;
my $total_gc=0;
my $total_gap=0;
my @len_array=();
open IN,"$ARGV[0]"or die;
$/=">";<IN>;
print"len\tgc\tgap\tGC\n";
while(<IN>){
	chomp;
	# next if(/^\s+$/);
	my ($id,$seq)=(split/\n/,$_,2)[0,1];
	# print"$id\n$seq\n"
	$seq=~s/\n//g;
	my $len=length($seq);
	push @len_array,$len;
	$total_len+=$len;
	my $gc+=($seq=~s/G/G/g+$seq=~s/C/C/g);  
	my $GC=($gc/$len)*100;
	$total_gc+=$gc;
	my $gap+=($seq=~s/N/N/g);   #最好用+=,不然结果里面会有空白
	$total_gap+=$gap;
	print"$id\t$len\t$gc\t$gap\t";
	printf"%.2f\n","$GC";
	$total_num++;
}
my $average_len=$total_len/$total_num;
my $total_gc=($total_gc/$total_len)*100;
my @len_sort=sort{$a<=>$b}@len_array;  #按照数字大小来排序;
print"###total stat###\n";
print"total_num:$total_num\n";
print"total_len(bp):$total_len\n";
print"total_gc:$total_gc\n";
print"total_gap(bp):$total_gap\n";
printf"average_len(bp):%d\n","$average_len\n";  #保留整数
print"min_len(bp):$len_sort[0]\n";
print"max_len(bp):$len_sort[-1]\n";
printf"total_gc:%.2f\n","$total_gc\n";  #保留两位小数
close IN;









