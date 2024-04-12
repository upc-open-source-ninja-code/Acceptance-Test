Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Diagnóstico y tratamiento.
User Story: US49 - Como médico quiero poder añadir Diagnósticos y tratamiento a mi paciente para tener un registro detallado de su evolución. 

Scenario: Médico quiere añadir un nuevo tratamiento y medicación a su paciente. 
Given que un médico endocrinólogo registrado en la aplicación se encuentra en la <historia clínica> del paciente 
When haga clic en la <pestaña> “Diagnósticos y tratamiento” en el panel derecho. 
And haga clic en el <botón> “Añadir” de la sección Tratamiento y medicación. 
Then el sistema abrirá una <pestaña> que le permitirá añadir <información> sobre el tratamiento y poder añadir medicación con campos como el nombre del medicamento, cantidad, concentración y frecuencia en horas. 

Input:
| historia clínica | Identificación del paciente |
| pestaña | pestaña de “Diagnósticos y tratamiento” |
| botón | botón para añadir Tratamiento y medicación |

Output:
| pestaña | Pestaña de “Añadir tratamiento y medicación” |
| información | Formulario para ingresar detalles del tratamiento y medicación (nombre del medicamento, cantidad, concentración, frecuencia en horas) |


Scenario: Médico quiere añadir un nuevo Diagnóstico a su paciente 
Given que un médico endocrinólogo registrado en la aplicación se encuentra en la <historia clínica> del paciente 
When haga clic en la <pestaña> “Diagnósticos y tratamiento” en el panel derecho. 
And haga clic en el <botón> “Añadir” de la sección Diagnóstico 
Then el sistema abrirá una <pestaña> que le permitirá añadir <información> sobre el nuevo Diagnóstico. 

Input:
| historia clínica | Identificación del paciente |
| pestaña | pestaña de “Diagnósticos y tratamiento” |
| botón | botón para añadir Diagnóstico |

Output:
| pestaña | Pestaña de “Añadir diagnóstico” |
| información | Formulario para ingresar detalles del nuevo diagnóstico |


