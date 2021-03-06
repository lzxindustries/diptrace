cmake_minimum_required(VERSION 3.3)


cmake_policy(SET CMP0010 OLD)

file(TO_NATIVE_PATH "C:/Users/Lars larsen/lzxparts/scripts/autohotkey" AHK_SCRIPTS_DIR)
file(TO_NATIVE_PATH "C:/Users/Lars larsen/AppData/Roaming/kicad/scripting/plugins/InteractiveHtmlBom/generate_interactive_bom.py" IBOM_FILE_PATH)
file(TO_NATIVE_PATH "C:/Program Files/KiCad/bin/python.exe" KICAD_PROG_FILE_PATH)

set(CPACK_GENERATOR "ZIP")
set(CPACK_PACKAGE_FILE_NAME ${LZX_PROJECT_NAME}-${LZX_HARDWARE_VERSION}-fab)

set(LZX_FILE_PREFIX ${LZX_PROJECT_NAME}-${LZX_HARDWARE_VERSION}-)


file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}top-silk.gbr TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}top-mask.gbr TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}top-paste.gbr TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})


if(NUM_PCB_LAYERS GREATER 0)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-1.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 1)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-2.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 2)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-3.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 3)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-4.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 4)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-5.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 5)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-6.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 6)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-7.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 7)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-8.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 8)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-9.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 9)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-10.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 10)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-11.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()
if(NUM_PCB_LAYERS GREATER 11)
    file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}layer-12.gbr TMP_PATH)
    set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
endif()

file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}bottom-paste.gbr TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}bottom-mask.gbr TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}bottom-silk.gbr TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}board-outline.gbr TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}nc-drill.drl TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})

file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}xy-placement-data-top.csv TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}xy-placement-data-bottom.csv TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}bom.csv TMP_PATH)
set(GERBER_FILES ${TMP_PATH} ${GERBER_FILES})

file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}schematics.pdf TMP_PATH)
set(BOM_FILES ${TMP_PATH} ${BOM_FILES})
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/kicad/bom/${LZX_FILE_PREFIX}ibom.html TMP_PATH)
set(BOM_FILES ${TMP_PATH} ${BOM_FILES})

file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/${LZX_FILE_PREFIX}model3d.stp TMP_PATH)
set(3D_FILES ${TMP_PATH} ${3D_FILES})

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_COLOR_MAKEFILE   ON)

add_custom_target(GerberExport ALL 
    DEPENDS ${GERBER_FILES} 
)

add_custom_target(BomExport ALL 
    DEPENDS ${BOM_FILES} 
)
add_dependencies(BomExport GerberExport)

file(TO_NATIVE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/${LZX_PROJECT_NAME}.dip PCB_FILE_PATH)
file(TO_NATIVE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/${LZX_PROJECT_NAME}.dch SCH_FILE_PATH)
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR} BINARY_FILE_PATH)
file(TO_NATIVE_PATH ${CMAKE_CURRENT_SOURCE_DIR} SOURCE_FILE_PATH)
file(TO_NATIVE_PATH ${CMAKE_CURRENT_BINARY_DIR}/kicad/${LZX_PROJECT_NAME}-${LZX_HARDWARE_VERSION}.kicad_pcb KICAD_FILE_PATH)

add_custom_command(OUTPUT ${GERBER_FILES}
    COMMAND export-pcb.exe ${PCB_FILE_PATH} ${SCH_FILE_PATH} ${BINARY_FILE_PATH} ${LZX_PROJECT_NAME} ${LZX_HARDWARE_VERSION} ${SOURCE_FILE_PATH} ${NUM_PCB_LAYERS}
    WORKING_DIRECTORY ${AHK_SCRIPTS_DIR}
)
install(FILES ${GERBER_FILES} DESTINATION gerbers)

add_custom_command(OUTPUT ${BOM_FILES}
    COMMAND ${KICAD_PROG_FILE_PATH} ${IBOM_FILE_PATH} --no-browser --name-format ${LZX_FILE_PREFIX}ibom ${KICAD_FILE_PATH}
    WORKING_DIRECTORY ${CURRENT_BINARY_DIR}
)

install(FILES ${BOM_FILES} DESTINATION "${LZX_PROJECT_NAME}/bom")

set(CPACK_GENERATOR "ZIP")
include(CPack)
