require 'spec_helper'
require 'local_port'

describe LocalPort do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_empty
  end
end
