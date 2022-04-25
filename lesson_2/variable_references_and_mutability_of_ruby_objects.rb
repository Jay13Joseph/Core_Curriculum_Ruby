    Mutable objects
1. Most objects are mutable, unlike numbers, booleans, and others, which reassign

  class Dog
    def name=(new_name)
      @name = new_name
    end
  end
  dog = Dog.new
  dog.name = "Fido"    # calls setter method for `name` attribute
