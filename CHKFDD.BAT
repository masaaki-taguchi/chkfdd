ECHO OFF
CHKFDD -I -S
IF EXITCODE 0 GOTO exist
GOTO not_exist

:exist
ECHO 内蔵FDDは存在します
GOTO exit

:not_exist
ECHO 内蔵FDDは存在しません

:exit
