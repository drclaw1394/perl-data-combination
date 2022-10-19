# NAME

Data::Combination - Hash and Array element combination generator

# SYNOPIS

```perl
    use Data::Combination;
    
    #Generate combination of array of arrays
    my $result=Data::Combination::combinations([[1,2,3], [qw(a b c)])
    
    # $result is an array ref of all combinations
    [
            [1,a],
            [1,b],
            [1,c],
            [2,a],
            [2,b],
            [2,c],
            [3,a],
            [3,b],
            [3,c],
    ]

    #Generate combination of array of arrays
    my $result=Data::Combination::combinations(key1=>[1,2,3], key2=>[qw(a b c)])

    # $result is a array of combination hashes
    [
            {key1=>1,key2=>a},
            {key1=>2,key2=>b},
            {key1=>3,key2=>c},
            {key1=>1,key2=>a},
            {key1=>2,key2=>b},
            {key1=>3,key2=>c},
            {key1=>1,key2=>a},
            {key1=>2,key2=>b},
            {key1=>3,key2=>c},
    ]
```

# DESCRIPTION

`Data::Combinations` is a module which generates the combinations (not
permutations) of a hash or array which has sub arrays as elements and other
scalars as elements.

# MOTIVATION

I wanted to make it easy to write network listener code, with difference
combinations of interface and familiy types. That made me look for suitable
combination code which I couldn't find. There are a few permutation modules,
however. This is the module I wrote to generate the combinations which woudld
then be filtered

# API

The module only has a single function currently, which isn't exported. To use
it it must be addressed by its full name

## combinations

```perl
    my $result=Data::Combinations::Combinations $ref;
```

Generates the combinations of 'fields' in `$ref`. A field is either a hash key
or array index which contains a reference to an array. If a field is another
scalar type, it is wrapped into an array

If `$ref` is a hash, the keys are preserved in the outputs, with the values
for each key used for combination. 

If `$ref` is an array, the indexes are preserved in the outputs, with the values
for each index used for combination. 

# SEE ALSO

There are a few permutation modules.

[Algorithm::Permute](https://metacpan.org/pod/Algorithm%3A%3APermute)
[Math::Permute::Lists](https://metacpan.org/pod/Math%3A%3APermute%3A%3ALists)

# AUTHOR

Ruben Westerberg, <drclaw@mac.com>

# REPOSITORTY and BUGS

Please report any bugs via git hub: [http://github.com/drclaw1394/perl-data-combination](http://github.com/drclaw1394/perl-data-combination)

# COPYRIGHT AND LICENSE

Copyright (C) 2022 by Ruben Westerberg

This library is free software; you can redistribute it
and/or modify it under the same terms as Perl or the MIT
license.

# DISCLAIMER OF WARRANTIES

THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE.
