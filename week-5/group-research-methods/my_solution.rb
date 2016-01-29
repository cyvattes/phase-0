# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
=begin
# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

=end
# Person 5
def my_array_splitting_method(source)
  integer_array = Array.new
  string_array = Array.new
  
  source.each do |piece|
    if piece.is_a?(Integer)
      integer_array << piece
    else
      string_array << piece
    end
  end
  master_array = integer_array,string_array
  return master_array
end



def my_hash_splitting_method(source, age)
  younger = Array.new
  older = Array.new
  
  source.each do |name, years|
    if years <= age
      younger << [name, years]
    else
      older << [name, years]
    end
  end
  master_array = younger,older
  return master_array
end

# Identify and describe the Ruby method(s) you implemented.
#   I used .is_a? to determine if the array item is an integer in the array splitting method. This simply checks if the item is an integer.
#   In addition, I used .each to iterate over every item in both groups (arrays and hashes). The .new method was used to create empty arrays in both methods.
#   Originally, I used .push to add items into the arrays, but changed these to << notation for ease of reading.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#