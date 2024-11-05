# do not prompt y/n on 'quit'
define hook-quit
    set confirm off
end

set history filename ~/.gdb_history
set history save on

set disassembly-flavor intel
