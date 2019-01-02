sub addperson()
{
	my %h_people = readpeopledatabase();        #ReadData.pm

	my $i_unixID = mktime (localtime());
        
        print ("Name: ");
        my $s_name = <STDIN>;
        chomp $s_name;
        
        print "Surname:";
        my $s_surname = <STDIN>;
        chomp $s_surname;

        print "Birthday(DD/MM/YY): ";  
        my $s_birthday = <STDIN>;
        chomp $s_birthday;

        $h_people {"$i_unixID"}= 
        {
            name => $s_name,
            surname => $s_surname,
            birthday => $s_birthday
        };
	
	my @l_people = %h_people;
	writepeopledatabase(@l_people);     #WriteData.pm
}
1;

