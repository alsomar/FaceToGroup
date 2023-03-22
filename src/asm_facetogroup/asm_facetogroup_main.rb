# Please see the loader file for information on the license and author info.
module ASM_Extensions
  module FaceToGroup
    require FILE_DATA
  end # module FaceToGroup

  if !defined?(@asm_tools_menu_loaded)
    @asm_tools_menu = UI.menu("Extensions").add_submenu("ASM Tools")
    @asm_tools_menu_loaded = true
  end

  if !defined?(@facetogroup_loaded)
    @asm_tools_menu.add_item(FaceToGroup::PLUGIN_NAME) { FaceToGroup.apply_facetogroup }
    @facetogroup_loaded = true
  end # module FaceToGroup
end # module ASM_Extensions
