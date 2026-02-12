# bb-cli

A simple CLI tool for Bitbucket pull requests.

## Install

**One-liner:**

```bash
curl -fsSL https://raw.githubusercontent.com/josejibin/bb-cli/main/install.sh | bash
```

**Manual:**

```bash
git clone https://github.com/josejibin/bb-cli.git
sudo cp bb-cli/bb-cli /usr/local/bin/
sudo chmod +x /usr/local/bin/bb-cli
```

## Setup

```bash
bb-cli configure
```

This will prompt you for:
- **Bitbucket token** — your app password or OAuth token
- **Workspace** — your Bitbucket workspace name
- **Repo** — your repository name

Config is saved to `~/.bb-cli-config` with `600` permissions (only your user can read it).

## Usage

```bash
# Create a pull request
bb-cli create-pr test/pr-automate dev "My PR title"

# Create a PR with auto-generated title
bb-cli create-pr feature/login main

# List open pull requests
bb-cli list-prs

# List branches (sorted by most recent)
bb-cli branches

# Override workspace and repo for a single command
bb-cli --workspace=myteam --repo=myrepo list-prs
bb-cli --workspace=acme --repo=backend create-pr feature/auth main
```

## Using with Claude Code

Just ask Claude Code to run commands like:

```
"Run bb-cli create-pr test/pr-automate dev"
"Run bb-cli list-prs"
"Run bb-cli branches"
```

## Requirements

- `bash`
- `curl`
- `python3` (for JSON output formatting — falls back to raw output if unavailable)

## License

MIT
