#过滤blast文件
#!/usr/bin/perl -w   #告诉计算机这是一个perl程序，w代表warning，程序报错时会提醒
open IN,"blast_m8.out";  #打开文件
while (<IN>) {
		chomp;  #去除读进来数据的换行符
		my @line=split /\s+/,$_; #将一行元素按照分成12列
		if ($line[2] >=50 && $line[3] >=100){
			print "$_\n";
		}
		else{
			next;
		}
}
close IN;