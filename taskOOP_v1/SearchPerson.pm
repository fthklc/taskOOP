sub searchpeople()
{
	my %h_people = readdatabase();
	my %h_search;
	my @l_search;

        print "Please enter the Surname of the user to search in Database\n";
        print ("Surname: ");
        $s_searchkey = <STDIN>;
        chomp $s_searchkey;

        foreach $s_key (keys %h_people)
        {
            if ($s_searchkey eq $h_people{$s_key}{surname})
            {

		$h_search{$s_key}{name} = $h_people{$s_key}{name};
		$h_search{$s_key}{surname} = $h_people{$s_key}{surname};
		$h_search{$s_key}{birthday} = $h_people{$s_key}{birthday};
            }
        }

	@l_search = %h_search;

	printhashdata(@l_search);	
}
1;

