require 'rubygems'
require 'HTTParty'
require 'dcf'

class Package < ApplicationRecord
  include HTTParty
  base_uri 'http://cran.r-project.org'

  def parse
    response = HTTParty.get('http://cran.r-project.org/src/contrib/PACKAGES')
    parsed_response = Dcf.parse response.body
    add_packages(parsed_response)
  end

  def add_packages(parsed_response)
    parsed_response[0..49].each do |res|
      @package = Package.new
      @package.update_attributes(name: res["Package"], version: res["Version"])
      @package.save!
    end
  end
end
