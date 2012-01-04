class NotAUnitTestError < RuntimeError
  def initialize(klass)
    @klass = klass
  end
  
  def to_s
    "#{@klass}Spec is not a unit test"
  end
end