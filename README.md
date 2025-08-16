# Neocities Site

This repository contains the source code for my Neocities website.

## 🚀 Automatic Deployment

This site automatically deploys to Neocities using GitHub Actions whenever you push to the `main` branch.

## 📋 Setup Instructions

1. **Get your Neocities API token:**
   - Go to https://neocities.org/settings
   - Scroll down to "API Key" 
   - Copy your API key

2. **Add the API token to GitHub Secrets:**
   - Go to your GitHub repository
   - Click Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Name: `NEOCITIES_API_TOKEN`
   - Value: paste your API token
   - Click "Add secret"

3. **Push your changes:**
   ```bash
   git add .
   git commit -m "Update site"
   git push origin main
   ```

4. **Watch it deploy:**
   - Go to the "Actions" tab in your GitHub repository
   - You'll see the deployment progress
   - Once complete, your site will be live!

## 🔄 How to Update Your Site

1. Make changes to your files locally
2. Commit and push to GitHub:
   ```bash
   git add .
   git commit -m "Your update message"
   git push
   ```
3. GitHub Actions automatically deploys to Neocities
4. Your site updates within a few minutes!

## 📁 File Structure

- `index.html` - Main homepage
- `style2.css` - Stylesheet 
- `fonts/` - Custom fonts
- `backs/` - Background images
- `.github/workflows/deploy.yml` - GitHub Actions deployment

## 🛠️ Local Development

To test your site locally:

```bash
# Install dependencies
npm install

# Start local server
npm run dev
```

Then open http://localhost:8080 in your browser.
