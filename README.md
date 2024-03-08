# Docker-Jekyll
@andsju

A repository to setup a Docker environment using Jekyll - a static site generator. 

## Step 1
Clone this repo.

## Step 2
Make sure you have Docker software installed, up and running.

## Step 3
Open a terminal, navigate to git repo root folder. Run command:

```bash
docker-compose up
```

The application should start, open a browser and enter url:

http://localhost:4000/

![Browser](screens/jekyll-1.png)

---

Jekyll site content resides inside folder named *app*. 

```yml
│   about.md
│   index.md
│   _config.yml
├───assets
│   ├───css
│   │       style.css
│   │
│   └───images
│           Jekyll_Logo.png
├───_includes
│       header.html
├───_layouts
│       default.html
└───_posts
```

Visit Jekyll and find out how this generator works.
https://jekyllrb.com/ 


---
---

## Jekyll GitHub Pages site

Create your own personal site using [GitHub pages](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site)

Copy all content inside **app** folder to your personal repo, and you are ready to use Jekyll.  




## Jekyll Web Hosting 

(tested on a public cloud server host)

Following commands can be used to setup a simple Jekyll site from command line. This will use the current server public IP.

```bash
# debian:11-slim
apt-get update
apt-get install -y build-essential zlib1g-dev ruby-dev curl
gem install jekyll bundler
cd /usr/src
jekyll new site
cd site
jekyll serve -d /site -B -H 0.0.0.0 -P 80
```

Better - use nginx as a proxy server, passing port 80 requests to Jekylls default port 4000 