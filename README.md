# wallet UI
Una aplicación móvil bancaria y de gestión financiera de enfoque premium. Este proyecto está diseñado meticulosamente para demostrar capacidades avanzadas en el desarrollo de interfaces de usuario modernas, fluidas y altamente dinámicas, poniendo especial énfasis en las **microinteracciones y animaciones coreográficas de alto rendimiento**.

### Demo en Video
🎬 [Haz clic aquí para ver el video demostrativo de la aplicación](https://www.linkedin.com/posts/gtmiguel_flutter-android-wallets-activity-7254915713499291651-wgrO?utm_source=share&utm_medium=member_desktop&rcm=ACoAADTbuDQBe1AaDFke7oU3qGmdpr_VGw0WTVM)

### Inspiración del Diseño
Animaciones suaves

![Diseño de Referencia](https://raw.githubusercontent.com/gugu-async/wallet/refs/heads/main/ui.png) 


> ⚠️ **Nota de Propósito:** Este repositorio es una **Prueba de Concepto (PoC)** dedicada exclusivamente al diseño de interfaz de usuario (UI/UX) y animaciones fluidas en el cliente. Siéntete libre de clonarlo, bifurcarlo (*fork*) y utilizar sus componentes de animación como base para tus propios desarrollos.

---

## 🚀 Características Clave (UI/UX & Animations)

La aplicación implementa una navegación intuitiva y pantallas optimizadas donde la fluidez visual es la protagonista:

### 1. Tablero Principal de Tarjetas (Billetera Digital)
- **Carrusel Dinámico de Tarjetas:** Renderizado y gestión visual de las tarjetas de crédito/débito activas del usuario.
- **Historial del Cliente:** Despliegue elegante y limpio del listado de transacciones recientes vinculadas dinámicamente a la tarjeta activa.

### 2. Panel de Acciones de Tarjeta
- **Diseño Ergonómico:** Distribución de componentes y botones de acción rápida estructurados para mitigar la fricción táctil y facilitar la navegabilidad con una sola mano.

### 3. Módulo de Estadísticas y Analítica Financiera
- **Gráficas de Barras Interactivas:** Pantalla avanzada de analítica semanal para el control de gastos e ingresos.
- **Animaciones Reactivas al Tacto (*Touch-Driven Animations*):** Al interactuar u operar sobre las barras de la gráfica, estas reaccionan con microanimaciones orgánicas y escalados suaves para destacar el punto seleccionado.
---

## 🎨 Enfoque Técnico de Animación y Rendimiento

- **Animaciones Eficaces a 60/120 FPS:** Uso optimizado de las herramientas nativas de Flutter (`ImplicitlyAnimatedWidgets`, `Tweens` y controladores personalizados) para asegurar transiciones que aprovechan al máximo la tasa de refresco del dispositivo sin caídas de frames.
- **Diseño Visual Moderno y Minimalista:** Implementación de esquemas de color sofisticados, sombras sutiles y desenfoques (*blurs*) que se adaptan orgánicamente tanto al modo claro como oscuro.
- **Estructura UI Limpia:** Modularización exhaustiva de componentes visuales, facilitando la escalabilidad de las vistas analíticas e interactivas.

---
## 🛠️ Requisitos del Sistema y Tecnologías

El proyecto saca provecho de las optimizaciones modernas del lenguaje Dart, específicamente de los **Constructor Tear-offs** (inferencia de tipos en constructores implícitos como funciones de primera clase). Debido a esto, se establecen los siguientes requisitos mínimos de SDK:

- **Dart SDK:** `>= 2.15.0`
- **Flutter SDK:** `>= 2.8.0`

### Dependencias Principales

- **[Flutter Riverpod](https://pub.dev/packages/flutter_riverpod):** Utilizado para la gestión del estado global del tema (`ThemeMode`), garantizando desacoplamiento, testabilidad y renderizado eficiente.

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^8.1.0
  flutter_svg: ^2.3.0
  fl_chart: ^1.2.0
  flutter_riverpod: ^3.3.2
  card_swiper: ^3.0.1
  go_router: ^17.3.0
```
