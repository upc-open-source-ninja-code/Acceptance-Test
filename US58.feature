Epic005 - Gestión de la historia clínica exámenes médicos 
Como usuario deseo gestionar la historia clínica de un paciente para observar los antecedentes y ajustar el proceso.

Feature: Gestión de Identidad y Acceso.

User Story: US58 - Como desarrollador, necesito implementar el endpoint de gestión de identidad y acceso, para permitir que los usuarios gestionen sus cuentas y permisos.

Scenario: Registro de un nuevo usuario

Given que un nuevo usuario desea registrarse en el sistema,
When envía una solicitud POST con la <información> de registro al endpoint /identity/register,
Then el <sistema> guarda la nueva cuenta de usuario en la base de datos y confirma la operación con una <respuesta> de éxito.

Input:

| información | informacion del usuario |

Output:

| sistema | Se crea un usuario con su informacion en la base de datos |
| respuesta | Mensaje de exito |

Scenario: Inicio de sesión de un usuario

Given que un usuario desea iniciar sesión en el sistema,
When envía una solicitud POST con sus credenciales al endpoint /identity/login,
Then el sistema verifica las credenciales y, si son correctas, devuelve un <token> de autenticación y una respuesta de éxito.

Input:

| credenciales | credenciales privada del usuario  |

Output:

| sistema | Verifica las credenciales |
| token | Le devuelve un token al usuario |
| respuesta | Mensaje de exito |

Scenario: Obtener la información de perfil del usuario
Given que un usuario desea ver la información de su perfil,
When envía una <solicitud> GET al endpoint /identity/profile,
Then el sistema devuelve la <información> del perfil del usuario autenticado.

Input:

| solicitud | GET al endpoint /identity/profile |

Output:

| información | Información del usuario |


Scenario: Actualizar la información de perfil del usuario

Given que un usuario desea actualizar la información de su <perfil>,
When envía una solicitud PUT con los <datos actualizados> al endpoint /identity/profile,
Then el sistema actualiza la información del perfil del usuario en la base de datos y devuelve una respuesta de éxito.

Input:

| datos actualizados | Informacion que el usuario quiere actualizar |

Output:

| perfil | Perfil actualizado |
| sistema | Perfil actualizado en la base de datos |
| respuesta | Mensaje de éxito |

Scenario: Cambiar la contraseña del usuario

Given que un usuario desea cambiar su <contraseña>,
When envía una solicitud POST con la <nueva contraseña> al endpoint /identity/changePassword,
Then el <sistema> actualiza la contraseña del usuario en la base de datos y devuelve una <respuesta> de éxito.

Input:

| nueva contraseña | nuevas credenciales |

Output:

| contraseña | contraseña actualizada |
| sistema | contraseña actualizada en la base de datos |
| respuesta | Mensaje de éxito |

Scenario: Eliminar una cuenta de usuario
Given que un usuario desea eliminar su cuenta,
When envía una solicitud DELETE al endpoint /identity/deleteAccount,
Then el <sistema> elimina la cuenta de usuario correspondiente de la base de datos y confirma la eliminación con una <respuesta> de éxito.

Input:

| cuenta | cuenta que el usuario quiere liminar |
| solicitud | DELETE al endpoint /identity/deleteAccount |

Output:

| sistema | cuenta eliminada en la base de datos |
| respuesta| Mensaje de éxito |
