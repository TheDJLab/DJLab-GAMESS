:: Developed by RP3
<!-- :: Batch section
@echo off
setlocal

@echo -------------------------------------------------------------------------

@echo   .g8"""bgd       db      `7MMM.     ,MMF'`7MM"""YMM   .M"""bgd  .M"""bgd
@echo .dP'     `M      ;MM:       MMMb    dPMM    MM    `7  ,MI    "Y ,MI    "Y
@echo dM'       `     ,V-MML      M YM   ,M MM    MM   d    `MMb.     `MMb.
@echo MM             ,M  `MM      M  Mb  M' MM    MMmmMM      `YMMNq.   `YMMNq.
@echo MM.    `7MMF'  A     MA     M  YM.P'  MM    MM   Y  , .     `MM .     `MM
@echo `Mb.     MM   A'     VML    M  `YM'   MM    MM     ,M Mb     dM Mb     dM
@echo   `"bmmm!GO .RED.    .SOX!.JML. `'  .JMML..JMMmmmmMMM P"Ybmmd"  P"Ybmmd"

@echo -------------------------------------------------------------------------
@echo.
@echo.
@echo.
@echo Welcome to the DJ Lab GAMESS Portal!
@echo.
@echo Use the GUI to login or exit to dive right into calculations!
@echo.

for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
goto :EOF
-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="yes" SYSMENU="yes" >

<TITLE>DJ Lab GAMESS Portal</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(2000,1000);

function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
<HEAD>    
  <BODY> 
<body background="C:\Users\Public\gamess-64\GUI\boston.png">
  <CENTER>
   <img src="C:\Users\Public\gamess-64\GUI\dog.png">
   <img src="C:\Users\Public\gamess-64\GUI\GUI-BACKGROUND.png">
   <img src="C:\Users\Public\gamess-64\GUI\seal.png">
   <CENTER>
    <FORM>
    <CENTER>
      <!DOCTYPE html>
<html>
<head>
<style>
.btn-group .button {
  background-color: #0000ff; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 40px;
  cursor: pointer;
  float: center;
}

.btn-group .button:hover {
  background-color: #3e8e41;
}
</style>
</head>
<body>


<div class="btn-group">
  <button class="button">Button1</button>
  <button class="button">Button2</button>
  <button class="button">Button3</button>
  <button class="button">Button4</button>
</div>


</body>
</html>
      

      <INPUT TYPE="Button" NAME="Button1" VALUE="Login">

      <SCRIPT FOR="Button1" EVENT="onClick" LANGUAGE="VBScript">
        Set WshShell = CreateObject("WScript.Shell")
        WshShell.Run "C:\Users\Public\gamess-64\GUI\login.lnk"
      </SCRIPT>

      <INPUT TYPE="Button" NAME="Button2" VALUE="Quick Run">

      <SCRIPT FOR="Button2" EVENT="onClick" LANGUAGE="VBScript">
        Set WshShell = CreateObject("WScript.Shell")
        WshShell.Run "C:\Users\Public\gamess-64\GUI\calculate.lnk"
      </SCRIPT>
   
        <INPUT TYPE="Button" NAME="Button3" VALUE="Directory">

      <SCRIPT FOR="Button3" EVENT="onClick" LANGUAGE="VBScript">
        Set WshShell = CreateObject("WScript.Shell")
        WshShell.Run "C:\Users\Public\gamess-64\GUI\directory.lnk"
      </SCRIPT>
        
        <INPUT TYPE="Button" NAME="Button4" VALUE="TheDJLab Website">

      <SCRIPT FOR="Button4" EVENT="onClick" LANGUAGE="VBScript">
        Set WshShell = CreateObject("WScript.Shell")
        WshShell.Run "C:\Users\Public\gamess-64\GUI\Links\Website.url"
      </SCRIPT>
    
    </FORM>
    </CENTER>
   </CENTER>
 
  </BODY>
        <Footer>
             <button onclick="closeHTA(1);">EXIT</button>
        <Footer>
</HTML>
