# Custom Enumerable Project

This project consists in recreating Ruby's enumerable methods.

In order to improve the coding style, use of the 'each' method was prefered over the use of 
for loops, though (except for the custom 'each' method, of course).


## Project instructions from 'The Odin Project':

## Installation

First, clone this repository with

```bash
git clone git@github.com:TheOdinProject/custom_enumerable_project.git
```

Then, navigate into the folder through your command line with

```bash
cd custom_enumerable_project
```

and install the dependencies using the command

```bash
bundle install
```

## Getting Started

You will add new methods to the `Enumerable` module in `lib/my_enumerables.rb`. Before you implement a method, go to the corresponding spec file and watch the test fail by running

```bash
bundle exec rspec <spec_file>
```

You can find the associated spec file in the [methods section](#methods). Then, add the method to the enumerable module. Run the tests again using the same command until they pass.

### Example

As an example, before you start implementing the `my_each` method, run

```bash
bundle exec rspec spec/my_each_spec.rb
```

to see that the test fails as expected.

Once you implement it, like so:

```rb
# lib/my_enumerables.rb

class Array
  def my_each
    # Complete code
  end
end
```

run the command

```bash
bundle exec rspec spec/my_each_spec.rb
```

again to see if your code is correct or not.

### Methods

The following table has the methods you will need to implement along with their associated specs, as outlined in the project instructions.

| Method                          | Spec File                       | Notes                                                                 |
| ------------------------------- | ------------------------------- | --------------------------------------------------------------------- |
| `Array#my_each`                 | spec/my_each_spec.rb            | You will define my_each on the Array class in `lib/my_enumerables.rb` |
| `Enumerable#my_each_with_index` | spec/my_each_with_index_spec.rb |                                                                       |
| `Enumerable#my_select`          | spec/my_select_spec.rb          |                                                                       |
| `Enumerable#my_all?`            | spec/my_all_spec.rb             |                                                                       |
| `Enumerable#my_any?`            | spec/my_any_spec.rb             |                                                                       |
| `Enumerable#my_none?`           | spec/my_none_spec.rb            |                                                                       |
| `Enumerable#my_count`           | spec/my_count_spec.rb           |                                                                       |
| `Enumerable#my_map`             | spec/my_map_spec.rb             |                                                                       |
| `Enumerable#my_inject`          | spec/my_inject_spec.rb              
