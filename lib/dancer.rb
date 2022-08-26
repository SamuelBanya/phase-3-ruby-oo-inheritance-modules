require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance.rb'

# NOTE: Two General Points:
# 1. If you have a module whose methods you would like to be used in another class as instance methods, then you must include the module.
# 2. If you want a module's methods to be used in another class as class methods, you must extend the module.

class Dancer
  # NOTE: This allows us to include the 'Dance' module which contains methods that we want to use in this class:
  # This also use these methods as 'instance' methods aka '@' methods
  # NOTE: Previous version before refactoring:
  # include Dance

  # This allows us to extend the 'MetaDancing' module into the 'Dancer' class:
  # NOTE: Previous version before refactoring:
  # extend MetaDancing

  # NOTE: This is the version that includes the nested modules which contain our class and instance methods:
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
