require "rexml/document"
include REXML

palletier_file = File.new("data/fourth_container.xml")
palletier_doc  = Document.new(palletier_file)

# Get root elements.
root = palletier_doc.root

# This will output the text of the user introduction.
palletier_doc.elements.each("screen/container/color/color_hex") { |e| print e.text + " " }
