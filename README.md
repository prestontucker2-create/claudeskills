# claudeskills

Personal Claude Code skills repo. Skills here become `/skill-name` slash commands in Claude Code.

## Install (this machine)

```bash
cd ~/Projects/claudeskills && bash install.sh
```

## Install (new machine)

```bash
git clone https://github.com/prestontucker2-create/claudeskills ~/Projects/claudeskills
bash ~/Projects/claudeskills/install.sh
```

Or one-liner:

```bash
curl -s https://raw.githubusercontent.com/prestontucker2-create/claudeskills/main/install.sh | bash
```

## Adding a skill

Drop a `.md` file into `skills/`. The filename becomes the slash command name.

Example: `skills/code-review.md` → `/code-review` in Claude Code.

### Skill file format

The content of the `.md` file is the prompt Claude runs when you invoke the command.

```markdown
Review the provided code for correctness, security issues, performance, and readability.
Be specific and cite line numbers where relevant.
```

## Updating skills on an installed machine

Symlinks point directly into the repo, so just pull:

```bash
git -C ~/Projects/claudeskills pull
```

No re-install needed after initial setup.

## Notes

- Skills are **local to each machine** — your GitHub repo is the source of truth
- `~/.claude/commands/*.md` is where Claude Code looks for custom slash commands
- Skills from this repo are symlinked there, so edits here reflect immediately
