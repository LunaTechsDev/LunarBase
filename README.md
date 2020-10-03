# LunarBase

This is the LunaTechs base RPG Maker plugin development project. Its used to
demonstrate and show you our basic workflow with [Haxe] and [LunaTea].

## Getting Started
A quick guide to getting started with LunarBase.

Before starting be sure to download and install [Node](https://nodejs.org/en/) & [Git](https://git-scm.com/).

1. Clone this repository

```bash
git clone https://github.com/LunaTechsDev/LunarBase.git
```

2. Install node dependencies

```bash
npm install
```

3. Install LunaTea & dependencies

```bash
npx lix download
```

## Compiling a Plugin
You can compile the test plugin by running the following command

```bash
npm run compile
```
You can also use LunaWizard to compile your plugin

```bash
luna-wizard build
```

See [LunaWizard](https://github.com/lunatechsdev/lunawizard) for further information


## Watch for Changes
You can watch for changes in the source files by running the following command

```bash
npm run watch
```
You can also use LunaWizard to watch for changes

```bash
luna-wizard build compile.hxml --watch ./src
```
See [LunaWizard](https://github.com/lunatechsdev/lunawizard) for further information

## Updating LunaTea
To update LunaTea we use the `lix` package manager to install from GitHub the
latest version of LunaTea.

```bash
npx lix install gh:LunaTechsDev/LunaTea
```

## Itch Automation
LunarBase includes GitHub workflow actions that automatically build and publish
your plugins to itch.io

The GitHub actions use the repository name and organization name which
itch uses for the url, so you need to ensure the url exists before the
GitHub action will work properly. 

For example https://organization.itch.io/repository_name

If your project is not under an organization and you're using our project for
your own projects then you will need to edit the GitHub action workflows.

Changing 

```bash
ITCH_USER: ${{ github.event.organization.name }}
```

to

```bash
ITCH_USER: your_username
```

## Example Plugin
The example plugin is a working hello world example which demonstrates how to
create a basic plugin using LunaTea. Its documented to show you some of
the common concepts in plugin development and how to accomplish that using our
Haxe toolset.

Find the example plugin in the `src` directory
