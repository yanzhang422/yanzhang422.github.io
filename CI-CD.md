# CI/CD Pipeline Documentation

This document explains the GitHub Actions CI/CD pipeline configured for your Jekyll blog.

## Overview

The CI/CD pipeline automatically builds, tests, and deploys your Jekyll site to GitHub Pages whenever you push changes to the main/master branch.

## Workflow File

The pipeline is defined in `.github/workflows/ci-cd.yml`

## Pipeline Triggers

The workflow runs on:
- **Push to main/master branch**: Automatically builds and deploys
- **Pull Requests**: Builds and tests but does NOT deploy
- **Manual trigger**: Can be triggered manually from GitHub Actions tab

## Pipeline Stages

### 1. Build Stage
- **Checkout code**: Fetches the latest code from repository
- **Setup Ruby**: Installs Ruby 3.1 and bundles dependencies
- **Setup Pages**: Configures GitHub Pages settings
- **Build with Jekyll**: Compiles the Jekyll site with production environment
- **Test site**: Validates HTML and checks for broken links
- **Upload artifact**: Packages the built site for deployment

### 2. Deploy Stage
- **Deploy to GitHub Pages**: Publishes the site to GitHub Pages
- **Note**: Only runs on push to main/master (not on PRs)

## Required GitHub Settings

To enable the CI/CD pipeline, you need to configure GitHub Pages in your repository:

### Step 1: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings** > **Pages**
3. Under **Source**, select **GitHub Actions**

### Step 2: Set Branch Protection (Optional but Recommended)
1. Go to **Settings** > **Branches**
2. Add a branch protection rule for `main` or `master`
3. Enable options like:
   - Require pull request reviews
   - Require status checks to pass (includes the build job)

## Environment Variables

The workflow uses these environment variables:
- `JEKYLL_ENV`: Set to `production` during build
- `GITHUB_TOKEN`: Automatically provided by GitHub Actions

## Permissions

The workflow requires these permissions:
- `contents: read` - Read repository contents
- `pages: write` - Deploy to GitHub Pages
- `id-token: write` - Authentication for deployment

## Dependencies

### Required in Gemfile:
```ruby
gem "github-pages", group: :jekyll_plugins
```

### Optional for testing (add to Gemfile if you want local HTML validation):
```ruby
gem "html-proofer", "~> 5.0", group: :test
```

## Local Testing

### Test the build locally:
```bash
# Using Docker
docker-compose up

# Or using bundle directly
bundle exec jekyll build
bundle exec jekyll serve
```

### Test with HTML validation (if html-proofer is installed):
```bash
bundle exec jekyll build
bundle exec htmlproofer ./_site --disable-external --allow-hash-href
```

## Workflow Status

### View Workflow Runs:
1. Go to your repository on GitHub
2. Click the **Actions** tab
3. See all workflow runs, their status, and logs

### Status Badge:
Add this to your README.md to show build status:
```markdown
![Build and Deploy](https://github.com/yanzhang422/yanzhang422.github.io/actions/workflows/ci-cd.yml/badge.svg)
```

## Deployment Process

1. **Developer pushes code** to main/master branch
2. **GitHub Actions starts** the workflow automatically
3. **Build job runs**:
   - Sets up Ruby environment
   - Installs dependencies
   - Builds Jekyll site
   - Validates HTML
   - Creates deployment artifact
4. **Deploy job runs**:
   - Takes the artifact
   - Deploys to GitHub Pages
   - Site goes live at https://yanzhang422.github.io

## Troubleshooting

### Build Fails
1. Check the **Actions** tab for error logs
2. Common issues:
   - Syntax errors in Markdown files
   - Missing dependencies in Gemfile
   - Invalid YAML in _config.yml or front matter

### HTML Validation Warnings
The test step may show warnings but won't fail the build. To fix:
1. Review warnings in the Actions log
2. Fix broken links or HTML issues
3. Push changes to trigger new build

### Deployment Doesn't Update
1. Verify GitHub Pages source is set to **GitHub Actions**
2. Check if deploy job completed successfully
3. Wait 1-2 minutes for CDN cache to clear
4. Try hard refresh (Ctrl+F5) in browser

### Permission Denied Errors
1. Go to **Settings** > **Actions** > **General**
2. Under "Workflow permissions", ensure:
   - "Read and write permissions" is selected
   - "Allow GitHub Actions to create and approve pull requests" is checked

## Development Workflow

### Recommended Git Workflow:

1. **Feature development**:
   ```bash
   git checkout -b feature/new-post
   # Make changes
   git add .
   git commit -m "Add new blog post"
   git push origin feature/new-post
   ```

2. **Create Pull Request**:
   - Open PR on GitHub
   - CI/CD will build and test
   - Review changes
   - Merge when ready

3. **Automatic Deployment**:
   - Merge triggers deployment
   - Site updates automatically

### For Quick Updates:
```bash
git checkout main
# Make changes
git add .
git commit -m "Update content"
git push origin main
# Automatic build and deploy starts
```

## Cost and Limits

- ✅ GitHub Actions is **free** for public repositories
- ✅ GitHub Pages is **free** for public repositories
- Build time: Usually 2-5 minutes per deployment
- Storage: 1GB limit for GitHub Pages sites
- Bandwidth: 100GB per month (soft limit)

## Additional Features

### Concurrent Deployments
- Only one deployment runs at a time
- New deployments cancel in-progress ones
- Prevents conflicts

### Environment Protection
- Production environment requires approval (can be configured)
- View deployment history in **Environments** section
- Roll back if needed

## Best Practices

1. **Test locally** before pushing:
   ```bash
   docker-compose up
   ```

2. **Use Pull Requests** for significant changes

3. **Check Actions tab** after pushing to verify successful deployment

4. **Keep dependencies updated**:
   ```bash
   bundle update github-pages
   ```

5. **Monitor build times** and optimize if needed

## Monitoring and Notifications

### Enable Email Notifications:
1. Go to **Settings** > **Notifications**
2. Enable "Actions" notifications
3. Choose email preferences

### Slack/Discord Integration:
You can add workflow steps to send notifications on success/failure.

## Security

- Never commit secrets to repository
- Use GitHub Secrets for sensitive data
- The workflow uses GitHub's built-in GITHUB_TOKEN (secure)
- Review workflow permissions regularly

## Support

If you encounter issues:
1. Check GitHub Actions [documentation](https://docs.github.com/en/actions)
2. Review Jekyll [documentation](https://jekyllrb.com/docs/)
3. Check GitHub Pages [troubleshooting](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/troubleshooting-jekyll-build-errors-for-github-pages-sites)
