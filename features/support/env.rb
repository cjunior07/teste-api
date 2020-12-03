# frozen_string_literal: true

require 'bunny'
require 'allure-cucumber'
require 'httparty'
require 'cpf_faker'
require 'cucumber'
require 'date'
require 'faker'
require 'json'
require 'ostruct'
require 'prawn'
require 'pry'
require 'sequel'
require 'rspec/expectations'

ENVIRONMENT = ENV['ENVIRONMENT']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

LOGGER = Logger.new($stdout, level: 'INFO', datetime_format: '%d-%m-%Y %H:%M:%S')

Dir[File.join(File.dirname(__FILE__), '../../report/*.pdf')].sort.each { |file| FileUtils.rm_f file }
FileUtils.mkdir_p 'report'
