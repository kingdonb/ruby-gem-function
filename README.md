### Gemfile example

From inside of this directory, do:

```
riff create ruby --artifact json.rb
```

or `riff create ruby -a json.rb`

As of riff 0.0.7, that generates and builds a Dockerfile and image:

```Dockerfile
FROM crdant/ruby-function-invoker:0.0.2-snapshot
ENV FUNCTION_URI /functions/json.rb
ADD json.rb ${FUNCTION_URI}
```

and two CRDs, `gem-function.yaml` and `gem-topics.yaml`.

If you only have one ruby file and no Gemfile or other external dependencies,
you can omit `-a`.  Be wary also, the Docker image will include everything in
current dir if a Gemfile is found.
