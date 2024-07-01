require 'rbconfig.rb'

#RbConfig::MAKEFILE_CONFIG["optflags"] = "-g3 -gdwarf-2"

require 'mkmf'

# $CFLAGS="-O0"
$CFLAGS << " -Wall -Wno-implicit-function-declaration -Wno-error"
$INCFLAGS = "-I../ext -I../ext/types #$INCFLAGS"

srcs = %w(
fft
fftsg
)
$objs = srcs.collect{|i| i+".o"}

create_makefile('fft')
