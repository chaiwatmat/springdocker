# Usage

## docker build

```sh
./mvnw package dockerfile:build
```

## or docker build with automate version

```sh
./mvnw clean build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion} versions:commit

./mvnw package dockerfile:build
```
