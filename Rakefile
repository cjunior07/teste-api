# frozen_string_literal: true

desc 'Rubocop'

task :rubocop do
  run_rubocop
end

def run_rubocop
  puts 'Analisando código-fonte com o Rubocop...'
  checklist = '-r rubocop/formatter/checkstyle_formatter'
  config = '-c .rubocop.yml'
  formatter = '-f RuboCop::Formatter::CheckstyleFormatter'
  output = '-o rubocop_report/checkstyle-result.xml -f html -o rubocop_report/index.html'
  system "rubocop #{checklist} #{config} #{formatter} #{output} -P"
  puts 'Análise concluída!'
end


