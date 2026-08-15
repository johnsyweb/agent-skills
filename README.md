# agent-skills

Installable agent skills for writing pull request descriptions, keeping a README up to date, and drafting Hubbard-form risk statements.

[![License: MIT](https://img.shields.io/github/license/johnsyweb/agent-skills)](LICENSE)
[![semantic-release: angular](https://img.shields.io/badge/semantic--release-angular-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

A public home for skills that make common writing work repeatable.

## Skills

- **pr-description** — a pull request title and Five-C body (Card, Context, Change, Confirmation, Considerations) from the branch's commits and a short conversation. When the repo has a pull-request template, the Five Cs augment it. The Five Cs follow [On Writing Pull Request Descriptions Well](https://www.johnsy.com/blog/2026/02/17/on-writing-pull-request-descriptions-well/).
- **readme** — a root `README.md` that is clear above the fold and up to date with the repo.
- **risk-statements** — a Hubbard-form statement: a 90% CI that an event occurs leading to an outcome, that causes an impact, over a time horizon, with an evidence grade. The form follows Douglas Hubbard, *How to Measure Anything*.

## Getting started

Install a skill, then invoke it by name:

```bash
npx skills add johnsyweb/agent-skills@pr-description -g
```

Then `/pr-description`. Pass a card URL or id when you have one.

```bash
npx skills add johnsyweb/agent-skills@readme -g
```

Then `/readme`.

```bash
npx skills add johnsyweb/agent-skills@risk-statements -g
```

Then `/risk-statements`. Pass an existing risk, a worry, or a register when you have one.

## Help

Open an issue on [johnsyweb/agent-skills](https://github.com/johnsyweb/agent-skills/issues).

## Maintainers

[johnsyweb](https://github.com/johnsyweb)

## Development status

Experimental — three skills, still being shaped.

## Local development

This repo uses [mise](https://mise.jdx.dev) for tools and [aube](https://github.com/jdx/aube) for packages. Clone, install, and symlink each skill directory into `~/.agents/skills` so edits are live:

```bash
git clone https://github.com/johnsyweb/agent-skills.git
cd agent-skills
mise run bootstrap
ln -sfn "$PWD/pr-description" ~/.agents/skills/pr-description
ln -sfn "$PWD/readme" ~/.agents/skills/readme
ln -sfn "$PWD/risk-statements" ~/.agents/skills/risk-statements
```

## Contributing

Commits follow [Conventional Commits](https://www.conventionalcommits.org/).

## Releasing

Pushes to `main` run [semantic-release](https://github.com/semantic-release/semantic-release). `feat` and `fix` commits cut a GitHub Release and update [CHANGELOG.md](CHANGELOG.md). People who already installed a skill run `npx skills update`. New installs:

```bash
npx skills add johnsyweb/agent-skills@<skill> -g
```

## Security

[Dependabot](https://docs.github.com/en/code-security/dependabot) opens weekly pull requests for GitHub Actions. A scheduled workflow runs `aube update --latest` and opens a pull request for npm packages, because Dependabot does not refresh `aube-lock.yaml`. Installs use the [aube paranoid bundle](https://aube.jdx.dev/security) except `strictStoreIntegrity`, which currently fails on `semantic-release`'s `npm` subtree.

## License

[MIT](LICENSE)
