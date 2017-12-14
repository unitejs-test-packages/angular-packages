#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=angular-javascript --title="Angular JavaScript" --profile=AngularJavaScript --outputDirectory=./apps/angular-javascript
cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js ./apps/angular-javascript/www/test/e2e/src/examples/
cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js ./apps/angular-javascript/www/test/e2e/src/helpers/
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/angular-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-javascript

node unitejs/unitejs-cli/bin/unite configure --packageName=angular-typescript-commonjs --title="Angular TypeScript CommonJS" --profile=AngularTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/angular-typescript-commonjs
cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts ./apps/angular-typescript-commonjs/www/test/e2e/src/examples/
cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts ./apps/angular-typescript-commonjs/www/test/e2e/src/helpers/
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/angular-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=angular-typescript-systemjs --title="Angular TypeScript SystemJS" --profile=AngularTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/angular-typescript-systemjs
cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts ./apps/angular-typescript-systemjs/www/test/e2e/src/examples/
cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts ./apps/angular-typescript-systemjs/www/test/e2e/src/helpers/
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/angular-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-typescript-systemjs
