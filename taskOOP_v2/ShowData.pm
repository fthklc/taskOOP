sub showpeopledatabase()
{        
    my %h_people = readpeopledatabase();		#ReadData.pm
	
	my @l_people = %h_people;

	printpeoplehashdata(@l_people);				#PrintData.pm
}

1;

