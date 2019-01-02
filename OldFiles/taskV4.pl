#!/usr/bin/perl -w

use strict;
use warnings;
use POSIX;


my %h_people;
my $s_name;
my $s_surname;
my $s_birthday;
my $i_ID;
my $i_entry2;
my $s_searchkey;
my $i_counter;

while (1)
{
    print "Menu!\n";
    print "1 - Show People\n";
    print "2 - Add a person\n";
    print "3 - Search for a person, use last name!\n";

    print "Type the number OR Press Enter to QUIT: ";
    my $i_entry = <STDIN>;
    chomp $i_entry;
    last if ($i_entry eq "");

    do 
    {
        $i_ID = mktime (localtime());
        
        print ("Name: ");
        $s_name = <STDIN>;
        chomp $s_name;
        
        print "Surname:";
        $s_surname = <STDIN>;
        chomp $s_surname;

        print "Birthday(DD/MM/YY): ";  
        $s_birthday = <STDIN>;
        chomp $s_birthday;

        $h_people {"$i_ID"}= 
        {
            name => $s_name,
            surname => $s_surname,
            birthday => $s_birthday
        };

        my $filename = 'people.txt';
        my $existingtext = '';

        ######### https://stackoverflow.com/questions/8963400/the-correct-way-to-read-a-data-file-into-an-array #######
        open (my $filehandler, '<:encoding(UTF-8)', $filename);
            while (my $row = <$filehandler>)
            {
                chomp $row;
                $existingtext = $existingtext . "\n" . $row;
                chomp $existingtext;
            }
        close $filehandler;


        open ($filehandler, '>', $filename) or die "Could not open the file '$filename' $!";
            $i_counter = 0;
            foreach $i_counter ($i_ID)
            {
                my $reversedtext = reverse($existingtext);
                chomp $reversedtext;
                $existingtext = reverse($reversedtext);

                print $filehandler $existingtext;
                print $filehandler "\n";
                
                print $filehandler "$i_ID\t\t\t";
                print $filehandler "$h_people{$i_counter}{name}\t\t\t";
                print $filehandler "$h_people{$i_counter}{surname}\t\t\t";
                print $filehandler "$h_people{$i_counter}{birthday}\n";
                $i_counter++;   
            }
        close $filehandler;
    }  
    if ($i_entry == 2);

    do 
    {
        my $filename = 'people.txt';
        print "\n\n";
        print "-" x 37, "PEOPLE IN DATABASE", "-" x 37, "\n" ;
        print "Unix timestamp\t\t\t", "Name\t\t\t", "Surname\t\t\t", "Birthday", "\n";
        print "-" x 92, "\n";
        #print "-" x 14,"\t\t\t","-" x 5,"\t\t\t", "-" x 7,"\t\t\t","-" x 8, "\n";

        open (my $filehandler, '<:encoding(UTF-8)', $filename);
            while (my $row = <$filehandler>)
            {
                chomp $row;
                print "$row\n";
            }
        close $filehandler;
        print "-------PRINT COMPLETED-------\n\n";
    }
    if ($i_entry == 1);

    do 
    {
        my $filename = 'people.txt';
        open (my $filehandler, '<:encoding(UTF-8)', $filename);
            my @row = <$filehandler>;

            foreach (@row)
            {
                #print "$_";
                my @array = split /\t\t\t/ , $_;
                #print "@array";
                #print "$array[0]\n";
                #print "$array[1]\n";
                #print "$array[2]\n";
                #print "$array[3]\n";
                
                $h_people {"$array[0]"}= 
                {
                    name => $array[1],
                    surname => $array[2],
                    birthday => $array[3]
                };                

            }
        close $filehandler;

        print "Please enter the Surname of the user to search in Database\n";
        print ("Surname: ");
        my $s_searchkey = <STDIN>;
        chomp $s_searchkey;

        print "-" x 37, "PEOPLE IN DATABASE", "-" x 37, "\n" ;
        print "Unix timestamp\t\t\t", "Name\t\t\t", "Surname\t\t\t", "Birthday", "\n";
        print "-" x 92, "\n";

        foreach my $s_key (keys %h_people)
        {
            if ($s_searchkey eq $h_people{$s_key}{surname})
            {
                #print "aradigin kisi bulundu!!!!\n";
                #print "aradigin kisinin adi $h_people{$s_key}{name} ve dogumgunu $h_people{$s_key}{birthday} \n";
                print "$s_key\t\t\t";
                print "$h_people{$s_key}{name}\t\t\t";
                print "$h_people{$s_key}{surname}\t\t\t";
                print "$h_people{$s_key}{birthday}";

            }
        }
        #foreach my $i_count ($i_counter)
        #{
        #    if ($s_searchkey eq $h_people{'1545640869'}{surname})

        #}
    }
    if ($i_entry == 3);

}

