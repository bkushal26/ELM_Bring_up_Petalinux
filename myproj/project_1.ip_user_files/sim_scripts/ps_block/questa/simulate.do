onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ps_block_opt

do {wave.do}

view wave
view structure
view signals

do {ps_block.udo}

run -all

quit -force
