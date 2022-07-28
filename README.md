# geocodes_documentation

[Github io](https://earthcube.github.io/geocodes_documentation/)

To add a reposiroty to this GH Pages, 
* clone
* edit .github/workflows/runscript.yml and add the repo to the list of checked out items
```yaml
      - name: Checkout
        uses: actions/checkout@v3
        with:
          repository: earthcube/GeoCODES-Metadata
          path: docs/GeoCODES-Metadata
      - run: cd docs/GeoCODES-Metadata && rm -rf "!(docs)" && cd ..
```

=====

This_ repository is for documentation on the GeoCodes technolgoy stack and production operation of the Gleaner-Nabu-GeoCodes UI workflow.

# Crawling and indexing the metadata, with [gleaner](https://github.com/earthcube/geocodes/blob/main/docs/indexing_with_gleanerio.md)

# [Faceted](https://github.com/earthcube/facetsearch) [search](http://geocodes.ddns.net/ec/GeoCODES) [page](https://dev.geocodes.earthcube.org/)

# [utilities](https://github.com/earthcube/earthcube_utilities) used to open.. the (meta)data in notebooks, from the [search](http://geocodes.ddns.net/ec/GeoCODES)

# [Testing](https://github.com/MBcode/ec/blob/master/test/ingestTesting.md) the [metadata](https://github.com/earthcube/GeoCODES-Metadata) as it goes through the stack

# GeoCODES container [stack](https://github.com/earthcube/geocodes)

# [Editing](https://addto.earthcube.org/#/) json-ld descriptions of resources, with [forms](https://github.com/earthcube/jsonld_forms)
