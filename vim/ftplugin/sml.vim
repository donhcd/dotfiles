nmap \ll :!rlwrap sml -Cprint.string-depth=9001 -Cprint.length=9001 -Cprint.depth=9001 -Ctdp.instrument=trace -m '$smlnj-tdp/back-trace.cm' %<CR>
nmap \m :!rlwrap sml -Cprint.string-depth=9001 -Cprint.length=9001 -Cprint.depth=9001 -Ctdp.instrument=trace -m '$smlnj-tdp/back-trace.cm' -m 'sources.cm'<CR>
" CM.make "$smlnj-tdp/back-trace.cm";SMLofNJ.Internals.TDP.mode := true;CM.make "sources.cm";
" sml -Cprint.depth=9001
