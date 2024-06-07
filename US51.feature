Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Medicamentos.

User Story: US51 - Como desarrollador, necesito implementar el endpoint de medicamentos, para permitir que los usuarios gestionen sus registros de medicación.

Scenario: Agregar un nuevo <medicamento>
Given que un usuario desea agregar un nuevo <medicamento> a su <historial médico>,
When envía una solicitud POST con la información del <medicamento> al endpoint /medications,
Then el <sistema> guarda el nuevo <medicamento> en la base de datos y devuelve una <respuesta> de éxito.

Input:

| historial médico | informacion médica del usuario |
| medicamento | informaion que el usuario quiere agregar |
Output:

| sistema | El medicamento se guarda en la base de datos |
| historial médico | historial médico actualizado |
| respuesta | Mensaje de exito |


Scenario: Obtener lista de <medicamentos>
Given que un usuario desea ver su lista de <medicamentos> actuales,
When envía una solicitud GET al endpoint /medications,
Then el sistema devuelve una lista de todos los <medicamentos> registrados en el historial médico del usuario.

Input:
| historial médico | Informacion médica del usuario |

Output:
| medicamentos | Lista de medicamentos |


Scenario: Actualizar información de un <medicamento>
Given un usuario desea actualizar la información de un <medicamento> existente,
When envía una solicitud PUT con los datos actualizados al endpoint /medications/{medicationId},
Then el <sistema> actualiza la información del <medicamento> correspondiente en la base de datos y confirma la actualización con una <respuesta> de éxito.

Input:
| medicamento | informacion que el usuario quiere actualizar |

Output:
| medicamento | informacion actualizada |
| sistema | El medicamento se actualiza en la base de datos |
| respuesta | Mensaje de exito |


Scenario: Eliminar un <medicamento>
Given un usuario desea eliminar un <medicamento> de su <historial médico>,
When envía una solicitud DELETE al endpoint /medications/{medicationId},
Then el <sistema> elimina el <medicamento> correspondiente de la base de datos y devuelve una <respuesta> de éxito.

Input:
| medicamento | informacion que el usuario quiere eliminar |

Output:
| sistema | El medicamento se elimino de la base de datos |
| respuesta | Mensaje de exito |


