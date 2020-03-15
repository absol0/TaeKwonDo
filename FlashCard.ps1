$Words = Import-Csv -Path ./English-Korean.csv

do {
	$Test = Get-Random -InputObject $Words
	"$($test.Kup) Kup, $($Test.Section)"
	"$($Test.English)"
	$KeyPressed = $host.UI.RawUI.ReadKey()
	"$($Test.Korean)"
	$KeyPressed = $host.UI.RawUI.ReadKey()
} until ($KeyPressed.Character -eq 'q')

