#重复利用代码，简化代码量
#相当于python的函数
#!/usr/bin/perl -w
use strict;
# sub print_hello{
	# print"hello world\n";
# }
# &print_hello;
# &print_hello;



# sub sum{
	# my $num1=3;
	# my $num2=4;
	# my $sum=$num1+$num2;
	# print"$sum";
# }
# &sum;



#全局变量和局部变量
my $whole="全局变量";
{
	my $local="局部变量";
	print"$local\n";
	print"$whole\n";
}
# print"$local\n";  #这里的局部变量则无法打印出来
































































