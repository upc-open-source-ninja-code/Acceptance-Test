Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Ver el historial médico de un paciente.
User Story: US029 - Como médico deseo ver el historial médico de mi paciente para garantizar un tratamiento óptimo. 

Scenario: Un médico accede al historial clínico de un paciente.
Given que un médico necesita revisar el <historial médico> de un paciente para proporcionar un tratamiento óptimo. 
When accede a la sección de <historial médico> del paciente en el sistema. 
Then se muestra de manera clara y organizada la <información> relevante, como diagnósticos previos, tratamientos anteriores, alergias, 
resultados de exámenes médicos, medicaciones recetadas, entre otros. 

Input:
| historial médico | Datos del paciente |

Output:
| información | Detalles del historial médico del paciente (diagnósticos, tratamientos, alergias, resultados de exámenes, medicaciones) de manera organizada y clara |


Scenario: El médico observa información específica del historial de un paciente. 
Given que un médico está revisando el <historial médico> del paciente. 
When necesita <información específica>, como resultados de exámenes o tratamientos anteriores.
Then puede acceder a <detalles adicionales> haciendo clic en los elementos pertinentes del <historial médico>. 

Input:
| historial médico | Datos del paciente |
| detalles adicionales | Tipo específico de información requerida (por ejemplo, resultados de exámenes, tratamientos anteriores) |

Output:
| información específica | Detalles adicionales del historial médico del paciente según la solicitud del médico |




