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

3 - **Levantar entorno docker:**

En el root de la repo ejecutar:

```bash
docker-compose up -d
```

(el build de la imagen de front tarda algunos minutos)

4 - **Crear la carpeta workspace y descargar los repositorios dentro:**

```bash
mkdir workspace

cd workspace

git clone git@github.com:GoIntegro/go5-bulk.git

```
5 - **Levantar entorno:**

```bash
# levantar mobile
./start_environment.sh
```

--------------------------------------------------------------------------

**Logging:**
Para ver logs de redis/mysql/sails:

- Redis:
```bash
docker-compose logs -f redis
```
- mysql:
```bash
docker-compose logs -f db
```
- sails:
```bash
docker-compose logs -f sails
```


