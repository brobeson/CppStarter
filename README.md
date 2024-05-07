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

### Visual Studio Code Configuration

I use [Visual Studio Code](https://code.visualstudio.com/), so this template includes settings, tasks, and extension recommendations for that IDE.

#### Tasks

The VS Code configuration includes a set of tasks to emulate the GitHub workflows.
These can help you check the entire code base of your project before pushing.
Each task has the prefix `ProjectName:`, where "ProjectName" is the name of the repo you create from the template.
The available tasks are:

- `ProjectName: Spell Check` - Run CSpell on all files in the repository.
  Spelling mistakes are captured in the Problems panel.
- `ProjectName: Markdownlint` - Run Markdownlint on all Markdown files in the repository.
  Markdown mistakes are captured in the Problems panel.
- `ProjectName: Prettier Format` - Run Prettier on all files in the repository.
  This doesn't report formatting errors; it reformats the files in-place.
- `ProjectName: Pipeline` - Run all the other tasks.
  This is a shortcut to invoke all the other tasks with a single command.
