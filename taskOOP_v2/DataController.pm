use lib "/home/fatihkilic/workspace/taskOOP/taskOOP_v2/";
use AddData;
use DeleteData;
use PrintData;
use ReadData;
use SearchPerson;
use ShowData;
use UpdateData;
use WriteData;
use WriteToJSON;
no lib "/home/fatihkilic/workspace/taskOOP/taskOOP_v2/"; 

sub RunPeopleDataController
{
	while (1)
	{
		print "Menu\n";
		print "1 - Show People!\n";
		print "2 - Add a person!\n";
		print "3 - Search for a person, use last name!\n";
		print "4 - Delete or Update a person's data!\n";
		print "5 - Save data as a JSON file!\n";
		print "Type the number OR Press Enter to QUIT: ";
		my $i_entry = <STDIN>;
		chomp $i_entry;
		
		last if ($i_entry eq "");

		do { showdatabase(); } if ($i_entry == 1);

		do { addperson(); } if ($i_entry == 2);

		do { searchpeople(); } if ($i_entry == 3);
 
		do 
		{ 
			print "- Do you want to delete a person's data from database?\n";
			print "- Do you want to update a person's data?\n";
			print "Type 'delete' or 'update' or Press Enter to QUIT: ";
			my $s_entry = <STDIN>;
			chomp $s_entry; 
			if ($s_entry eq "")
       				{die;}
			else 
			{
				if ($s_entry eq "update")
					{ updatepersondata(); }
				else 
					{
					if ($s_entry eq "delete")
        					{ deletepersondata(); }
					}
			}
		} if ($i_entry == 4);


		do { writetoJSONfile(); } if ($i_entry == 5);

	}
}
1;

