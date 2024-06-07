Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Tipos de Medicamentos.

User Story: US53 - Como desarrollador, necesito implementar el endpoint de tipos de medicamentos, para permitir que los usuarios gestionen los tipos de medicamentos disponibles.

Scenario: Agregar un nuevo <tipo de medicamento>
Given que un usuario desea agregar un <tipo de medicamento>,
When envía una solicitud POST con la información del tipo de medicamento al endpoint /medicationTypes,
Then el <sistema> guarda el nuevo tipo de medicamento en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:
| tipo de medicamento | informacion que el usuario quiere agregar en la base de datos |

Output:
| sistema | El tipo de medicamento se guarda en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Obtener <lista> de <tipo de medicamento>
Given que un usuario desea ver la <lista> de <tipos de medicamentos> disponibles,
When envía una solicitud GET al endpoint /medicationTypes,
Then el sistema devuelve una <lista> de todos los <tipos de medicamentos> registrados.

Input:
| tipos de medicamento | Informacion en la base de datos |

Output:
| Lista | Informacion que contiene todos los tipos de medicamento |


Scenario: Actualizar un tipo de medicamento
Given que un usuario desea actualizar un <tipo de medicamento> existente,
When envía una solicitud PUT con los datos actualizados al endpoint /medicationTypes/{medicationTypeId},
Then el sistema actualiza la información del tipo de medicamento en la base de datos y devuelve una respuesta de éxito.

Input:
| tipo de medicamento | informacion que el usuario quiere actualizar en la base de datos |

Output:
| sistema | El tipo de medicamento se actualiza en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Eliminar un tipo de medicamento

Given que un usuario desea eliminar un <tipo de medicamento>,
When envía una solicitud DELETE al endpoint /medicationTypes/{medicationTypeId},
Then el <sistema> elimina el <tipo de medicamento> correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:
| tipo de medicamento | informacion que el usuario quiere eliminar |

Output:
| sistema | El tipo de medicamento se elimino de la base de datos |
| respuesta | Mensaje de exito |
