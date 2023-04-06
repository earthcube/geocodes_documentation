# geocodes_documentation 

[ Geocodes Documentation on Github io](https://earthcube.github.io/geocodes_documentation/)
The multi-repository approach means that this top level repository is not updated when
a lower repository is updated, so you may find more recent updated in the repositories.

* [ Geocodes Documentation](https://earthcube.github.io/geocodes/)
* [Earthcube Utilities Documentation](https://earthcube.github.io/earthcube_utilities/)
* 

To add a repository to this GH Pages, 
* clone
* uses .github/workflows/runscript.yml 
* add to mkdocs.yml/multirepo/repos  the new repo
```yaml
      - Services Infrastructure: '!import https://github.com/earthcube/geocodes?branch=main&docs_dir=docs&config=mkdocs.yml'
```

You can also link directly to pages.
```yaml
      nav_repos:
        - name: geocodes
          import_url: https://github.com/earthcube/geocodes?branch=docs&docs_dir=docs&config=mkdocs.yml
          # NOTE USING THE DOCS BRANCH
          imports: [ docs/data_loading/setup_indexing_with_gleanerio.md, docs/data_loading/install_glcon.md ]
```
and
```yaml
-indexing
      - Load Data:
          - Install tool glcon: geocodes/docs/data_loading/install_glcon.md
          
```

Using the MkDocs plugin: https://github.com/jdoiro3/mkdocs-multirepo-plugin

Install the requirements, and run from cli with 

`mkdocs serve`

see docs/developers/addingdocumentation.md

=====

This_ repository is for documentation on the GeoCodes technology stack and production operation of the Gleaner-Nabu-GeoCodes UI workflow.

* Crawling and indexing the metadata, with [gleaner](https://github.com/earthcube/geocodes/blob/main/docs/indexing_with_gleanerio.md)
* [Faceted](https://github.com/earthcube/facetsearch) [search](http://geocodes.ddns.net/ec/GeoCODES) [page](https://dev.geocodes.earthcube.org/)
* [utilities](https://github.com/earthcube/earthcube_utilities) 
* [Testing](https://github.com/earthcube/ec/blob/master/test/) the [metadata](https://github.com/earthcube/GeoCODES-Metadata) as it goes through the stack
* GeoCODES container [stack](https://github.com/earthcube/geocodes)
* [Editing](https://addto.earthcube.org/#/) json-ld descriptions of resources, with [forms](https://github.com/earthcube/jsonld_forms)
* [Onboarding](https://github.com/earthcube/ec/blob/master/doc/onboarding.md) a new repository
