sub updatepersondata()
{
	my %h_people = readpeopledatabase();		#ReadData.pm

	print "Please enter the Unix timestamp of the user\n";
	print ("Unix timestamp: ");
	my $s_unixID = <STDIN>;
	chomp $s_unixID;

	foreach my $s_key (keys %h_people)
	{
		if ($s_unixID eq $s_key)
                {                    
			print "Please enter name:";
			$s_name = <STDIN>;
			chomp $s_name;

			print "Please enter surname:";
			$s_surname = <STDIN>;
			chomp $s_surname;

			print "Please enter birthday:";
			$s_birthday = <STDIN>;
			chomp $s_birthday;

			$h_people{$s_unixID}{name} = $s_name;
			$h_people{$s_unixID}{surname} = $s_surname;
			$h_people{$s_unixID}{birthday} = $s_birthday;            
			print "The person with $s_unixID unix timestamp, $s_name $s_surname data was updated!\n";
                }
	}
	
	my @l_people = %h_people;
	writepeopledatabase(@l_people);		#WriteData.pm
}
1;
