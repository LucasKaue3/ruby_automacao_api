require 'httparty'
require 'pry'
require 'cucumber'
require 'faker'
require 'report_builder'
require_relative 'page_helpers.rb'
require_relative 'link_helpers.rb'
require_relative 'data.rb'

World(PagesObjects)
World(LinkObjects)
World(DataLoad)

$env = (ENV['ENV'] || 'qa')
