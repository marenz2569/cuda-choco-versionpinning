param([Parameter(Mandatory=$true)] $Version)
cd travis-ci/cuda-$Version
choco pack
choco install --verbose -s . cuda
if ( $? -eq $false )
{
	Get-Content -Tail 100 C:\ProgramData\chocolatey\logs\chocolatey.log 
	Exit 1
}
