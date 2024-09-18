# WAVES Lab Webpage

This repository contains the website pages for the Wireless, Audio, Vision, and Electronics for Sensing (WAVES) Lab at the University of Pennsylvania. The webpage is built using [Jekyll](https://jekyllrb.com) and [Bootstrap](https://getbootstrap.com/). The publication pages are based on codes from the [USLC Lab webpage repository](https://github.com/uslc-lab/uslc-lab.github.io).

## Local Development

To develop the website locally, you need to have Jekyll installed. Follow the official Jekyll [installation guide](https://jekyllrb.com/docs/installation/) for your operating system.

Once Jekyll is installed, serve the page locally by running:

```bash
bundle exec jekyll serve --livereload
```

Access the local version of the website by opening your browser and navigating to:

```
http://127.0.0.1:4000
```

## Making Changes

This repository provides an easy framework for adding new information about lab news, highlights, publications, member changes, and project pages. Here's how to make changes to each type of content:

### Adding News

To add news items:

1. Open the file `_data/news.yaml`.
2. Add a new entry with the following format:

```yaml
- date: YYYY-MM-DD
  headline: "A sentence describing the news."
```

The home page displays the latest `news_limit` items. To change this number, modify the `news_limit` value in the front matter of `_pages/index.html`.

### Adding Highlights

To add a new highlight:

1. Open the file `_data/highlights.yaml`.
2. Add a new entry with the following format:

```yaml
- headline: "A short title."
  description: "A more detailed one-sentence description."
  img_link: "A hyperlink to the image."
  hyperlink: "An optional hyperlink to a page with more information."
```

Use images with a size of 1200 x 600 pixels for best results. Remove outdated highlights as necessary.

### Adding Publications

To add a new publication:

1. Open the file `_bibliography/ref.bib`.
2. Add a new BibTeX entry with the following custom fields:

```
@article{example2024,
  title={Example Paper Title},
  author={Author, A. and Author, B.},
  journal={Journal Name},
  year={2024},
  status={published}, % Options: published, under-review, preprint
  arxiv={2401.00000} % Optional: arXiv ID
}
```

The `status` field is mandatory for correct categorization. The `arxiv` field is optional.

### Adding Projects

To add a new project:

1. Create a new folder in the `_projects` directory for your project.
2. Add your project's static content to this folder.
3. Create a `metadata.md` file in the project folder with the following structure:

```yaml
---
name: project_nickname
title: Official Project Title
date: YYYY-MM-DD
project_page: /projects/your_project_folder/
teaser: path/to/teaser/image.jpg
visible: true
topic: robotic-perception
description: |
    Multiline description is supported.

    You can add more paragraphs as needed.
assets:
    paper: link_to_paper
    code: link_to_code
awards: [
    "List of strings.",
    "Leave blank if none."
]
---
```

Currently, only the following topics are valid:
+ `wireless`
+ `machine-learning`
+ `digital-health`
+ `robotic-perception`

The following asset types are valid:
+ `paper`
+ `code`
+ `slides`
+ `video`

Ensure that the `topic` and `assets` fields use values from `_data/research/valid_topics.yaml` and `_data/research/valid_asset_types.yaml` respectively. To add new topics or asset types, modify these files.

### Updating Members

To update member information:

1. Open the file `_data/team_members.yaml`.
2. Add or modify entries using the following format:

```yaml
- name: Full Name
  photo: link_to_photo
  category: see_below_for_valid_options
  info: A short introduction.
  email: email@example.com
  website: https://personal-website.com  # Optional
  destination: Destination  # Optional, used for alumni. Set to null for other categories.
```

Supported categories are:
- `faculty`
- `postdoc`
- `phd`
- `master`
- `undergrad`
- `alumni`

Ensure that the `category` field uses one of the values from the list above. For alumni, you can include a `destination` field to indicate where they went after leaving the lab. For all other categories, either omit this field or set it to `null`.
