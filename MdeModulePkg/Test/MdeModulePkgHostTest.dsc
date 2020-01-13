## @file
#
# Copyright (c) Microsoft Corporation.
# SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

[Defines]
  PLATFORM_NAME           = MdeModulePkgHostTest
  PLATFORM_GUID           = ED1BC320-D0CD-4CEC-8B42-454FBB7999BC
  PLATFORM_VERSION        = 0.1
  DSC_SPECIFICATION       = 0x00010005
  OUTPUT_DIRECTORY        = Build/MdeModulePkg/HostTest
  SUPPORTED_ARCHITECTURES = IA32|X64
  BUILD_TARGETS           = NOOPT
  SKUID_IDENTIFIER        = DEFAULT

!include UnitTestFrameworkPkg/UnitTestFrameworkPkgHost.dsc.inc

[LibraryClasses]
  SafeIntLib|MdePkg/Library/BaseSafeIntLib/BaseSafeIntLib.inf

[Components]
  #
  # Build HOST_APPLICATION that tests the SafeIntLib
  #
  MdeModulePkg/Library/UefiVariablePolicyLib/UefiVariablePolicyUnitTest/UefiVariablePolicyUnitTest.inf {
    <LibraryClasses>
      UefiVariablePolicyLib|MdeModulePkg/Library/UefiVariablePolicyLib/UefiVariablePolicyLib.inf
  }
