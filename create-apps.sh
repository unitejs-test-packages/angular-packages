#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=angular-javascript --title="Angular JavaScript" --profile=AngularJavaScript --outputDirectory=./apps/angular-javascript
mkdir -p ./apps/angular-javascript/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/angular-javascript/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/angular-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/angular-javascript

node unitejs/unitejs-cli/bin/unite configure --packageName=angular-typescript-commonjs --title="Angular TypeScript CommonJS" --profile=AngularTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/angular-typescript-commonjs
mkdir -p ./apps/angular-typescript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/angular-typescript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/angular-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/angular-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=angular-typescript-systemjs --title="Angular TypeScript SystemJS" --profile=AngularTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/angular-typescript-systemjs
mkdir -p ./apps/angular-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/angular-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/angular-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/angular-typescript-systemjs
