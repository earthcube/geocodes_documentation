# geocodes_documentation 

[ Geocodes Documentation on Github io](https://earthcube.github.io/geocodes_documentation/)

This repository wraps/brings information for multiple repositories. The mkdocs.yml controls the rendering

~~~mermaid
flowchart 

    subgraph geocodes_documentation Repository
        D{mkdocs.yml}
        o(geocodes_documenation/docs)
        subgraph Geocodes Docker Container Repository
             gc{mkdocs.yml}
             gc2(deployment)
             gc3(production)
             gc4(indexing)
        end 

        subgraph Earthcube Utilities Repository
             ecu{mkdocs.yml}
             ecu2(earthcube utilities)
             ecu3(summarize)
             ecu4(notebook proxy)
        end 

        o3(gleaner)
        o4(metadata)
    end
~~~

The multi-repository approach means that this top level repository is not updated when
a lower repository is updated, so you may find more recent updated in the repositories.

* [ Geocodes Docker Container Documentation](https://earthcube.github.io/geocodes/)
* [Earthcube Utilities Documentation](https://earthcube.github.io/earthcube_utilities/)

It also pulls in information from
* [Gleeaner (JSON-LD collection and Graph Loading)](https://github.com/gleanerio)
* [Earthcube Metadata](https://github.com/earthcube/GeoCODES-Metadata)
* [Science on Schema](https://github.com/ESIPFed/science-on-schema.org)

## Adding to The Documentation
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

### Testing Updated Documentation

Using the MkDocs plugin: https://github.com/jdoiro3/mkdocs-multirepo-plugin

Install the requirements, and run from cli with 

`mkdocs serve`

see docs/developers/addingdocumentation.md

=====

This repository is for documentation on the GeoCodes technology stack and production operation of the Gleaner-Nabu-GeoCodes UI workflow.

* Crawling and indexing the metadata, with [gleaner](https://github.com/earthcube/geocodes/blob/main/docs/indexing_with_gleanerio.md)
* [Faceted](https://github.com/earthcube/facetsearch) [search](http://geocodes.ddns.net/ec/GeoCODES) [page](https://dev.geocodes.earthcube.org/)
* [utilities](https://github.com/earthcube/earthcube_utilities) 
* [Testing](https://github.com/earthcube/ec/blob/master/test/) the [metadata](https://github.com/earthcube/GeoCODES-Metadata) as it goes through the stack
* GeoCODES container [stack](https://github.com/earthcube/geocodes)
* [Editing](https://addto.earthcube.org/#/) json-ld descriptions of resources, with [forms](https://github.com/earthcube/jsonld_forms)
* [Onboarding](https://github.com/earthcube/ec/blob/master/doc/onboarding.md) a new repository
