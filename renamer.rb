require('listen')
require('yaml')
require('xml')
require('fileutils')

config = YAML.load_file('/etc/rename_from_xml.yaml')

listener = Listen.to(config["receiving_folder"]) do |modified, added, removed|

  if added.length > 0
    added.each do |file|
      parser = XML::Parser.file( file )
      doc = parser.parse
      reference = doc.find(config["new_name_xpath"])[0].content

      puts "Moving #{file} to #{config["renamed_folder"] + "/" + reference}"
      FileUtils.mv( file, config["renamed_folder"] + "/" + reference )

    end
  end

end
listener.start
sleep
