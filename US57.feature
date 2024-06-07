Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Calendario.

User Story: US57 - Como desarrollador, necesito implementar el endpoint de calendario, para permitir que los usuarios gestionen sus eventos y citas médicas.

Scenario: Crear un nuevo evento en el calendario

Given que un usuario desea agregar un nuevo evento a su <calendario>,
When envía una solicitud POST con la <información> del evento al endpoint /calendar,
Then el <sistema> guarda el nuevo evento en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:

| información | informacion del evento |

Output:

| sistema | El evento se guarda en la base de datos |
| calendario | calendario actualizado |
| respuesta | Mensaje de exito |

Scenario: Obtener lista de eventos del calendario

Given que un usuario desea ver la <lista> de eventos en su <calendario>,
When envía una solicitud GET al endpoint /calendar,
Then el sistema devuelve una lista de todos los eventos registrados en el calendario del usuario.

Input:

| calendario | informacion que contiene los eventos |
| solicitud | GET al endpoint /calendar |

Output:

| lista | Listado de los eventos del calendario del usuario |

Scenario: Actualizar un evento del calendario

Given que un usuario desea actualizar la información de un <evento> existente en su <calendario>,
When envía una solicitud PUT con los <datos actualizados> al endpoint /calendar/{eventId},
Then el <sistema> actualiza la información del <evento> correspondiente en la base de datos y devuelve una <respuesta> de éxito.

Input:

| datos actualizados | informacion que el usuario quiere cambiar/actualizar del evento |

Output:

| sistema | El evento se actualiza en la base de datos |
| calendario | calendario actualizado |
| respuesta | Mensaje de exito |

Scenario: Eliminar un evento del calendario

Given que un usuario desea eliminar un <evento> de su <calendario>,
When envía una solicitud DELETE al endpoint /calendar/{eventId},
Then el <sistema> elimina el evento correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:

| evento | Informacion que el usuario quiere eliminar |

Output:

| sistema | El evento se elimina en la base de datos |
| calendario | calendario actualizado |
| respuesta | Mensaje de exito |
