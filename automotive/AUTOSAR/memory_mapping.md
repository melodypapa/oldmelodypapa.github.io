# Memory Mapping

More information can be found in the AUTOSAR standard [Specification of Memory Mapping](https://www.autosar.org/fileadmin/user_upload/standards/classic/4-3/AUTOSAR_SWS_MemoryMapping.pdf)

## file name

The memory mapping file name shall be {Mip}_MemMap.h for basic software modules and {componentTypeName}_MemMap.h for software components where {Mip} is the Module implementation prefix and {componentTypeName} is the name of the software component type.

## Pattern for Memory Allocation Keywords

The usual patterns for Memory Allocation Keywords are:

* {PREFIX}\_START_SEC_CODE[\_{codePeriode}][\_{safety}][\_{coreScope}]
* {PREFIX}\_STOP_SEC_CODE[\_{codePeriode}][\_{safety}][\_{coreScope}]
* {PREFIX}\_START_SEC_VAR_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_STOP_SEC_VAR_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_START_SEC_VAR_FAST_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_STOP_SEC_VAR_FAST_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_START_SEC_VAR_SLOW_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_STOP_SEC_VAR_SLOW_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_START_SEC_INTERNAL_VAR_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_STOP_SEC_INTERNAL_VAR_{INIT_POLICY}[\_{safety}][\_{coreScope}]\_{ALIGNMENT}
* {PREFIX}\_START_SEC_CONST[\_{accessPeriod}][\_{safety}]\_{ALIGNMENT}
* {PREFIX}\_STOP_SEC_CONST[\_{accessPeriod}][\_{safety}]\_{ALIGNMENT}

### PREFIX

* \<PREFIX\> is composed according \<snp\>[\_<vi\>\_<ai\>] for basic software modules
* \<PREFIX\> is the shortName of the software component type for software components (case sensitive)

### Section Type

**SEC_VAR (VAR)**
To be used for all global or static variables.

**SEC_VAR_FAST (VAR)**
To be used for all global or static variables.
To be used for all global or static variables that have at least one of the following properties:

* accessed bitwise
* frequently used
* high number of accesses in source code
  
Some platforms allow the use of bit instructions for variables located in this specific RAM area as well as shorter addressing instructions. This saves code and runtime.

**SEC_VAR_SLOW (VAR)**
To be used for all infrequently accessed global or static variables.

**SEC_INTERNAL_VAR (VAR)**
To be used for global or static variables those are accessible from a calibration tool.

**SEC_VAR_SAVED_ZONE (VAR)**
To be used for RAM buffers of variables saved in non volatile memory.
{anyNamePart} denotes the specific content of the saved zone.

**SEC_CONST_SAVED_RECOVERY_ZONE (CONST)**
To be used for ROM buffers of variables saved in non volatile memory.
{anyNamePart} denotes the specific content of the recovery zone

**SEC_CONST (COSNT)**
To be used for global or static constants.

**SEC_CALIB (CALPRM)**
To be used for calibration constants.

**SEC_CONFIG_DATA (CONFIG-DATA)**
Constants with attributes that show that they reside in one segment for module configuration.

**SEC_CODE (CODE)**
To be used for mapping code to application block, boot block, external flash etc.

**SEC_CALLOUT_CODE (CODE)**
To be used for mapping callouts of the BSW Modules which shall typically use the global linker settings for callouts

**SEC_CODE_FAST (CODE)**
To be used for code that shall go into fast code memory segments. The FAST sections should be used when the execution does not happen in a well defined period times but with the knowledge of high frequent access and
/or high execution time. For example, a callback for a frequent notification.

**SEC_CODE_SLOW (CODE)**
To be used for code that shall go into slow code memory segments. The SLOW sections should be used when the execution does not happen in a well defined period times but with the knowledge of low frequent access. For
example, a callback in case of seldom error.

### ALIGNMENT

The shortcut \{ALIGNMENT\} means the typical variable alignment. In order to avoid memory gaps variables are allocated separately according their size for the kind of memory sections where a high amount of variables is expected.

**BOOLEAN**
    used for variables and constants of size 1 bit

**8**
    used for variables and constants which have to be aligned to 8 bit.For instance used for variables and constants of size 8 bit or used for composite data types: arrays, structs and unions containing elements of maximum 8 bits

**16**
    used for variables and constants which have to be aligned to 16 bit. For instance used for variables and constants of size 16 bit or used for composite data types: arrays, structs and unions containing elements of maximum 16 bits.

**32**
    used for variables and constants which have to be aligned to 32 bit. For instance used for variables and constants of size 32 bit or used for composite data types: arrays, structs and unions containing elements of maximum 32 bits.

**PTR**
    used for variables and constants whose value is the address of another variable, so called pointers.

**UNSPECIFIED**
    used for variables, constants, structure, array and unions when size (alignment) does not fit the criteria of 8,16, 32 bit or PTR. For instance used for variables and constants of unknown size

_**Note:**_
In case structures and unions, it shall be allowed to use an alignment larger than the bit size of the elements. For instance to facilitate copy instruction a structure may have minimum 2 byte alignment, even if members are byte aligned. In this case, it should be possible to use alignment 16 bit instead of 8 bit for this structure.

### INIT_POLICY

The shortcut \{INIT_POLICY\} means the initialization policy of variables.

**NO_INIT**
    used for variables that are never cleared and never initialized.

**CLEARED**
    used for variables that are cleared to zero after every reset.

**POWER_ON_CLEARED**
    used for variables that are cleared to zero only after power on reset.

**INIT**
    used for variables that are initialized with values after every reset.

**POWER_ON_INIT**
    used for variables that are initialized with values only after power on reset.

### codePeriod

\{codePeriod\} is the typical period time value and unit of the ExecutableEntitys
in this MemorySection. The name part _{codePeriod} is optional. Units are:

* US microseconds
* MS milli second
* S second
  
For example: 100US, 400US, 1MS, 5MS, 10MS, 20MS, 100MS, 1S

### accessPeriod

\{accessPeriod\} is the typical period time value and unit of the ExecutableEntitys in this MemorySection. The name part _{accessPeriod} is optional. Units are:

* US microseconds
* MS milli second
* S second
For example: 100US, 400US, 1MS, 5MS, 10MS, 20MS, 100MS, 1S

### safety

The part <NAME> from may contain the following ASIL keywords to indicate the restriction/qualifications: {safety} = QM, ASIL_A, ASIL_B, ASIL_C, ASIL_D

The {safety} tag is optional and indicates the maximum possible safety level. Downscaling in the project is possible inside memory mapping header files. If no {safety} keyword is added the default shall be treated as QM (without any ASIL qualification).

### coreScope

The part <NAME> from may contain the following core scope keywords to indicate the restriction/qualifications:
{coreScope} =

* **GLOBAL**  
    code/data which can be executed/accessed by any core in case of multi-core ECUs.
* **LOCAL**
    code/data must be mapped by the integrator to a specific core (Core 0, Core 1, ...) in case of multi-core ECUs.

The {coreScope} tag is optional after the safety keyword. If no {coreScope} keyword is added the default shall be treated as GLOBAL.

## How to use mem map file in the source file

### For example (BSW Module):

```C
#define EEP_START_SEC_VAR_INIT_16
#include "Eep_MemMap.h"
static uint16 EepTimer = 100;
static uint16 EepRemainingBytes = 16;
#define EEP_STOP_SEC_VAR_INIT_16
#include "Eep_MemMap.h"
```

### For example (SWC):

```C
#define Abc_START_SEC_CODE
#include "Abc_MemMap.h"
/* --- Write a Code here */
#define Abc_STOP_SEC_CODE
#include "Abc_MemMap.h"
```

### For example (ecuconfig)

```xml
<MEMORY-SECTION>
  <SHORT-NAME>COM_SOMECALLOUT_CODE</SHORT-NAME>
  <SW-ADDRMETHOD-REF DEST="SW-ADDR-METHOD">/AUTOSAR_MemMap/SwAddrMethods/CALLOUT_CODE</SWADDRMETHOD-REF>
</MEMORY-SECTION>
```

### For example (Code Section)

```C
#define MySwc_START_SEC_CODE
#include "MySwc_MemMap.h"
FUNC(void, MySwc_CODE) Run1 (void);
#define MySwc_STOP_SEC_CODE
#include "MySwc_MemMap.h"
```
