#!/usr/bin/perl -w
#思路：取出序列，三个为一组，翻译（哈希）
#建议：在书写代码之前加上提醒，增强代码的可读性
use strict;
#代码运行提示
if(scalar @ARGV==0){
	die"this is a program to translate nucleic acid  to amino acid
perl $0 nucleic acid file amino acid file\n ";
}
#提取出三个碱基为一组
open IN,"$ARGV[0]" or die;
$/=">";<IN>;
while(<IN>){
	chomp;
	next if (/^\s+$/);
	my ($id,$dna)=(split /\n/,$_,2)[0,1];
	$dna=~s /\n//g;
	#这里用字符串连接，不用数组的原因数组之间会有空格
	my $protein="";
	for(my $i=0;$i<length($dna);$i+=3){   #这里要注意序列的长度阈值
		$protein.=&translate(substr($dna,$i,3));
	}
	print">$id\n";
	print"$protein\n";
}
close IN;
# $/="\n";

#写translate函数
sub translate{
	my $codon=shift @_;
	$codon=uc $codon;
	#密码子表
	my %genetic_code = (

            'TCA' => 'S',    # Serine
            'TCC' => 'S',    # Serine
            'TCG' => 'S',    # Serine
            'TCT' => 'S',    # Serine
            'TTC' => 'F',    # Phenylalanine
            'TTT' => 'F',    # Phenylalanine
            'TTA' => 'L',    # Leucine
            'TTG' => 'L',    # Leucine
            'TAC' => 'Y',    # Tyrosine
            'TAT' => 'Y',    # Tyrosine
            'TAA' => '',    # Stop
            'TAG' => '',    # Stop
            'TGC' => 'C',    # Cysteine
            'TGT' => 'C',    # Cysteine
            'TGA' => '',    # Stop
            'TGG' => 'W',    # Tryptophan
            'CTA' => 'L',    # Leucine
            'CTC' => 'L',    # Leucine
            'CTG' => 'L',    # Leucine
            'CTT' => 'L',    # Leucine
            'CCA' => 'P',    # Proline
            'CCC' => 'P',    # Proline
            'CCG' => 'P',    # Proline
            'CCT' => 'P',    # Proline
            'CAC' => 'H',    # Histidine
            'CAT' => 'H',    # Histidine
            'CAA' => 'Q',    # Glutamine
            'CAG' => 'Q',    # Glutamine
            'CGA' => 'R',    # Arginine
            'CGC' => 'R',    # Arginine
            'CGG' => 'R',    # Arginine
            'CGT' => 'R',    # Arginine
            'ATA' => 'I',    # Isoleucine
            'ATC' => 'I',    # Isoleucine
            'ATT' => 'I',    # Isoleucine
            'ATG' => 'M',    # Methionine
            'ACA' => 'T',    # Threonine
            'ACC' => 'T',    # Threonine
            'ACG' => 'T',    # Threonine
            'ACT' => 'T',    # Threonine
            'AAC' => 'N',    # Asparagine
            'AAT' => 'N',    # Asparagine
            'AAA' => 'K',    # Lysine
            'AAG' => 'K',    # Lysine
            'AGC' => 'S',    # Serine
            'AGT' => 'S',    # Serine
            'AGA' => 'R',    # Arginine
            'AGG' => 'R',    # Arginine
            'GTA' => 'V',    # Valine
            'GTC' => 'V',    # Valine
            'GTG' => 'V',    # Valine
            'GTT' => 'V',    # Valine
            'GCA' => 'A',    # Alanine
            'GCC' => 'A',    # Alanine
            'GCG' => 'A',    # Alanine
            'GCT' => 'A',    # Alanine
            'GAC' => 'D',    # Aspartic Acid
            'GAT' => 'D',    # Aspartic Acid
            'GAA' => 'E',    # Glutamic Acid
            'GAG' => 'E',    # Glutamic Acid
            'GGA' => 'G',    # Glycine
            'GGC' => 'G',    # Glycine
            'GGG' => 'G',    # Glycine
            'GGT' => 'G',    # Glycine
            );
	if (exists $genetic_code{$codon}){
		return $genetic_code{$codon};
	}else{
		return "X";  #有很多NA
	}

}























