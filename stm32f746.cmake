INCLUDE(CMakeForceCompiler)

SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
CMAKE_FORCE_C_COMPILER(arm-none-eabi-gcc GNU)
CMAKE_FORCE_CXX_COMPILER(arm-none-eabi-g++ GNU)

SET(LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/STM32F746ZGTx_FLASH.ld)
#SET(COMMON_FLAGS "-mcpu=cortex-m7 -mthumb -mthumb-interwork -mfloat-abi=soft -ffunction-sections -fdata-sections -g -fno-common -fmessage-length=0")


SET(COMMON_FLAGS " -mcpu=cortex-m7 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants")
SET(CMAKE_CXX_FLAGS " -std=c++11")
SET(CMAKE_C_FLAGS " ${COMMON_FLAGS} -std=gnu99" )
SET(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,-gc-sections,-Map=binary.map -T ${LINKER_SCRIPT}")