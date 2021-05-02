# notebooks 🐍📔📔📔

Collection of jupyter notebooks I use for experimenting with stuff and note taking.
Not guaranteed to work on your computer. 
You can still browse the notebooks! (click on the nbviewer links below)
| title | file | view notebook |
|-------|------|---------------|
| Create PDF with ReportLab | `create-pdf/create-pdf.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/create-pdf/create-pdf.ipynb) |
| Get currently reading list from Goodreads API | `goodreads-rss.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/goodreads-rss.ipynb) |
| GraphQL | `graphql.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/graphql.ipynb) |
| ImageMagick Montage Quick Guide | `imagemagick/montage.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/imagemagick/montage.ipynb) |
| How to do stuff in Jupyter | `jupyter.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/jupyter.ipynb) |
| GeoJSON | `openaq/geojson.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/openaq/geojson.ipynb) |
| ipyleaflet | `openaq/ipyleaflet.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/openaq/ipyleaflet.ipynb) |
| Station clusters | `openaq/map-clusters.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/openaq/map-clusters.ipynb) |
| Mapbox | `openaq/mapbox.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/openaq/mapbox.ipynb) |
| US mobile air quality stations | `openaq/us-mobile-stations.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/openaq/us-mobile-stations.ipynb) |
| testing nested generators with yield from | `python/generators.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/python/generators.ipynb) |
| Random Python stuff | `python/misc.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/python/misc.ipynb) |
| What's new in Python 3.9? | `python/python3.9.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/python/python3.9.ipynb) |
| Unsplash API | `unsplash.ipynb` | [![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/dolugen/notebooks/blob/main/unsplash.ipynb) |
## how to start the lab
```
pipenv install
pipenv run jupyter lab
```

## how to update the readme

Invoke the `update-readme.sh` script. This will concatenate the header, footer and the generated TOC into the final `README.md`. That means `README.md` isn't edited directly.

Only notebooks beginning with a markdown H1 title (e.g. `# title`) is listed in the TOC.

- `_pre_toc.md` is the header file.
- an untracked `_toc.md` file is created when `update-readme.sh` is called.
- `_post_toc.md` is the footer file.
