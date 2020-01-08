/**
  NULL implementation for UnitTestBootLib to allow simple compliation

  Copyright (c) Microsoft
**/

#include <PiDxe.h>

/**
  Set the boot manager to boot from a specific device on the next boot. This
  should be set only for the next boot and shouldn't require any manual clean up

  @retval EFI_SUCCESS      Boot device for next boot was set.
  @retval EFI_UNSUPPORTED  Setting the boot device for the next boot is not
                           supportted.
  @retval Other            Boot devide for next boot can not be set.
**/
EFI_STATUS
EFIAPI
SetBootNextDevice(
  VOID
  )
{
  return EFI_UNSUPPORTED;
}