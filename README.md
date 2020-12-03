# Buletina Customs

Custom Buletina templates for specific projects.

Requires **Docker**.

## Usage

### Running

```bash
./run.sh <variation-name>
```

That will start up a Docker Compose project for the given variation, with:
- Buletina on http://localhost:8080
- Email debugger on http://localhost:8081

Template debugging on Buletina is already enabled, so just edit the templates
inside the variations folder in `./variations/<variation-name>`.

### Publishing

```bash
./publish <variation-name>
```

The command below will:
- Create a new Docker image tagged for the given variant **and** an
  automatically generated unique ID based on the current date.
- Try to push it to Docker Hub. You'll only be able to do so if you
  can push to my personal repository on there :)

### Use Docker Compose directly

If you need to operate the compose project directly, just use
`./compose.sh` script as if it were `docker-compose`.

```bash
./compose.sh <variation-name> logs
# equals to running `docker-compose logs` but
# configured for the given variation
```
