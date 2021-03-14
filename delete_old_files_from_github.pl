open FILE, "files_to_be_deleted.txt" or die $!;
my @files = <FILE>;
close FILE;

for ($i = 0; $i <= $#files; $i++) {
	print("delete $files[$i]\n");
	system("rm $files[$i]");
}