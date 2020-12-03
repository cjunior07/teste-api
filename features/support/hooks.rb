# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].sort.each { |file| require file }

World(SpecHelper)

Before do |scenario|
  @tags = scenario.source_tag_names
  EVIDENCE = Prawn::Document.new
  Prawn::Fonts::AFM.hide_m17n_warning = true
  EVIDENCE.text "#{scenario.feature.name}", styles: :bold, size: 20
  EVIDENCE.text "Cenário: #{scenario.name}", styles: :bold, size: 15
end

AfterStep do |result, test_step|
 LOGGER.debug("#{test_step} #{result}")
 EVIDENCE.text "\nSTEP: #{test_step} \n", styles: [:bold], size: 15
end

After do |scenario|
 LOGGER.debug(scenario.name)
 scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
 nome = "report/#{scenario_name.downcase} #{Time.new.strftime('%d-%m-%Y-%H%M%S')}"
 status = "\nTEST FINISHED WITH STATUS: "

 if scenario.failed?
  LOGGER.error(scenario.exception)
   EVIDENCE.text "#{status} FAILED \n#{scenario.exception}", color: [0, 100, 100, 0], styles: [:bold], size: 20
   EVIDENCE.render_file "#{nome} FAILED.pdf"
 else
   EVIDENCE.text "#{status} PASSED", color: [100, 0, 100, 0], styles: [:bold], size: 20
   EVIDENCE.render_file "#{nome} PASSED.pdf"
 end
end
