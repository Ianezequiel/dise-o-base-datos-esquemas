# dise-o-base-datos-esquemas
Diseño de esquemas y tablas SQL para ventas, logística y analytics.
```mermaid
erDiagram
    ventas_clientes ||--o{ ventas_pedidos : realiza
    ventas_pedidos ||--o| logistica_envios : genera

    ventas_clientes {
        int id_cliente PK
        string nombre
        string email
        date fecha_registro
    }
    ventas_pedidos {
        int id_pedido PK
        int id_cliente FK
        decimal monto_total
        date fecha_pedido
    }
    logistica_almacenes {
        int id_almacen PK
        string ubicacion
        decimal capacidad_m3
    }
    logistica_envios {
        int id_envio PK
        int id_pedido
        string destino
        string estado
        date fecha_envio
    }
    analytics_metricas_diarias {
        int id_metrica PK
        date fecha
        decimal total_ventas
        int total_envios_completados
    }
    analytics_reportes {
        int id_reporte PK
        string nombre_reporte
        string descripcion
        date fecha_creacion
    }
