[![funding](https://img.shields.io/static/v1?label=published+through&message=LIFE+RIPARIAS&labelColor=00a58d&color=ffffff)](https://www.riparias.be/)
[![fetch-data](https://github.com/riparias/taxon-keys-early-alert/actions/workflows/check_taxon_info.yaml/badge.svg)](https://github.com/riparias/taxon-keys-early-alert/actions/workflows/check_taxon_info.yaml)

# Generate taxon keys for LIFE RIPARIAS early alert tool

## Rationale


This repository contains the functionality to get the GBIF taxon keys to be used by the LIFE RIPARIAS [early alert tool](alert-riparias.be). The source taxa are retrieved from the followin GBIF checklists:
1. the LIFE RIPARIAS target species list
2. the List of Invasive Alien Species of Union concern (still to be published)
3. the DVW (De Vlaamse Waterweg) target species list

## Workflow

1. read [species list]() as exported from the LIFE RIPARIAS early alert tool
2. read and combine taxonomic information from both checklists and GBIF Backbone
3. Save the names and the GBIF taxon keys we should use in the early alert tool
4. Check that the exported names and taxon keys in 1 are identical the ones in 3

## Repo structure

<!-- This section helps users (and probably you!) to find their way around this repository. You can leave it as is, unless you're starting to adapt the structure a lot. -->

The repository structure is based on [Cookiecutter Data Science](http://drivendata.github.io/cookiecutter-data-science/) and the [Checklist recipe](https://github.com/trias-project/checklist-recipe). Files and directories indicated with `GENERATED` should not be edited manually.

```
├── README.md              : Description of this repository
├── LICENSE                : Repository license
├── taxon-keys-early-alert.Rproj : RStudio project file
├── .gitignore             : Files and directories to be ignored by git
├── .github
│   └── workflows          : GitHub actions to periodically run the check in ./src
│
├── src
│   └── retrieve_compare_taxon_keys.Rmd   : Check taxonomic info script
│
└── data
    ├── reference          : LIFE RIPARIAS early alert species list export
    └── processed          : names and GBIF taxon keys to be used in early alert tool GENERATED
```

## Installation

1. Click on `Use this template` to create a new repository on your account
2. Open the RStudio project file
3. Open the `dwc_mapping.Rmd` [R Markdown file](https://rmarkdown.rstudio.com/) in RStudio
4. Install any required packages
5. Click `Run > Run All` to generate the processed data
6. Alternatively, click `Build > Build website` to generate the processed data and build the website in `docs/` (advanced)

## Contributors

<!-- This section lists everyone who contributed to this repository. You can maintain a manual list here or reference the contributors on GitHub. -->

[List of contributors](<!-- Add the URL to the GitHub contributors of your repository here, e.g. https://github.com/trias-project/checklist-recipe/contributors -->)

## License

[MIT License](LICENSE) for the code and documentation in this repository. The included data is released under another license.
