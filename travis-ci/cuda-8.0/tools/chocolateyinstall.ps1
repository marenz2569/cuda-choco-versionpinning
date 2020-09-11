$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = $env:ChocolateyPackageName

  url          = 'https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_win10-exe'
  checksum     = 'fc65652237548ad4d7b8a8d0417b4fc16daff1672ea1c8a688560394f9f0356f'
  checksumType = 'sha256'

  silentArgs   = '/s'
}

$packagePatchArgs = @{
  packageName  = $env:ChocolateyPackageName + '-patch'

  url          = 'https://developer.nvidia.com/compute/cuda/8.0/Prod2/patches/2/cuda_8.0.61.2_windows-exe'
  checksum     = '58a5c4ecc98ce54073aa2c1dc824e561977e71eb5227aa0e573123b912fd09b0'
  checksumType = 'sha256'

  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPackage @packagePatchArgs
