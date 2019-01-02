sub showdatabase()
{        
        my %h_people = readdatabase();
	
	my @l_people = %h_people;

	printhashdata(@l_people);
}

1;

