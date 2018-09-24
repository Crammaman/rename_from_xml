***Rename From XML***

A simple script that starts a file listener as a daemon that watches `receiving_folder` for
new xml files. It will move new files to `renamed_folder`, in moving the file is named according to
the content of the tag found at `new_name_xpath` within the received xml.

**Set up**

Ensure ruby 2.2 is [installed](https://www.ruby-lang.org/en/documentation/installation/)

Run `bundle install`

Set the contents of `config.yaml` according to your set up then copy it to `/etc/rename_from_xml.yaml`
