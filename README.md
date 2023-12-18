# Reeve CI / CD - Pipeline Step: Docker CLI

This is a [Reeve](https://github.com/reeveci/reeve) step for executing Docker commands.

## Configuration

See the environment variables mentioned in [Dockerfile](Dockerfile).

Use `command` to specify the command to be executed, e.g.:

```yaml
command: ["docker", "system", "prune", "-f"]
```
