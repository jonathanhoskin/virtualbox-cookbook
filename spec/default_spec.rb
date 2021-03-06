require 'spec_helper'

describe 'virtualbox::default' do
  context 'on Centos 6.8 x86_64 with virtualbox 5.1' do
    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'centos', version: 6.8, step_into: ['yum_repository']) do |node|
        node.automatic['kernel']['machine'] = 'x86_64'
        node.default['virtualbox']['version'] = 5.1
      end.converge(described_recipe)
    end

    # Regression test against stupid typos
    it 'creates repository with download.virtualbox.org/virtualbox/rpm/rhel/$releasever/$basearch' do
      expect(chef_run).to create_yum_repository('oracle-virtualbox').with(url: 'http://download.virtualbox.org/virtualbox/rpm/rhel/$releasever/$basearch')
    end

  end
end
