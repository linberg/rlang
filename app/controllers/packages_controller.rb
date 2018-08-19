require 'rubygems'
require 'HTTParty'
require 'dcf'

class PackagesController < ApplicationController
  def index
    @package = Package.new.parse
    @packages = Package.all
  end
end
