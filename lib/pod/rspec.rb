require "serverspec"
require "pod/rspec/version"

module Serverspec::Type
  class StaticPod < Serverspec::Type::Base
    def initialize(ns, podname)
      @ns = ns
      @podname = podname
    end
  end

  def static_pod(ns, podname)
    StaticPod.new(ns, podname)
  end
end
include Serverspec::Type
