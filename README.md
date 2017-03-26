# How It Works
Super fast dev workflow with self contained vue components + hot module replacement. 

![Vue with rails webpack + HMR demo](https://github.com/tonyennis145/vue_rails_webpack/blob/master/app/assets/images/vue-webpack.gif?raw=true "Vue with rails webpack + HMR demo")

# Setup
- `bundle install`
- `npm install`
- ` ./bin/webpack-dev-server`

# What I Did
Not required reading but useful for context. This project combines code from:
- [rails webpacker vue setup](https://github.com/rails/webpacker#ready-for-vue), and
- [vue loader project setup](https://github.com/vuejs/vue-loader).

with a bit of tinkering to get them to play nice together.

## 1. Basic rails webpacker + Vue setup
From [here](https://github.com/rails/webpacker#ready-for-vue):
1. `rails webpacker:install`
2. `rails webpacker:install:vue`

## 2. Get vue-loader set up in a non-rails project, including hot reloading
This created a separate non-rails project containing some of the config files we need.

From [here](https://github.com/vuejs/vue-loader):
- `npm install -g vue-cli`
- `vue init webpack-simple hello`
- `cd hello`
- `npm install`

## 3. Copy config from project generated at step 2 
- Copied the `rules` section from `webpack.config.js:12` to `shared.js` in rails app.
- Added the --hot flag to `/bin/webpack-dev-server:31`.
- Added `publicPath: 'http://localhost:8080/'` to `shared.js:26` to fix a compilation bug.