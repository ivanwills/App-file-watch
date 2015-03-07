use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'App::filewatch',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/App/filewatch.pm',
    requires          => {
        'perl'                 => 5.008,
        'AnyEvent'             => '7.07',
        'AnyEvent::Loop'       => '7.07',
        'File::TypeCategories' => '0.01',
        'Linux::Inotify2'      => '1.22',
        'Path::Class'          => '0.35',
        'Path::Tiny'           => '0.061',
        'version'              => '0.9902',
    },
    build_requires => {
        'Test::More'     => 0,
        'Test::Warnings' => 0,
    },
    add_to_cleanup     => [ 'App-filewatch-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/App-filewatch.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App::filewatch',
        },
    },
);

$builder->create_build_script();
