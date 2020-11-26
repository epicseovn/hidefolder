cls
@ECHO OFF
title Folder BiMat
if EXIST "Kowgear Folder Locker" goto UNLOCK
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
ren BiMat "Kowgear Folder Locker"
attrib +h +s "Kowgear Folder Locker"
echo Folder locked
goto End
:UNLOCK
echo Mat khau Folder la gi?
set/p "pass=>"
if NOT %pass%== KOWGear@ goto FAIL
attrib -h -s "Kowgear Folder Locker"
ren "Kowgear Folder Locker" BiMat
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
