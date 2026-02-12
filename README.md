# bb-cli

A simple CLI tool for Bitbucket pull requests.

## Prerequisites

- **bash** - The script is written in bash
- **curl** - For API calls
- **python3** - For JSON formatting (optional, falls back to raw output)

**Platform Support:**
- ✅ Linux
- ✅ macOS
- ✅ Windows (via WSL, Git Bash, or Cygwin)

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

# Create a draft PR
bb-cli create-pr --draft feature/wip main "WIP: New feature"

# Create a PR with reviewers
bb-cli create-pr --reviewers=alice,bob feature/auth main "Add authentication"

# Create a PR with custom description
bb-cli create-pr --description="This PR adds user authentication" feature/auth main "Add auth"

# Create a PR with AI-generated description from stdin
echo "## Summary\nAdds user login\n\n## Changes\n- Login form\n- Auth service" | \
  bb-cli create-pr --description=- feature/auth main "Add authentication"

# Combine multiple flags
bb-cli create-pr --draft --reviewers=alice,bob --description="Please review" feature/x main "New feature"

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

## License

MIT
