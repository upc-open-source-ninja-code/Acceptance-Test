Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Inscripciones.

User Story: US52 - Como desarrollador, necesito implementar el endpoint de medicamentos, para permitir que los usuarios gestionen sus registros de medicación.	

Scenario: Crear una nueva inscripción
Given que un usuario desea crear una nueva inscripción médica,
When envía una solicitud POST con los <datos> de la <inscripción> al endpoint /inscriptions,
Then el <sistema> guarda la nueva inscripción en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:
| datos | Contenido de la inscripción |

Output:

| sistema | La inscripción se guarda en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Obtener <lista> de inscripciones

Dado que un usuario desea ver su lista de inscripciones médicas,

Cuando envía una solicitud GET al endpoint /inscriptions,

Entonces el sistema devuelve una <lista> de todas las inscripciones médicas registradas para el usuario.

Input:
| solicitud | El usuario realiza un GET en el endpoint /inscriptions|

Output:

| lista | Conjunto de informacion relacionada con las inscripciones médicas del usuario |

Scenario: Actualizar una inscripción

Given que un usuario desea actualizar una <inscripción médica> existente,

When envía una solicitud PUT con los datos actualizados al endpoint /inscriptions/{inscriptionId},

Then el <sistema> actualiza la <inscripción> correspondiente en la base de datos y devuelve una <respuesta> de éxito.

Input:
| inscripción médica | informacion que el usuario quiere actualizar|

Output:

| inscripción | informacion actualizada |
| sistema | El medicamento se actualiza en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Eliminar una inscripción

Given que un usuario desea eliminar una <inscripción médica>,

When envía una solicitud DELETE al endpoint /inscriptions/{inscriptionId},

Then el <sistema> elimina la inscripción correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:
| inscripción médica | informacion que el usuario quiere eliminar |

Output:
| sistema | La inscripción médica se elimino de la base de datos |
| respuesta | Mensaje de exito |
