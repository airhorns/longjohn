options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
  
  opts.on("-c", "--config [FILE]", "Use YAML config file") do |file|
    if File.exist? file
      options[:config_file] = file
      options = YAML.load_file(file).merge(options)
    else
      puts "Specified configuration file doesn't exist, exiting."
      Process.exit
    end
  end
end.parse!

p options
p ARGV