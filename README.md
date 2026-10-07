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

Install the whole package globally:

```bash
npx skills add johnsyweb/agent-skills -g
```

The CLI lists the skills and lets you pick which ones and which agents. To take every skill without prompts:

```bash
npx skills add johnsyweb/agent-skills -g --skill '*' -y
```

Or one skill, for example:

```bash
npx skills add johnsyweb/agent-skills@pr-description -g
```

Then invoke by name: `/pr-description`, `/readme`, `/risk-statements`.

### Update

```bash
npx skills update -g
```

That pulls the latest from GitHub for every global skill the CLI recorded. One skill: `npx skills update readme`.

## Help

Open an issue on [johnsyweb/agent-skills](https://github.com/johnsyweb/agent-skills/issues).

## Maintainers

[johnsyweb](https://github.com/johnsyweb)

## Development status

Experimental — three skills, still being shaped.

## Local development

This repo uses [mise](https://mise.jdx.dev) for tools and [aube](https://aube.jdx.dev/) for packages (see [`docs/adr/`](docs/adr/)). Clone, install, and symlink each skill directory into `~/.agents/skills` so edits are live:

```bash
git clone https://github.com/johnsyweb/agent-skills.git
cd agent-skills
mise run bootstrap
ln -sfn "$PWD/pr-description" ~/.agents/skills/pr-description
ln -sfn "$PWD/readme" ~/.agents/skills/readme
ln -sfn "$PWD/risk-statements" ~/.agents/skills/risk-statements
mise run update             # after git pull
mise run update-deps        # within-range bumps
```

## Contributing

Commits follow [Conventional Commits](https://www.conventionalcommits.org/). `main` requires a green `build` check (CI and aube-lock both publish that name). Apply or refresh the ruleset with:

```bash
bash scripts/apply-branch-protection.sh
```

## Releasing

Pushes to `main` run [semantic-release](https://github.com/semantic-release/semantic-release). `feat` and `fix` commits cut a GitHub Release and update [CHANGELOG.md](CHANGELOG.md). Install and update commands live in Getting started.

## Security

[Mend Renovate](https://docs.renovatebot.com/) owns npm and GitHub Actions updates via [johnsyweb/renovate-config](https://github.com/johnsyweb/renovate-config) (seven-day cooling; automerge when checks are green). The `aube-lock` workflow regenerates `aube-lock.yaml` on Renovate branches. Installs use jailed builds and related aube strictness; full `paranoid: true` is off because `strictStoreIntegrity` fails on `semantic-release`'s `npm` subtree — see [docs/adr/0001-aube-package-manager.md](docs/adr/0001-aube-package-manager.md) and [docs/adr/0002-renovate-for-dependency-updates.md](docs/adr/0002-renovate-for-dependency-updates.md).

## License

[MIT](LICENSE)
