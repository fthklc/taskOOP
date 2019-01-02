sub printpeoplehashdata
{        
<<<<<<< HEAD
    my %h_people = @_;
=======
        my %h_people = @_;
>>>>>>> f5831f63ea94e69381da1e6f2686fb3e3dd68961
	
	print "-" x 48, "PEOPLE IN DATABASE", "-" x 48, "\n" ;
	print "Unix timestamp\t\t\t", "Name\t\t\t", "Surname\t\t\t", "Birthday", "\n";
	print "-" x 114, "\n";
	
	foreach $s_key (keys %h_people)
	{
		print "$s_key\t\t\t";
		print "$h_people{$s_key}{name}\t\t\t";
		print "$h_people{$s_key}{surname}\t\t\t";
		print "$h_people{$s_key}{birthday}\n";
	}
	print "-------PRINT COMPLETED-------\n\n";
}

<<<<<<< HEAD
sub printanimalhashdata
{
    my %h_animal = @_;
	
	print "-" x 48, "ANIMAL IN DATABASE", "-" x 48, "\n" ;
	print "Unix timestamp\t\t\t", "Animal\t\t\t", "Group\t\t\t", "Name\t\t\t", "Age\t\t\t", "\n";
	print "-" x 114, "\n";
	
	foreach $s_key (keys %h_animal)
	{
		print "$s_key\t\t\t";
		print "$h_animal{$s_key}{animal}\t\t\t";
		print "$h_animal{$s_key}{group}\t\t\t";
		print "$h_animal{$s_key}{name}\t\t\t";
		print "$h_animal{$s_key}{age}\n";
	}
	print "-------PRINT COMPLETED-------\n\n";
}

=======
>>>>>>> f5831f63ea94e69381da1e6f2686fb3e3dd68961
1;

