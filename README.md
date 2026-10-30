# ai-skills

My instructions for AI agents

- [AGENTS.md](./AGENTS.md) - general guidelines
- [CLAUDE.md](./CLAUDE.md) - reference for Claude (older Claude versions)
- [install.sh](./install.sh) - global install for Claude Code and Codex

## Usage

### Globally (Claude, Codex):

1. Run `./install.sh`
2. It overwrites `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md` with [AGENTS.md](./AGENTS.md)

### Per project

1. Copy `AGENTS.md` and `CLAUDE.md` to your project root
2. Customize

## Philosophy

- Keep it concise - remove unnecessary verbosity
- Be specific - provide concrete examples and requirements
- Avoid assumptions - state expectations explicitly
- Let the model work - don't overcomplicate, the LLM will handle the rest

The most powerful instructions are often the shortest ones. Focus on what matters, and the AI will take care of the implementation details.

## Recommendations

- Use Vercel's https://www.skills.sh for easy maintenance
- Use [mattpocock/skills](https://github.com/mattpocock/skills) - widely considered one of the most valuable skill sets available

Tips:

- Install globally
- For Claude choose 'symlinks'
- See `~/.agents/skills`

Example:

```
npx skills add -g mattpocock/skills
npx skills list -g
npx skills update
npx skills remove ...
```

## AI-Assisted Development Workflow

Requirements:

- `mattpocock/skills`

Steps:

1. `/grill-with-docs <GIT_HUB_ISSUE_URL>` - interviews me, updates docs
2. Use "Plan mode" and refine
3. Implement the plan - Claude and/or me
4. Review each step - read, ask, adjust
5. `/code-review`: the whole plan
6. Evaluate suggestions: accept, reject, or fix it yourself
7. Classic self-review: business logic, architecture, etc.
