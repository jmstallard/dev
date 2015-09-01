require 'chefspec'

describe 'apache2::default' do
  let :chef_run do
    ChefSpec::SoloRunner.new( platform: 'centos', version:  '6.4' )
  end

  describe 'Multisite apache' do
    it 'should Create new sites based on attributes.' do
      chef_run.converge(described_recipe)
      expect(chef_run.node['apache']['package']).to eq('httpd')
    end
  end
end
