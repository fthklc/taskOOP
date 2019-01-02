#!/usr/bin/perl -w

use strict;
use warnings;

use JSON::MaybeXS ();


my %h_people;
my $s_name;
my $s_surname;
my $s_birthday;
my $i_ID = 0;
my $i_entry2;

while (1)
{
print "Menu!\n";
print "1 - Show People\n";
print "2 - Add a person\n";
print "3 - Search for a person, use last name!\n";

print "Type the number OR Press Enter for QUIT: ";
my $i_entry = <STDIN>;
chomp $i_entry;
last if ($i_entry eq "");

do 
{
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
}  
if ($i_entry == 2);

my $filename = 'people.txt';
my $existingtext = '';

open (my $filehandler, '<:encoding(UTF-8)', $filename);
    while (my $row = <$filehandler>)
    {
        chomp $row;
        $existingtext = $existingtext . "\n" . $row;
        chomp $existingtext;
    }
close $filehandler;


open ($filehandler, '>', $filename) or die "Could not open the file '$filename' $!";
    my $i_counter = 0;
    foreach $i_counter ($i_ID)
    {
        my $reversedtext = reverse($existingtext);
        chomp $reversedtext;
        $existingtext = reverse($reversedtext);

        print $filehandler $existingtext;
        print $filehandler "\n";
        print $filehandler "$h_people{$i_counter}{name};";
        print $filehandler "$h_people{$i_counter}{surname};";
        print $filehandler "$h_people{$i_counter}{birthday}\n";
        $i_counter++;
        
    }
close $filehandler;



open ( $filehandler, '<:encoding(UTF-8)', $filename);
    while (my $row = <$filehandler>)
    {
        chomp $row;
        print "$row\n";
    }
close $filehandler;
print "-------PRINT COMPLETED-------";

}
=begin comment

        print "do you want to continue? <Press Enter to stop>";
          $i_entry2= <STDIN>;
        last if ($i_entry2 eq "yes");

=cut


=begin comment
my $i_counter = 0;
foreach $i_counter ($i_ID)
{
    print "$h_people{$i_counter}{name}\n";
    print "$h_people{$i_counter}{surname}\n";
    print "$h_people{$i_counter}{birthday}\n";
    $i_counter++;
}
=cut