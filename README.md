# agent-skills

Installable agent skills for writing pull request descriptions and keeping a README up to date.

A public home for skills that make common git-host work repeatable.

## Getting started

Install a skill, then invoke it by name:

```bash
npx skills add johnsyweb/agent-skills@pr-description -g
```

Then `/pr-description`. Pass a card URL or id when you have one.

**pr-description** drafts a pull request title and Five-C body (Card, Context, Change, Confirmation, Considerations) from the branch's commits and a short conversation. When the repo has a pull-request template, the Five Cs augment it. The Five Cs follow [On Writing Pull Request Descriptions Well](https://www.johnsy.com/blog/2026/02/17/on-writing-pull-request-descriptions-well/).

```bash
npx skills add johnsyweb/agent-skills@readme -g
```

Then `/readme`.

**readme** ensures the root `README.md` is clear above the fold and up to date with the repo.

## Help

Open an issue on [johnsyweb/agent-skills](https://github.com/johnsyweb/agent-skills/issues).

## Maintainers

[johnsyweb](https://github.com/johnsyweb)

## Development status

Experimental — two skills, still being shaped.

## Local development

Clone this repository and symlink each skill directory into `~/.agents/skills` so edits are live:

```bash
git clone https://github.com/johnsyweb/agent-skills.git
ln -sfn "$PWD/agent-skills/pr-description" ~/.agents/skills/pr-description
ln -sfn "$PWD/agent-skills/readme" ~/.agents/skills/readme
```

## Contributing

Commits follow [Conventional Commits](https://www.conventionalcommits.org/).

## Releasing

Push to `main`. People who already installed a skill run `npx skills update`. New installs:

```bash
npx skills add johnsyweb/agent-skills@<skill> -g
```
