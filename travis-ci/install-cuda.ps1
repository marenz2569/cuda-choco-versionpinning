param([Parameter(Mandatory=$true)] $Version)
cd travis-ci/cuda-$Version
choco pack
choco install --verbose -s . cuda
if ( $? -eq $false )
{
	Get-Content -Tail 100 C:\ProgramData\chocolatey\logs\chocolatey.log 
	Exit 1
}

ls "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v$Version"
ls "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v$Version\include"
