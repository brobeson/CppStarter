# CppStarter

[![Static Analysis](https://github.com/brobeson/CppStarter/actions/workflows/static_analysis.yaml/badge.svg)](https://github.com/brobeson/CppStarter/actions/workflows/static_analysis.yaml)

This is a template repository to start a new C++ project.

## Using This Template

1. In GitHub, click **Use this template**, then click **Create a new repository**.
1. Fill out the form for your new repository.
   The values shouldn't affect the template's behavior.
1. Wait for GitHub to create your new repository.
1. After GitHub creates your repository, it should start the [New Project Setup workflow](/.github/workflows/template_customization.yaml).
   See the next section for details.

### New Project Setup Workflow

When you create a repository from this template, GitHub should automatically run this workflow to customize your repository.
The workflow performs the following steps:

1. Clone the repository.
1. Change all instances of `CppStarter` to the new repository's name.
1. Remove this workflow file.
1. Commit and push the changes to `main`.

## What You Get From This Template

This template repository provides all the boiler plate to get started with a high quality C++ project.

### Static Analysis Workflow

The template includes a static analysis workflow.
This workflow runs my [project file analysis workflow](https://github.com/brobeson/SupportFileQuality).

1. Markdown lint
1. Formatting with Prettier
1. Spell check with CSpell
