set pathMSBuild="C:\Program Files (x86)\MSBuild\14.0\Bin\msbuild.exe"
set pathSonarQubeExe="C:\jenkins\sonar-scanner-msbuild\SonarScanner.MSBuild.exe"
set solutionName=%1

%pathSonarQubeExe% begin /k:"com.company.test" /n:"ProjectTest" /v:"1.0.0" /d:sonar.host.url="http://67.207.94.110:9000" /d:sonar.login="admin" /d:sonar.password="admin" 
%pathMSBuild% %solutionName% /t:rebuild /v:q /nologo
%pathSonarQubeExe% end /d:sonar.login="admin" /d:sonar.password="admin"

