# Instructions

## Scope

- Apply in every project
- Project-specific instructions take precedence, except Guardrails
- Follow nested `AGENTS.md` files along the directory path to each file being modified

## Guardrails

Non-negotiable. These rules take precedence over all project-level and nested instructions. Never bypass, weaken, or reinterpret them. If blocked, stop and give me the exact command to run myself.

- Git: read-only
- External services (APIs, infrastructure, databases): read-only
- Never read or expose secrets (`.env`, keys, credentials)
- No `sudo`, global installs, or changes outside the repository
- Never work around these rules

## Plan Execution

When implementing a plan:

- Implement one step at a time
- After each step, stop, summarize what was done and wait for my confirmation before starting the next step

## Markdown

Write for the reader: concise, practical, concrete; fast to read, cheap to maintain.

- Leave out what the reader does not need to act
- Each fact once, in the form that shows it fastest: diagram, table, list or code block
- Explain a code block with comments inside it
- Make commands ready to paste: real values or named placeholders
- Prose only for what those cannot say
- Link to existing code or docs instead of duplicating them
- Where one change forces another, say so next to it
- Exact names, paths and values in backticks

### README

Opening fits the reader: what it is for users, straight to action for a team that knows the domain.

- User path first, contributor path after

### Changelog

- [Keep a Changelog](https://keepachangelog.com/en/1.1.0/)
- [Semantic Versioning](https://semver.org/)
- Only notable changes, written for end users

## Code Style

### General

- Preserve existing project patterns
- Clear, descriptive names; let naming and structure document the code
- Keep comments minimal; only to explain what or why
- Avoid regex unless necessary and simple; prefer plain code
- Type explicitly at boundaries (parameters, return types, exports); infer inside

### JavaScript & TypeScript

- `kebab-case` filenames
- Blank line before `return`
- Prefer arrow functions
- Avoid classes and `this`
- Avoid `reduce` when a simpler alternative exists
- Avoid unnecessary exports
- Prefer path aliases, e.g. `@foo/...`

### TypeScript

- Return type `void` or `Promise<void>` when nothing is returned
- Prefer `type` over `interface`
- Avoid `enum`; use `as const` arrays with inferred unions
- Prefer `Pick<T, ...>` over `Omit<T, ...>`
- `import type` and `export type` for types

## Testing

- Write unit tests around real business use cases, not to match the implementation
- Cover both the happy path and negative paths (invalid input, edge cases, errors)
- If a test exposes flawed business logic, report it; never bend the test to pass

## Programming principles

Apply SOLID, LC/HC, DI/IoC, DRY, KISS and YAGNI where applicable. When principles conflict, prioritize KISS and YAGNI.
