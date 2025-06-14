# OpenGL ES 3.2 binding for the BEAM

[![Erlangsters Repository](https://img.shields.io/badge/erlangsters-opengl--es--3.2-%23a90432)](https://github.com/erlangsters/opengl-es-3.2)
![Supported Erlang/OTP Versions](https://img.shields.io/badge/erlang%2Fotp-28-%23a90432)
![Current Version](https://img.shields.io/badge/version-0.1.0-%23354052)
![License](https://img.shields.io/github/license/erlangsters/opengl-es-3.2)
[![Build Status](https://img.shields.io/github/actions/workflow/status/erlangsters/opengl-es-3.2/workflow.yml)](https://github.com/erlangsters/opengl-es-3.2/actions/workflows/workflow.yml)
[![Documentation Link](https://img.shields.io/badge/documentation-available-yellow)](http://erlangsters.github.io/opengl-es-3.2/)

:construction: It's still in development and a first beta version will be
available shortly. The master branch will be rewound!

This repository hosts the generated OpenGL ES 3.2 binding for the Erlang and
Elixir programming language. Only the core profile functions are exposed and
loading custom OpenGL functions is not supported.

```erlang
Vertices = [1.0, -0.5, 42.0],

{ok, [Buffer]} = gl:gen_buffer(1).
gl:bind_buffer(array_buffer, Buffer).
gl:buffer_data(
  array_buffer,
  length(Vertices) * 4,
  <<<<Vertex:32/float-little>> || Vertex <- Vertices>>
  static_draw
).
```

It works exclusively with the [EGL binding](https://github.com/erlangsters/egl-1.5)
which will provide you with an OpenGL context and OpenGL surfaces to work with.
Additionally, you might want to use the [GLFW binding](https://github.com/erlangsters/glfw)
to provide you with a window.

> Bindings for other version of OpenGL and OpenGL ES are available. Visit the
> Erlangsters organization page on Github to browse the list of [available
> bindings](https://github.com/orgs/erlangsters/repositories?type=all&q=opengl-).

Generated by the Erlangsters [community](https://about.erlangsters.org/) and
released under the MIT [license](https://opensource.org/license/mit).

## Quick preview

To be written.

## Using the binding in your project

With the **Rebar3** build system, add the following to the `rebar.config` file
of your project.

```
{deps, [
  {egl, {git, "https://github.com/erlangsters/egl-1.5.git", {tag, "master"}}},
  {gl, {git, "https://github.com/erlangsters/opengl-es-3.2.git", {tag, "master"}}}
]}.
```

If you happen to use the **Erlang.mk** build system, then add the following to
your Makefile.

```
BUILD_DEPS = egl gl
dep_egl = git https://github.com/erlangsters/egl-1.5 master
dep_gl = git https://github.com/erlangsters/opengl-es-3.2 master
```

In practice, you want to replace the branch "master" with a specific "tag" to
avoid breaking your project if incompatible changes are made.

## Generating the binding yourself

Like stated, this OpenGL binding is generated and the result is hosted in this
repo for convenience of use. However, you may want to be able to re-produce
the said result.

No problem, clone the
[OpenGL binding generator](https://github.com/erlangsters/opengl-x.y-generator)
repository, compile the generator and generate the binding.

```
rebar3 escriptize
./bin/opengl_gen gles 3.2
```

It produces the `gl.erl`, `gl.hrl` and `gl.c` that can be directly included in
your project. (Note that you'll need to configure your build system to produce
a NIF library out of `gl.c`, of course.)
