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
