require "spec_helper"
require 'serverspec'
require 'pod/rspec'

RSpec.describe 'Serverspec::Type#StaticPod' do
  context 'constructor' do
    it 'instantiates the class with the correct parameters' do
      expect(Serverspec::Type::StaticPod).to receive(:new).with('kube-system','api-server')
      static_pod('kube-system','api-server')
    end
  end
end
