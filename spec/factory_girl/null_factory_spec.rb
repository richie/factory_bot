require "spec_helper"

describe FactoryGirl::NullFactory do
  it { should delegate(:defined_traits).to(:definition) }
  it { should delegate(:callbacks).to(:definition) }
  it { should delegate(:attributes).to(:definition) }
  it { should delegate(:constructor).to(:definition) }

  its(:compile)          { should be_nil }
  its(:class_name)       { should be_nil }
  its(:default_strategy) { should == :create }
  its(:attributes)       { should be_an_instance_of(FactoryGirl::AttributeList) }
  its(:associations)     { should be_empty }
  its(:evaluator_class)  { should == FactoryGirl::Evaluator }
end
