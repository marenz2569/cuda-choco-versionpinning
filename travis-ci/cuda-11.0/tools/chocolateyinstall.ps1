$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = $env:ChocolateyPackageName

  url          = 'http://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda_11.0.3_451.82_win10.exe'
  checksum     = '80ae0fdbe04759123f3cab81f2aadabd'
  checksumType = 'md5'

  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs
