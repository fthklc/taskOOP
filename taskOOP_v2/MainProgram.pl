#!/usr/bin/perl -w

use strict;
use warnings;
use POSIX;

use lib "/home/fatihk/Desktop/taskOOP/taskOOP-master/taskOOP_v2"; #/home/fatihkilic/workspace/taskOOP/taskOOP_v2
use DataController;
no lib "/home/fatihk/Desktop/taskOOP/taskOOP-master/taskOOP_v2";

#RunPeopleDataController();

while (1)
	{
		print "Menu\n";
		print "1 - Work with PEOPLE Database!\n";
		print "2 - Work with ANIMAL Database!\n";
		print "Type the number OR Press Enter to QUIT: ";
		my $i_entry = <STDIN>;
		chomp $i_entry;
		print "\n";
        	
		last if ($i_entry eq "");

		do { RunPeopleDataController(); } if ($i_entry == 1);

		do { RunAnimalDataController(); } if ($i_entry == 2);

		# do { ..... ; } if ($i_entry == 3);
 
	}

