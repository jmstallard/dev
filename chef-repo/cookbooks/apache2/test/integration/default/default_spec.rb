require 'rspec'

describe 'apache2::default' do
  let :chef_run do
    ChefSpec::SoloRunner.new{platform}
  end
end

describe 'Multisite apache' do

  it 'should Create new sites based on attributes.' do

    true.should == false
  end
end