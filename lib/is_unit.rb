require 'not_a_unit_test_error'
require 'rspec/mocks'

module IsUnit
  def self.included(klass)
    klass.extend ClassMethods
  end
  
  module ClassMethods
    def is_unit(class_under_test, all_classes, &block)
      classes_to_stub = all_classes - [class_under_test]
      
      self.before(:each) do
        classes_to_stub.each do |klass|
          klass.stubs(:new).returns(object=klass.new)
          klass.public_instance_methods(false).each do |method_name|
            object.stubs(method_name).raises(NotAUnitTestError.new(class_under_test))
          end
        end
      end
      
      yield

      self.after(:each) do
        classes_to_stub.each do |klass|
          klass.stubs(:new).returns(klass.new)
        end
      end
    end
  end
end