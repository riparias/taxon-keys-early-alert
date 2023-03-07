# Generate taxon keys for LIFE RIPARIAS early alert tool

## Rationale


This repository contains the functionality to get the GBIF taxon keys to be used by the LIFE RIPARIAS [early alert tool](alert-riparias.be). The source taxa are retrieved from the followin GBIF checklists:
1. the LIFE RIPARIAS target species list
2. the List of Invasive Alien Species of Union concern (still to be published)
3. the DVW (De Vlaamse Waterweg) target species list

## Workflow

<!-- [source data](data/raw) → Darwin Core [mapping script](src/dwc_mapping.Rmd) → generated [Darwin Core files](data/processed)
This section describes how we go from raw data to standardized Darwin Core data -->

TBD

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
│   └── generate_taxon_keys.Rmd   : Darwin Core mapping script
│
└── data
    ├── reference          : LIFE RIPARIAS early alert species list export
    └── processed          : taxa and vernacular names to be used in early alert tool GENERATED
```

## Installation

<!-- This section is for users who want to download/adapt your checklist repository. You can leave it as is. -->

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

<!-- The license is the open source license for the code and documentation in this repository, not the checklist data (that you can define in dwc_mapping.Rmd). As your repository is based on https://github.com/trias-project/checklist-recipe, we'd like it if you kept the open and permissive MIT license. You're welcome to add your name as a copyright holder (because your are for your own code contributions), which you can do in the LICENSE file. If you want to release your repository under a different license, please indicate somehow that it was based on https://github.com/trias-project/checklist-recipe. We know, licenses are complicated. See https://choosealicense.com/ for more information. -->

[MIT License](LICENSE) for the code and documentation in this repository. The included data is released under another license.
