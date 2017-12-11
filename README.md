## Entorno docker para bulk

### Instalación:
1 - **Instalar docker y docker-compose**

https://www.docker.com/

https://docs.docker.com/compose/install/

2 - **Copiar credenciales de ssh en el directorio ssh/**

```bash
cp ~/.ssh/id_rsa ssh/
cp ~/.ssh/id_rsa.pub ssh/
```

Nota: si la clave tiene password, este se le solicitara al arrancar las aplicaciones en caso de necesitar instalar dependencias.


3 - **Crear la carpeta workspace y descargar los repositorios dentro:**

```bash
mkdir workspace

cd workspace

git clone git@github.com:GoIntegro/go5-bulk.git

```

4 - **Levantar entorno docker:**

En el root del repo ejecutar:

```bash
docker-compose up -d
```

(el build de la imagen de sails puede tardar)

Nota: Este comando crea el entorno y levanta los containers, esto debe ejecutarse solo la primera vez. Luego levantar y detener el entorno con los siguientes comandos:

```bash
# start containers
docker-compose start

# stop containers
docker-compose stop
```

--------------------------------------------------------------------------

**Logging:**
Para ver logs de redis / mysql / sails (sails, y workers):

- Redis:
```bash
docker-compose logs -f redis
```
- mysql:
```bash
docker-compose logs -f db
```
- sails y workers js:
```bash
docker-compose logs -f sails
```

- Todos los logs juntos:
```bash
docker-compose logs -f
```
--------------------------------------------------------------------------

Los tres servicios de la aplicacion corren como servicios de supervisor, estos inician automaticamente al arrancar los containers.

Nota: Para conectarse a qa se debe tener la vpn prendida en la maquina host.

