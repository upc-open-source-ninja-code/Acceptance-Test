Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Razones de Consulta.

User Story: US54 - Como desarrollador, necesito implementar el endpoint de razones de consulta, para permitir que los usuarios gestionen las razones de sus consultas médicas.	.

Scenario: Crear una nueva <razón de consulta>

Given que un usuario desea agregar una nueva razón de consulta,
When envía una solicitud POST con la información de la razón de consulta al endpoint /reasonOfConsultation,
Then el <sistema> guarda la nueva razón de consulta en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:

| razón de consulta | informacion que el usuario quiere agregar |

Output:

| sistema | Nueva razón de consulta se guarda en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Obtener lista de razones de consulta

Given que un usuario desea ver la <lista> de <razones de consulta> disponibles,
When envía una solicitud GET al endpoint /reasonOfConsultation,
Then el sistema devuelve una <lista> de todas las <razones de consulta> registradas.

Input:
| solicitud | GET al endpoint /reasonOfConsultation |

Output:
| lista | Listado de todas las razones de consultas de la base de datos |

Scenario: Actualizar una <razón de consulta>

Given que un usuario desea actualizar una <razón de consulta> existente,
When envía una solicitud PUT con los datos actualizados al endpoint /reasonOfConsultation/{reasonId},
Then el <sistema> actualiza la información de la <razón de consulta> en la base de datos y devuelve una <respuesta> de éxito.

Input:
| razón de consulta | informacion que el usuario quiere actualizar |

Output:
| razón de consulta | informacion actualizada |
| sistema | La razón de consulta se actualiza en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Eliminar una razón de consulta

Given que un usuario desea eliminar una <razón de consulta>,
When envía una solicitud DELETE al endpoint /reasonOfConsultation/{reasonId},
Then el <sistema> elimina la <razón de consulta> correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:
| razón de consulta | informacion que el usuario quiere eliminar |

Output:
| sistema | La razón de consulta se elimina de la base de datos |
| respuesta | Mensaje de exito |
