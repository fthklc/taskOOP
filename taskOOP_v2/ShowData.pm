sub showpeopledatabase()
{        
    my %h_people = readpeopledatabase();		#ReadData.pm
	
	my @l_people = %h_people;

	printpeoplehashdata(@l_people);				#PrintData.pm
}

<<<<<<< HEAD
sub showanimaldatabase()
{
	my %h_animal = readanimaldatabase();

	my @l_animal = %h_animal;

	printanimalhashdata(@l_animal);

}

=======
>>>>>>> f5831f63ea94e69381da1e6f2686fb3e3dd68961
1;

