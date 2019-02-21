### What

Demo repository for [cfhighlander](https://github.com/theonestack/cfhighlander)
nested component configuration via file name convention.

##### How it works?

Please read upon [component concepts](https://github.com/theonestack/cfhighlander)
if you are not already familiar with it before proceeding.  

---
Assume following component structure
```
A
|
|_ B
   |_ BC1
   |_ BC2
```

Component `BC1` configuration can be injected from top level `A` component
by placing `B.BC1.config.yaml` file alongside with `A` component configuration

##### Run the demo

1. Compile the cfhighlander gem from
https://github.com/toshke/cfhighlander/tree/feature/multilevelconfigfiles
fork / branch (not merged into upstream at time of the writing)

2. Run `cfcompile` within this repo

```
$ cfcompile
...
..
...C
loudFormation YAML template for cloudfront written to /Users/nikolatosic/Development/projects/github/cfhl_playground/out/yaml/cloudfront.compiled.yaml
CloudFormation YAML template for s3-cloudfront written to /Users/nikolatosic/Development/projects/github/cfhl_playground/out/yaml/s3cloudfront.compiled.yaml
CloudFormation YAML template for s3-website written to /Users/nikolatosic/Development/projects/github/cfhl_playground/out/yaml/s3-website.compiled.yaml

```

Component `app` consumes subcomponent `s3cloudfront` ->
  Component `s3cloudfront` consumes subcomponent `cloudfront` ->
  configuration file `s3cloudfront.cloudfront.config.yaml` contains config for
component that is 3 levels deep

After compiling the code, configuration from `s3cloudfront.cloudfront.config.yaml`
can be located in `cloudfront.config.yaml`
