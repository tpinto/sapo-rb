# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/sapo.rb'

Hoe.new('sapo', SAPO::VERSION) do |p|
  p.rubyforge_name = 'sapo'
  p.author = 'Tiago Pinto'
  p.email = 'tpinto@webreakstuff.com'
  p.summary = 'Ruby interface to SAPO APIs'
  p.description = p.paragraphs_of('README.txt', 2..5).join("\n\n")
  p.url = p.paragraphs_of('README.txt', 0).first.split(/\n/)[1..-1]
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
end

# vim: syntax=Ruby
