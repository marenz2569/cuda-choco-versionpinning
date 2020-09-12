$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = $env:ChocolateyPackageName

  url          = 'http://developer.download.nvidia.com/compute/cuda/6_5/rel/installers/cuda_6.5.14_windows_general_64.exe'
  checksum     = 'f3e2c3c13ce0ecc67a5f7d7367f18d5ee0abfd50a7b6cdd10e0feb7b823fde6d'
  checksumType = 'sha256'

  silentArgs   = '/s nvcc_6.5 cublas_6.5 cublas_dev_6.5 cudart_6.5'
}

Install-ChocolateyPackage @packageArgs
