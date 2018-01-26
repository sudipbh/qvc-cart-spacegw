@echo off

for %%G in (us uk de jp) do (
	for %%S in (fp sp) do (
		echo Building space PU and gateway PU for geo [%%G] and site [%%S]
		echo on
		call mvn -P%%G -P%%S package
		echo on
		copy cart-space\target\*.jar dist\
		copy cart-space-wan-gateway\target\*.jar dist\
		call mvn clean
		echo off
	)
)



