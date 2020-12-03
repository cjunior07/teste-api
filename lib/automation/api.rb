# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), 'api/**/*.rb')].sort.each { |file| require file }
Dir[File.join(File.dirname(__FILE__), '../../features/clients/**/*.rb')].sort.each { |file| require file }
Dir[File.join(File.dirname(__FILE__), '../../features/step_definitions/**/*.rb')].sort.each { |file| require file }
