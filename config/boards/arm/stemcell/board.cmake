# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Mega Mind

board_runner_args(pyocd "--target=stm32f411ce")
board_runner_args(dfu-util "--pid=0483:df11" "--alt=0" "--dfuse")
board_runner_args(jlink "--device=STM32F411CE" "--speed=4000")

include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/dfu-util.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
