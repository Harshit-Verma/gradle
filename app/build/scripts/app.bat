@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem
@rem SPDX-License-Identifier: Apache-2.0
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\app.jar;%APP_HOME%\lib\camel-core-4.0.0.jar;%APP_HOME%\lib\camel-health-4.0.0.jar;%APP_HOME%\lib\camel-xml-io-4.0.0.jar;%APP_HOME%\lib\camel-xml-jaxb-4.0.0.jar;%APP_HOME%\lib\camel-yaml-io-4.0.0.jar;%APP_HOME%\lib\camel-core-engine-4.0.0.jar;%APP_HOME%\lib\camel-core-languages-4.0.0.jar;%APP_HOME%\lib\camel-bean-4.0.0.jar;%APP_HOME%\lib\camel-browse-4.0.0.jar;%APP_HOME%\lib\camel-file-4.0.0.jar;%APP_HOME%\lib\camel-cluster-4.0.0.jar;%APP_HOME%\lib\camel-controlbus-4.0.0.jar;%APP_HOME%\lib\camel-dataformat-4.0.0.jar;%APP_HOME%\lib\camel-dataset-4.0.0.jar;%APP_HOME%\lib\camel-direct-4.0.0.jar;%APP_HOME%\lib\camel-language-4.0.0.jar;%APP_HOME%\lib\camel-log-4.0.0.jar;%APP_HOME%\lib\camel-mock-4.0.0.jar;%APP_HOME%\lib\camel-ref-4.0.0.jar;%APP_HOME%\lib\camel-rest-4.0.0.jar;%APP_HOME%\lib\camel-saga-4.0.0.jar;%APP_HOME%\lib\camel-scheduler-4.0.0.jar;%APP_HOME%\lib\camel-stub-4.0.0.jar;%APP_HOME%\lib\camel-seda-4.0.0.jar;%APP_HOME%\lib\camel-timer-4.0.0.jar;%APP_HOME%\lib\camel-validator-4.0.0.jar;%APP_HOME%\lib\camel-xpath-4.0.0.jar;%APP_HOME%\lib\camel-xslt-4.0.0.jar;%APP_HOME%\lib\camel-xml-jaxp-4.0.0.jar;%APP_HOME%\lib\camel-core-reifier-4.0.0.jar;%APP_HOME%\lib\camel-core-model-4.0.0.jar;%APP_HOME%\lib\camel-base-engine-4.0.0.jar;%APP_HOME%\lib\camel-base-4.0.0.jar;%APP_HOME%\lib\camel-core-processor-4.0.0.jar;%APP_HOME%\lib\camel-support-4.0.0.jar;%APP_HOME%\lib\camel-management-api-4.0.0.jar;%APP_HOME%\lib\camel-core-catalog-4.0.0.jar;%APP_HOME%\lib\camel-api-4.0.0.jar;%APP_HOME%\lib\camel-util-4.0.0.jar;%APP_HOME%\lib\slf4j-api-2.0.7.jar;%APP_HOME%\lib\camel-xml-jaxp-util-4.0.0.jar;%APP_HOME%\lib\camel-tooling-model-4.0.0.jar;%APP_HOME%\lib\camel-xml-io-util-4.0.0.jar;%APP_HOME%\lib\jaxb-impl-4.0.3.jar;%APP_HOME%\lib\jaxb-core-4.0.3.jar;%APP_HOME%\lib\jakarta.xml.bind-api-4.0.0.jar;%APP_HOME%\lib\camel-util-json-4.0.0.jar;%APP_HOME%\lib\jackson-databind-2.15.2.jar;%APP_HOME%\lib\jackson-core-2.15.2.jar;%APP_HOME%\lib\jackson-annotations-2.15.2.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.15.2.jar;%APP_HOME%\lib\angus-activation-2.0.1.jar;%APP_HOME%\lib\jakarta.activation-api-2.1.2.jar;%APP_HOME%\lib\snakeyaml-2.0.jar


@rem Execute app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APP_OPTS%  -classpath "%CLASSPATH%" org.example.MyCamelApp %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%APP_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
