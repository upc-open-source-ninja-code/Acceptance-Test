Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Tratamientos.

User Story: US55 - Como desarrollador, necesito implementar el endpoint de tratamientos, para permitir que los usuarios gestionen sus tratamientos médicos.	

Scenario: Agregar un nuevo tratamiento

Given que un usuario desea agregar un nuevo <tratamiento> a su <historial médico>,
When envía una solicitud POST con la información del <tratamiento> al endpoint /treatments,
Then el <sistema> guarda el nuevo <tratamiento> en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:

| historial médico | informacion médica del usuario |
| tratamiento | informaion que el usuario quiere agregar |
Output:

| sistema | El tratamiento se guarda en la base de datos |
| historial médico | historial médico actualizado |
| respuesta | Mensaje de exito |

Scenario: Obtener lista de tratamientos

Given que un usuario desea ver su <lista> de <tratamiento> actuales,
When envía una solicitud GET al endpoint /treatments,
Then el sistema devuelve una lista de todos los <tratamientos> registrados en el <historial médico> del usuario.

Input:

| historial médico | informacion médica del usuario |

Output:

| lista | Todos los tratamientos registrados en el historial medico del usuario |

Scenario: Actualizar un tratamiento

Given que un usuario desea actualizar la información de un <tratamiento> existente,
When envía una solicitud PUT con los datos actualizados al endpoint /treatments/{treatmentId},
Then el <sistema> actualiza la información del <tratamiento> correspondiente en la base de datos y devuelve una <respuesta> de éxito.

Input:
| tratamiento | informacion que el usuario quiere actualizar |

Output:
| tratamiento | informacion actualizada |
| sistema | El tratamiento se actualiza en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Eliminar un tratamiento

Given que un usuario desea eliminar un <tratamiento> de su historial médico,
When envía una solicitud DELETE al endpoint /treatments/{treatmentId},
Then el <sistema> elimina el <tratamiento> correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:
| tratamiento | informacion que el usuario quiere eliminar |

Output:
| sistema | El tratamiento se elimino de la base de datos |
| respuesta | Mensaje de exito |
