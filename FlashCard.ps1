$Words = Import-Csv -Path ./English-Korean.csv

do {
	$Test = Get-Random -InputObject $Words
	"$($test.Kup) Kup, $($Test.Section)"
	"$($Test.English)"
	$Host.UI.RawUI.FlushInputBuffer()
	$KeyPressed = $host.UI.RawUI.ReadKey()
	"$($Test.Korean)"
	$Host.UI.RawUI.FlushInputBuffer()
	$KeyPressed = $host.UI.RawUI.ReadKey()
	#"<$($KeyPressed)>"
} until ($KeyPressed.Character -eq 'q')

