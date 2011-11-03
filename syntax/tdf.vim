syn keyword tdfFunction ADD ADDNODE ADDPROP ADDSECOND AND ATOEA ATOEC ATOEO ATOEP ATOEPA ATOES CASEVAR CHECKMAC CHG400TLNO CREATEMAC ETOAA ETOAC ETOAO ETOAP ETOAPA ETOAS FILL FML GENPIND GETBRANCHCODE GETCARDROUTE GETMSGNAME GETQSDATE GETTIME GETVALUE IF ISO LEN LFT LONGTODATE LONGTOTIME MAT MFML MID MSGHEAD MULTI MVAR NOT NSP OR PINTRAN REC RESPCHG RIG RPL SAD SAD5 SAD9 SEP SEQ SPACE SUB TRIM VAR XMLDUMP XMLFREE XMLINIT

syn match tdfComment /&.*/
syn match tdfComment /\[.*\]/
syn match tdfVariable /\<[A-Za-z][A-Za-z0-9_]*\>/

syn match   tdfNumber		 "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   tdfNumber		 "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   tdfNumber		 "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   tdfNumber		 "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

highlight link tdfFunction PreProc
highlight link tdfComment Comment
highlight link tdfMacro Macro
highlight link tdfVariable Identifier
highlight link tdfNumber Number