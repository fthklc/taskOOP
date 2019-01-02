sub deletepersondata()
{
	my %h_people = readdatabase();
	#my @l_people = %h_people;
	
	print "Please enter the <<unix timestamp>> of the user who you want to delete from database!\n";
	print ("Unix timestamp: ");
	$s_unixID = <STDIN>;
	chomp $s_unixID ;

	foreach $s_key (keys %h_people)
	{
		if ($s_unixID eq $s_key)
                {
			delete ($h_people{$s_key});
			#print "The person data for $h_people{$s_key}{name} $h_people{$s_key}{surname} who was born in $h_people{$s_key}{birthday} was deleted! \n";
                }
	}
	
	@l_people = %h_people;
	printhashdata(@l_people);
	writedatabase(@l_people);
}
1;





