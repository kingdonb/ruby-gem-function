require 'ap'

Proc.new { |a| ap JSON.generate([a]) }
