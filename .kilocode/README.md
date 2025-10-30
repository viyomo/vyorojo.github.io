# Sistema de Memoria Conversacional .kilocode

## Descripción General

Este directorio contiene el sistema de memoria conversacional configurado para el proyecto de sitio web Quarto. El sistema almacena y gestiona el contexto de trabajo, sesiones de desarrollo y información del proyecto para mejorar la continuidad y eficiencia en el desarrollo.

## Estructura de Archivos

### `config.json`
Archivo de configuración principal que define:
- Configuración del proyecto
- Parámetros de memoria conversacional
- Ajustes de sesión y historial
- Información técnica del proyecto

### `conversation_memory.json`
Almacena:
- Información de la sesión actual
- Historial de conversaciones
- Insights del proyecto
- Etiquetas de contexto

### `project_context.json`
Contiene:
- Análisis detallado de la estructura del proyecto
- Información sobre tecnologías utilizadas
- Estado actual del proyecto
- Contexto de desarrollo

### `work_sessions.json`
Gestiona:
- Historial de sesiones de trabajo
- Plantillas de flujo de trabajo
- Patrones de trabajo comunes
- Notas de optimización

## Características del Sistema

### Contexto Automático
- El sistema identifica automáticamente el tipo de proyecto (Quarto Website)
- Almacena la estructura de archivos y dependencias
- Mantiene información sobre las tecnologías utilizadas

### Gestión de Sesiones
- Cada sesión de trabajo tiene un ID único
- Se registran tareas completadas y archivos modificados
- Se mantiene un historial de cambios y decisiones

### Memoria Conversacional
- Preserva el contexto de las conversaciones
- Almacena respuestas y decisiones importantes
- Facilita la continuidad entre sesiones de trabajo

## Uso del Sistema

### Configuración Inicial
El sistema se configura automáticamente al detectar el proyecto Quarto. Los parámetros principales incluyen:

```json
{
  "conversation_settings": {
    "max_history_entries": 1000,
    "context_depth": 5,
    "auto_save_interval": 300,
    "include_file_context": true,
    "store_ai_thoughts": true
  }
}
```

### Información del Proyecto
El sistema identifica automáticamente:
- **Tipo**: Sitio web estático Quarto
- **Idioma**: Español
- **Stack tecnológico**: Quarto + Bootstrap + FontAwesome
- **Estructura**: Páginas principales, posts, proyectos, publicaciones

### Flujos de Trabajo Predefinidos
El sistema incluye plantillas para:
1. **Nuevo Post Blog**: Creación de artículos
2. **Actualización Proyectos**: Gestión de proyectos
3. **Build y Deploy**: Proceso de publicación

## Beneficios

### Para el Desarrollo
- **Continuidad**: No se pierde el contexto entre sesiones
- **Eficiencia**: Información inmediata sobre el proyecto
- **Consistencia**: Seguimiento de decisiones y cambios

### Para el Mantenimiento
- **Historial**: Registro completo de modificaciones
- **Patrones**: Identificación de flujos de trabajo comunes
- **Optimización**: Mejores prácticas documentadas

## Personalización

### Modificar Configuración
Edite `config.json` para ajustar:
- Número máximo de entradas de historial
- Profundidad de contexto
- Intervalos de guardado automático

### Actualizar Contexto
El archivo `project_context.json` se actualiza automáticamente con:
- Nuevos archivos creados
- Cambios en la estructura
- Modificaciones en la configuración

### Gestionar Sesiones
En `work_sessions.json` puede:
- Añadir nuevos flujos de trabajo
- Modificar plantillas existentes
- Actualizar patrones de trabajo

## Integración con Quarto

Este sistema de memoria está optimizado para proyectos Quarto y proporciona:

- **Contexto técnico**: Información sobre extensiones y dependencias
- **Estructura de contenido**: Organización de posts, proyectos y publicaciones
- **Flujos de trabajo**: Procesos específicos para Quarto
- **Optimizaciones**: Mejores prácticas para desarrollo con Quarto

## Notas de Versión

### v1.0.0 (2025-10-30)
- Configuración inicial del sistema
- Soporte para proyectos Quarto
- Memoria conversacional básica
- Gestión de sesiones de trabajo
- Documentación de uso

## Soporte y Mantenimiento

El sistema es totalmente automático y no requiere mantenimiento manual. Sin embargo, puede ser útil revisar periódicamente:

- `conversation_memory.json`: Para limpiar historial antiguo
- `project_context.json`: Para verificar información actualizada
- `work_sessions.json`: Para optimizar flujos de trabajo

---

**Creado**: 2025-10-30  
**Tiempo**: UTC-3 (America/Buenos_Aires)  
**Proyecto**: Sitio Web Personal Quarto  
**Versión del sistema**: 1.0.0