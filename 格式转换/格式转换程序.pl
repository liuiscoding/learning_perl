#fastq转换为fasta格式，后者可以blast比对
#BLAST全称Basic Local Alignment Search Tool，即“基于局部比对算法的搜索工具”，是生物信息学常用的工具软件，可将输入的核酸或蛋白质序列与数据库中的已知序列进行比对，获得序列相似度等信息，从而判断序列的来源或进化关系
#!/usr/bin/perl -w
#q文件四行，a文件两行
open IN,"$ARGV[0]" or die;
#打开压缩文件
# open IN,"zcat $ARGV[0] |";  #记得加管道

open OU,">$ARGV[1]";   #不要忘记>输出符号！！
while($id=<IN>){
	chomp($id);
	chomp($seq=<IN>);
	<IN>;
	<IN>;
	$id=~tr /@/>/;
	print OU "$id\n";
	print OU "$seq\n";
}
close IN;
close OU;
