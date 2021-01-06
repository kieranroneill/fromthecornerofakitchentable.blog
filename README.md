[![Deployment Status](https://github.com/kieranroneill/fromthecornerofakitchentable.blog/workflows/Deploy/badge.svg)](https://github.com/kieranroneill/fromthecornerofakitchentable.blog/actions)

# From The Corner Of A Kitchen Table - Ghost theme

A custom theme for the From The Corner Of A Kitchen Table blog, based on the [BlogInn](https://themeforest.net/item/bloginn-bold-theme-for-ghost/13696762) theme.

#### Table of contents

* [Introduction](#introduction)
  * [Project structure](#project-structure)
* [Development](#development)
  * [1. Prerequisites](#1-prerequisites)
  * [2. Run](#2-run)
  * [3. Admin (optional)](#3-admin-optional)

## Introduction

### Project structure

Below is a quick outline of the structure of the theme:

```text
.
├── local                       # Various seed data used for local development.
|   ├── data
|   |   ├── ghost.db            # A mock db used for development.
│   │   └── ...
|   ├── images
│   │   └── ...
|   ├── images
│   │   └── ...
|   └── ...
├── scripts                     # Bash scripts for common tasks.
|   ├── package.sh              # Zips up the theme ready for deployment.
|   ├── version.sh              # Sets the version value in the package.json files.
|   └── ...
├── src
|   ├── assets                  # Contains theme stylesheets, JavaScript files and images.
│   │   └── ...
|   ├── locales                 # Contains theme translation files.
|   |   ├── en.json
│   │   └── ...
|   ├── members                 # Contains theme stylesheets, JavaScript files and images.
│   │   └── ...
|   ├── partials                # Contains smaller components of the theme for a more modular, well organized structure.
│   │   └── ...
|   ├── author.hbs              # The author template.
|   ├── default.hbs             # The parent template file that includes the site navigation, header and footer.
|   ├── error.hbs               # The 500 error page template.
|   ├── error-404.hbs           # The 404 error page template.
|   ├── fonts.hbs               # A partial used to output a special stylesheet link to use selected Google Fonts.
|   ├── index.hbs               # The main template that generates a list of posts.
|   ├── package.json            # A set of meta data about the theme.
|   ├── page.hbs                # The template used to render static pages.
|   ├── post.hbs                # The template used to render single posts.
|   ├── routes.yaml             # Ghost's routing configuration which you should upload if the members feature is enabled.
|   ├── tag.hbs                 # The tag template.
│   └── ...
└── ...
```

## Development

### 1. Prerequisites

- Install [Docker](https://docs.docker.com/install/).
- Install [Docker Compose](https://docs.docker.com/compose/install/).

### 2. Run

1. First, copy the mock database:
```bash
cp -r local .local
```

**NOTE:** This step is optional, however, it adds an admin user and activates the theme.

2. Simply run `docker-compose`:
```bash
docker-compose up
```

3. Navigate to [http://localhost:1337](http://localhost:1337).

### 3. Admin (optional)

1. To administer the local site, navigate to [http://localhost:1337/ghost](http://localhost:1337/ghost).

2. If you use the mock data in `local/`, you can use these credentials to login:

| Username                                  | Password            |
| :---------------------------------------- | :------------------ |
| `admin@fromthecornerofakitchentable.blog` | `VrAN8*CfTnXirBc3K` |
