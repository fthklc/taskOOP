use lib "/home/fatihkilic/workspace/taskOOP/taskOOP_v2/";
use AddData;
use DeleteData;
use PrintData;
use ReadData;
use SearchData;
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
		print "\n";

		last if ($i_entry eq "");

		do { showpeopledatabase(); } if ($i_entry == 1);		#ShowData.pm

		do { addperson(); } if ($i_entry == 2);					#AddData.pm

		do { searchpeople(); } if ($i_entry == 3);				#SearchData.pm
 
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
					{ updatepersondata(); }			#UpdateData.pm
				else 
					{
					if ($s_entry eq "delete")
        					{ deletepersondata(); }		#DeleteData.pm
					}
			}
		} if ($i_entry == 4);


		do { writepeopletoJSONfile(); } if ($i_entry == 5);		#WriteToJSON.pm

	}
}


sub RunAnimalDataController
{
	while (1)
		{
			print "Menu\n";
			print "1 - Show Animals!\n";
			print "2 - Add an animal!\n";
			print "3 - Search for an animal!\n";
			print "4 - Delete or Update an animal's data!\n";
			print "5 - Save animal data as a JSON file!\n";
			print "Type the number OR Press Enter to QUIT: ";
			my $i_entry = <STDIN>;
			chomp $i_entry;
			print "\n";
			
			last if ($i_entry eq "");

			do { showanimaldatabase(); } if ($i_entry == 1);

			
			do { addanimal(); } if ($i_entry == 2);


			do { searchanimal(); } if ($i_entry == 3);
	
			do 
			{ 
				print "- Do you want to delete an animal from database?\n";
				print "- Do you want to update an animal's data?\n";
				print "Type 'delete' or 'update' or Press Enter to QUIT: ";
				my $s_entry = <STDIN>;
				chomp $s_entry; 
				if ($s_entry eq "")
						{die;}
				else 
				{
					if ($s_entry eq "update")
						{ updateanimaldata(); }
					else 
						{
						if ($s_entry eq "delete")
								{ deleteanimaldata(); }
						}
				}
			} if ($i_entry == 4);


			do { writeanimaltoJSONfile(); } if ($i_entry == 5);

		}
}
1;

