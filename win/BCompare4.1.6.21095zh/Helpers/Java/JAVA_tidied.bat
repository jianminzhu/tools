for %%F in (%1) do set size=%%~zF
if /I %size%  equ 0 goto :SkipJalopy
type %1 | java -classpath Helpers\Java\jalopy\lib\getopt.jar;Helpers\Java\jalopy\lib\jalopy.jar;Helpers\Java\jalopy\lib\jalopy-console.jar;Helpers\Java\jalopy\lib\log4j.jar de.hunsicker.jalopy.plugin.console.ConsolePlugin > %2
:SkipJalopy