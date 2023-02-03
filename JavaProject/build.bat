rmdir /S/Q "%CATALINA_HOME%\webapps\CRMbase"
del "%CATALINA_HOME%\webapps\CRMbase.war"
del C:\lplr\CRMbase\JavaProject\target\CRMbase.war
del C:\lplr\CRMbase\JavaProject\zeidontrace.log

rem //copy c:\lplr\CRMbase\bin\*.x*  C:\lplr\CRMbase\JavaProject\src\main\resources\CRMbasebin
call mvn clean install -DskipTests=true

copy C:\lplr\CRMbase\JavaProject\target\CRMbase.war "%CATALINA_HOME%\webapps"
"%CATALINA_HOME%\bin\startup.bat"