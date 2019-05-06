# Memory Mapping

More information can be found in the AUTOSAR standard [Specification of Memory Mapping](https://www.autosar.org/fileadmin/user_upload/standards/classic/4-3/AUTOSAR_SWS_MemoryMapping.pdf)

## file name

The memory mapping file name shall be {Mip}_MemMap.h for basic software modules and {componentTypeName}_MemMap.h for software components where {Mip} is the Module implementation prefix and {componentTypeName} is the name of the software component type.

## Pattern for Memory Allocation Keywords

The usual patterns for Memory Allocation Keywords are:

* {PREFIX}_START_SEC_CODE[_{codePeriode}][_{safety}][_{coreScope}]
* {PREFIX}_STOP_SEC_CODE[_{codePeriode}][_{safety}][_{coreScope}]
* {PREFIX}_START_SEC_VAR_{INIT_POLICY}[_{safety}][_{coreScope}]_{ALIGNMENT}
* {PREFIX}_STOP_SEC_VAR_{INIT_POLICY}[_{safety}][_{coreScope}]_{ALIGNMENT}

### PREFIX

* <PREFIX> is composed according <snp>[_<vi>_<ai>] for basic software modules
* <PREFIX> is the shortName of the software component type for software components (case sensitive)

### ALIGNMENT

The shortcut {ALIGNMENT} means the typical variable alignment. In order to avoid memory gaps variables are allocated separately according their size for the kind of memory sections where a high amount of variables is expected.

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

The shortcut {INIT_POLICY} means the initialization policy of variables.

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

{codePeriod} is the typical period time value and unit of the ExecutableEntitys
in this MemorySection. The name part _{codePeriod} is optional. Units are:

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
