sub writedatabase()
{
	my %h_people = @_;
	my $s_filename = 'people.txt';
	        
	open ($filehandler, '>', $s_filename) or die "Could not open the file '$s_filename' $!";

	foreach my $s_key (keys %h_people)
	{
        	print $filehandler "$s_key\t\t\t";
                print $filehandler "$h_people{$s_key}{name}\t\t\t";
                print $filehandler "$h_people{$s_key}{surname}\t\t\t";
                print $filehandler "$h_people{$s_key}{birthday}\n";
        }
        close $filehandler; 
}
1;

