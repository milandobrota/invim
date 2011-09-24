require "invim/version"

module Invim
  def invim; system 'invim'; end
end

Object.send(:include, Invim)
