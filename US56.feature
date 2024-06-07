Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Perfiles.

User Story: US56 - Como desarrollador, necesito implementar el endpoint de perfiles, para permitir que los usuarios gestionen la información de los perfiles de pacientes y doctores.

Scenario: Crear un nuevo perfil de paciente

Given que un usuario desea agregar un nuevo perfil de paciente,
When envía una solicitud POST con la <información> del paciente al endpoint /profiles/patient,
Then el <sistema> guarda el nuevo perfil de paciente en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:

| información | informacion del paciente |
Output:

| sistema | El perfil de paciente se guarda en la base de datos |
| respuesta | Mensaje de exito |


Scenario: Crear un nuevo perfil de doctor

Given que un usuario desea agregar un nuevo perfil de doctor,
When envía una solicitud POST con la <informacion> del doctor al endpoint /profiles/doctor,
Then el <sistema> guarda el nuevo perfil de doctor en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:

| información | informacion del doctor |

Output:

| sistema | El perfil de paciente se guarda en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Obtener lista de perfiles de pacientes

Given que un usuario desea ver la <lista> de perfiles de pacientes,
When envía una <solicitud> GET al endpoint /profiles/patient,
Then el sistema devuelve una <lista> de todos los perfiles de pacientes registrados.

Input:

| solicitud | GET al endpoint /profiles/patient |

Output:

| Lista | Listado de todos los perfiles de pacientes |

Scenario: Obtener lista de perfiles de doctores

Given que un usuario desea ver la <lista> de perfiles de doctores,
When envía una <solicitud> GET al endpoint /profiles/doctor,
Then el sistema devuelve una <lista> de todos los perfiles de doctores registrados.

Input:

| solicitud | GET al endpoint /profiles/patient |

Output:

| Lista | Listado de todos los perfiles de pacientes |

Scenario: Actualizar un perfil de paciente

Given que un usuario desea actualizar un perfil de paciente existente,
When envía una solicitud PUT con los <datos actualizados> al endpoint /profiles/patient/{patientId},
Then el <sistema> actualiza la información del perfil de paciente en la base de datos y devuelve una <respuesta> de éxito.

Input:

| perfil de paciente | informacion del paciente |
| datos actualizados | datos que el paciente quiere actualizar |

Output:

| sistema | El perfil de paciente se actualiza en la base de datos |
| perfil de paciente | informacion actualizada del paciente |
| respuesta | Mensaje de exito |

Scenario: Actualizar un perfil de doctor
Given que un usuario desea actualizar un <perfil de doctor> existente,
When envía una solicitud PUT con los <datos actualizados> al endpoint /profiles/doctor/{doctorId}
Then el <sistema> actualiza la información del <perfil de doctor> en la base de datos y devuelve una <respuesta> de éxito.

Input:

| perfil de doctor | informacion del doctor |
| datos actualizados | datos que el doctor quiere actualizar |

Output:

| sistema | El perfil del doctor se actualiza en la base de datos |
| perfil de doctor | informacion actualizada del doctor |
| respuesta | Mensaje de exito |

Scenario: Eliminar un perfil de paciente

Given que un usuario desea eliminar un <perfil de paciente>,
When envía una solicitud DELETE al endpoint /profiles/patient/{patientId},
Then el <sistema> elimina el <perfil de paciente> correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:
| perfil de paciente | informacion que el usuario quiere eliminar |

Output:
| sistema | El perfil de paciente se elimina de la base de datos |
| respuesta | Mensaje de exito |

Scenario: Eliminar un perfil de doctor

Given que un usuario desea eliminar un <perfil de doctor>,
When envía una solicitud DELETE al endpoint /profiles/doctor/{doctorId},
Then el <sistema> elimina el perfil de doctor correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:
| perfil de doctor | informacion que el usuario quiere eliminar |

Output:
| sistema | El perfil de doctor se elimina de la base de datos |
| respuesta | Mensaje de exito |
