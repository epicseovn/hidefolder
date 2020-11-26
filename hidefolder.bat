cls
@ECHO OFF
title Folder BiMat
if EXIST "EpicSEO Folder Locker" goto UNLOCK
if NOT EXIST BiMat goto MDLOCKER
:CONFIRM
echo Ban co muon khoa folder nay?(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren BiMat "EpicSEO Folder Locker"
attrib +h +s "EpicSEO Folder Locker"
echo Folder locked
goto End
:UNLOCK
echo Mat khau Folder la gi?
set/p "pass=>"
if NOT %pass%== EpicSEO@ goto FAIL
attrib -h -s "EpicSEO Folder Locker"
ren "EpicSEO Folder Locker" BiMat
echo Folder da duoc KHOA thanh cong
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md BiMat
echo BiMat created successfully
goto End
:End
