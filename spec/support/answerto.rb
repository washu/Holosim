RSpec::Matchers.define :answer_to do |method|
  match do |obj|
    obj.respond_to?(method)
  end
end