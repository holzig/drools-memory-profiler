# Simple reproducer to profile memory consumption of executable model

The purpose of this project is to a simple starting point to analyze the behaviour of the drools behaviour during the build of the executable model.

The generateRules.sh will generate drl files into src/main/resources/com/example. After drl file generation you can run the maven command to investigate the memory consumption.

All content of this repository is intended just for demonstration purpose.

## generateRules.sh

The script takes three parameters to control the generated flex rules.

```
./generateRules.sh 10 20 1
```

Generates 10 drl files with 20 rules each. For each rule the consequence is only generated once.

```
./generateRules.sh 200 20 5
```

Generates 200 drl files with 20 rules each. For each rule the consequence is generated 5 times.

## Maven build

Just run `mvn clean install` to start the build. The kie maven plugin should build the kjar.

To change the default memory limit of the build you could do
```
MAVEN_OPTS="-Xmx2g" mvn clean install
```