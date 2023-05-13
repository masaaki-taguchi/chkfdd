ECHO OFF
CHKFDD -I -S
IF EXITCODE 0 GOTO exist
GOTO not_exist

:exist
ECHO ì‡ë†FDDÇÕë∂ç›ÇµÇ‹Ç∑
GOTO exit

:not_exist
ECHO ì‡ë†FDDÇÕë∂ç›ÇµÇ‹ÇπÇÒ

:exit
