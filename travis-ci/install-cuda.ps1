cd travis-ci/cuda-$CUDA
choco pack
if ( $? -eq $false )
{
	Get-Content -Tail 100 C:\ProgramData\chocolatey\logs\chocolatey.log 
	Exit 1
}
