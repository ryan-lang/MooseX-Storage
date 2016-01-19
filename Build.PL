use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'MooseX::Storage',
    license           => 'perl',
    dist_author       => 'Karen Etheridge',
    dist_version_from => 'lib/MooseX/Storage.pm',
    dist_abstract     => 'MooseX::Storage forked',
    build_requires    => {
        "Carp"                   => 0,
        "Data::Dumper"           => 0,
        "Digest"                 => 0,
        "Module::Runtime"        => 0,
        "Moose"                  => "0.99",
        "Moose::Meta::Attribute" => 0,
        "Moose::Role"            => 0,
        "Scalar::Util"           => 0,
        "String::RewritePrefix"  => 0,
        "namespace::autoclean"   => 0
    },
);

$builder->create_build_script();