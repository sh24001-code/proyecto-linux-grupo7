# Proyecto Grupo 7

Este proyecto corresponde a las prácticas de **Automatización, Control de Versiones y Contenedores Docker**.

## Usuarios del sistema
- **adminsys** — clave: `9876`
- **tecnico** — clave: `5432`
- **visitante** — clave: `1234`

## Grupos y permisos
- El **usuario tecnico** pertenece al grupo `soporte`.
- El **usuario visitante** pertenece al grupo `web`.

### Directorios y permisos
- El directorio `datos/` pertenece al grupo `soporte`, por lo tanto **solo el usuario tecnico** puede hacer cambios en él.  
- El directorio `web/` pertenece al grupo `web`, por lo tanto **solo el usuario visitante** puede modificar su contenido.

## Descripción general
El proyecto demuestra la configuración de usuarios, permisos de grupos, automatización con scripts, control de versiones con Git y la creación de contenedores Docker.
