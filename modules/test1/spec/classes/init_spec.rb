require 'spec_helper'
describe 'test1' do
  context 'with default values for all parameters' do
    it { should contain_class('test1') }
  end
end
