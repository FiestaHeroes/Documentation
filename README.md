# Fiesta Heroes - Documentation

This website is built using [Docusaurus 2](https://docusaurus.io/). 


### Local Development

```
$ yarn start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

### Add new pages

The folder structure of the markdown files resembles the structure in the documentation. Pages are simple markdown pages.

### Editing Lua Documentation

The Lua documentation is generated from the fiesta.lua file located at `static/files/fiesta.lua` with a python script `scripts/convert_lua.py`.
If you need to change anything related to lua documentation, you should go into the `fiesta.lua` file, change the annotations and functions there,
and run the python script afterwards to automatically generate the updated documentation.

### Deployment

The website always mirrors the current content from main branch. Deployment is automated so no manual actions are required.
