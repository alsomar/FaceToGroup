require 'extensions' unless defined?(SketchupExtension)

module ASM_Extensions
  module FaceToGroup

    # Constants
    PLUGIN_NAME = 'Face To Group'.freeze
    PLUGIN_VERSION = '1.0.3'.freeze
    PLUGIN_DESCRIPTION = 'Creates a group for each selected face.'.freeze
    PLUGIN_AUTHOR = 'Alejandro Soriano'.freeze
    PLUGIN_ID = File.basename(__FILE__, '.rb')

    # Paths
    PATH_ROOT = File.dirname(__FILE__)
    FILE_DATA = File.join(PATH_ROOT, PLUGIN_ID, PLUGIN_ID+"_data.rb")
    FILE_MAIN = File.join(PATH_ROOT, PLUGIN_ID, PLUGIN_ID+"_main.rb")

    # Check if the current file has been loaded previously.
    unless file_loaded?(__FILE__)
      # Create a new instance of the SketchupExtension class
      ext_data = SketchupExtension.new(PLUGIN_NAME, FILE_MAIN)

      # Attach some nice info
      ext_data.description = PLUGIN_DESCRIPTION
      ext_data.version = PLUGIN_VERSION
      ext_data.copyright = "2022-#{Time.now.year}, #{PLUGIN_AUTHOR}"
      ext_data.creator = PLUGIN_AUTHOR

      # Register and load the extension on first install
      Sketchup.register_extension(ext_data, true)

      # Mark the current file as loaded
      file_loaded(__FILE__)
    end

  end # module FaceToGroup
end # module ASM_Extensions
