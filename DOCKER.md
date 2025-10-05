# Docker Configuration for Jekyll Blog

This document explains how to use Docker to run your Jekyll blog locally.

## Prerequisites

- Docker installed on your system
- Docker Compose installed (usually comes with Docker Desktop)

## Quick Start

### Using Docker Compose (Recommended)

1. **Build and start the container:**
   ```bash
   docker-compose up
   ```

2. **Access your blog:**
   Open your browser and navigate to `http://localhost:4000`

3. **Stop the container:**
   Press `Ctrl+C` in the terminal, or run:
   ```bash
   docker-compose down
   ```

### Using Docker Directly

1. **Build the Docker image:**
   ```bash
   docker build -t yanzhang-blog .
   ```

2. **Run the container:**
   ```bash
   docker run -p 4000:4000 -p 35729:35729 -v "%cd%":/srv/jekyll yanzhang-blog
   ```
   
   On Linux/Mac, use:
   ```bash
   docker run -p 4000:4000 -p 35729:35729 -v "$(pwd)":/srv/jekyll yanzhang-blog
   ```

3. **Access your blog:**
   Open your browser and navigate to `http://localhost:4000`

## Features

- **Live Reload**: Changes to your files are automatically detected and the site is rebuilt
- **Port 4000**: Main Jekyll server
- **Port 35729**: LiveReload websocket for automatic browser refresh
- **Volume Mounting**: Your local files are synced with the container
- **Persistent Cache**: Bundle cache is preserved between container restarts

## Common Commands

### Rebuild the container (after Dockerfile changes)
```bash
docker-compose up --build
```

### Run in detached mode (background)
```bash
docker-compose up -d
```

### View logs
```bash
docker-compose logs -f
```

### Stop and remove containers, networks, and volumes
```bash
docker-compose down -v
```

### Execute commands inside the running container
```bash
docker-compose exec jekyll bash
```

### Build the site for production
```bash
docker-compose run jekyll jekyll build --config _config.yml
```

## Troubleshooting

### Port already in use
If port 4000 is already in use, modify the port mapping in `docker-compose.yml`:
```yaml
ports:
  - "4001:4000"  # Use port 4001 on your host
```

### Permission issues (Linux)
If you encounter permission issues, you may need to adjust file ownership:
```bash
sudo chown -R $USER:$USER .
```

### Container fails to start
1. Check Docker is running: `docker ps`
2. View detailed logs: `docker-compose logs`
3. Rebuild the image: `docker-compose up --build`

### Changes not reflected
1. Ensure the container is running with live reload enabled
2. Check that your files are properly mounted (volume configuration)
3. Try a full rebuild: `docker-compose down -v && docker-compose up --build`

## File Structure

- **Dockerfile**: Defines the Docker image with Jekyll and dependencies
- **docker-compose.yml**: Orchestrates the container with proper configuration
- **.dockerignore**: Excludes unnecessary files from the Docker build context

## Notes

- The `_site` directory is excluded from version control (`.gitignore`)
- Jekyll cache is stored in a Docker volume for better performance
- The container uses `--force_polling` for file watching on Windows/Mac

## Additional Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Docker Documentation](https://docs.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
