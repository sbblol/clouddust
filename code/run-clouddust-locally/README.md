# Run CloudDust Locally
publish: draft

This setup allows you to run the CloudDust blog on your local machine using Docker, without installing Ruby or Jekyll natively.

## 📦 Includes

- `Dockerfile` for building the Jekyll container  
- `docker-compose.yml` for volume mapping and port forwarding  
- Local source folder is mounted inside the container  
- Container serves the website from `/srv/jekyll` mapped to the project root  

## ▶️ How It Works

The Jekyll container builds and serves your site using `jekyll serve`, which both builds the site and runs a local server at `http://localhost:4000`. The content is watched and automatically rebuilt when files change.

### Jekyll Modes:

- `jekyll build` → Builds the static content into the `_site` folder.  
- `jekyll serve` → Builds and starts a development server (includes `build`).

## 🛠️ Development Tips

- You can view the site at `http://localhost:4000`
- You may need to refresh the browser manually if live reload doesn't trigger
- Errors like `cannot load such file -- webrick` are resolved inside the container; no action needed on host
- The `.jekyll-cache` and `_site` folders are updated on the host

## 🧹 Cleanup

To stop and remove containers related to this project, you can use:

```bash
docker-compose down --volumes
ד