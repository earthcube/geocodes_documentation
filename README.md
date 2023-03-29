# geocodes_documentation 

[Github io](https://earthcube.github.io/geocodes_documentation/)

To add a repository to this GH Pages, 
* clone
* uses .github/workflows/runscript.yml 
* add to mkdocs.yml/multirepo/repos  the new repo
```yaml
             - section: Nabu
             import_url: 'https://github.com/gleanerio/nabu?branch=master'
```
Using the MkDocs plugin: https://github.com/jdoiro3/mkdocs-multirepo-plugin

see docs/developers/addingdocumentation.md

=====

This_ repository is for documentation on the GeoCodes technology stack and production operation of the Gleaner-Nabu-GeoCodes UI workflow.

# Crawling and indexing the metadata, with [gleaner](https://github.com/earthcube/geocodes/blob/main/docs/indexing_with_gleanerio.md)

# [Faceted](https://github.com/earthcube/facetsearch) [search](http://geocodes.ddns.net/ec/GeoCODES) [page](https://dev.geocodes.earthcube.org/)

# [utilities](https://github.com/earthcube/earthcube_utilities) used to open.. the (meta)data in notebooks, from the [search](http://geocodes.ddns.net/ec/GeoCODES)

# [Testing](https://github.com/earthcube/ec/blob/master/test/) the [metadata](https://github.com/earthcube/GeoCODES-Metadata) as it goes through the stack

# GeoCODES container [stack](https://github.com/earthcube/geocodes)

# [Editing](https://addto.earthcube.org/#/) json-ld descriptions of resources, with [forms](https://github.com/earthcube/jsonld_forms)

# [Onboarding](https://github.com/earthcube/ec/blob/master/doc/onboarding.md) a new repository
