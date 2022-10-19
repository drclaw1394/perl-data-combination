use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	NAME              => 'Data::Combination',
	VERSION_FROM      => 'lib/Data/Combination.pm', # finds $VERSION, requires EU::MM from perl >= 5.5
	PREREQ_PM         => {}, # e.g., Module::Name => 1.1
	ABSTRACT_FROM     => 'lib/Data/Combination.pm', # retrieve abstract from module
	AUTHOR            => 'Ruben Westerberg <drclaw@mac.com>',
	LICENSE           => 'mit',
	META_ADD => {
		"meta-spec" => {
			version => 2
		},
		resources=> {
			repository =>{
				type => "git",
				url => "git://github.com/drclaw1394/perl-data-combination.git",
				web => "http://github.com/drclaw1394/perl-data-combination",
			}
		}
	}

);
