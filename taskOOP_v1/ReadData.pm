sub readdatabase()
{
	my %h_people;	
	my $s_filename = 'people.txt';
	open (my $filehandler, '<:encoding(UTF-8)', $s_filename);
		my @l_rawdata = <$filehandler>;
		foreach my $s_line (@l_rawdata)
		{
			chomp $s_line;			
			my @ArrayOfLine = split /\t\t\t/ , $s_line;
			$h_people {"$ArrayOfLine[0]"}= 
			{
				name => $ArrayOfLine[1],
				surname => $ArrayOfLine[2],
				birthday => $ArrayOfLine[3]
			};                
		}
	close $filehandler;
	return %h_people;
}
1;
