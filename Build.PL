use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'pow',
    license             => 'perl',
    dist_author         => q{Ben Hengst<notbenh@cpan.org>},
    dist_abstract       => q{It's Boom! now with 100% more perl},
    dist_version_from   => 'bin/pow',
    meta_merge     => {
        resources => {
            bugtracker => 'https://github.com/notbenh/pow/issues',
            repository => 'https://github.com/notbenh/pow',
        },
    },
    build_requires => {
        'Test::More'      => 0,
    },
    requires => {
        'Clipboard'    => 0,
        'YAML'         => 0,
        'File::Fu'     => 0,
    },
    add_to_cleanup     => [ ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
