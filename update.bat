ECHO OFF
REM update.bat
REM Created 13 Oct 2020 08:15:46 AM AKDT
REM by Raymond E. Marcil <marcilr@gmail.com>
REM
REM Batch script to update git or subversion directories in present
REM working directory.
REM
REM Links
REM =====
REM How to recursively delete directory from command line in windows?
REM https://superuser.com/questions/179660/how-to-recursively-delete-directory-from-command-line-in-windows
REM 

REM =================================== GIT =======================================
REM =================================== GIT =======================================
REM =================================== GIT =======================================

REM Put git.exe in PATH
REM This make execution of git simpler.
REM i.e. No 'Program Files' space to alleviate.
REM
set "PATH=%PATH%;C:\Program Files\Git\bin"

REM Path to development subversion repositories
set PATHDEV="file:///C:/Users/remarcil/OneDrive - State of Alaska/svn-repos/dev"

REM svn binary directory
set SVNDIR=C:\Program Files\TortoiseSVN\bin
set SVN=svn.exe

REM svn command to use
set "SVNCMD=%SVNDIR%\%SVN%"

echo SVNDIR=%SVNDIR%
echo SVN=%SVN%

REM Build subversion command from path and binary
echo SVNCMD=%SVNCMD%

REM
REM Updated subversion repos in current working directory
REM Surroun script call with 'Program Files" embedded space with "" to
REM alleviate error:
REM
REM 'C:\Program' is not recognized as an internal or external command,
REM  operable program or batch file.'
REM

set SVNCMD="C:\Program Files\TortoiseSVN\bin\svn.exe"
echo SVNCMD=%SVNCMD%

REM
REM Test subversion command
REM This works:
REM
REM %SVNCMD% --help

REM
REM To recursiovely remove directory from command line:
REM   > rmdir <DIR> /s /q
REM

REM
REM ========================= Documents ========================
REM
REM %SVNCMD% co "file:///C:/Users/remarcil/OneDrive - State of Alaska/svn-repos/Documents/Documents/trunk" Documents


REM
REM ========================== LINKS ===========================
REM
REM IF EXIST links (
REM   ECHO "Updating links..."
REM   ECHO "Running: git pull https://github.com/marcilr/links"
REM   cd virtualbox
REM   git pull https://github.com/marcilr/links
REM   cd ..
REM ) ELSE (
REM   ECHO "Cloning links..."
REM   git clone "https://github.com/marcilr/links" links
REM )

REM Update current working directory
git pull
