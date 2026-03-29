# Crystal Lang Playground

## Use This File For

Follow this file for repository-specific guidance.
Use [README.md](../README.md) for broader setup, workflow, and project structure details instead of duplicating them here.

## Project Snapshot

- Language: Crystal
- Build tool: Shards
- App type: small console application
- Current maturity: still close to the Crystal starter template
- Main entrypoint and target: [src/playground.cr](../src/playground.cr)
- Tests: [spec/playground_spec.cr](../spec/playground_spec.cr)
- Manifest: [shard.yml](../shard.yml)
- External dependencies: none yet

## Working Conventions

- Keep shard and target names lowercase. The current shard and target are `playground`.
- Keep Crystal module and class names CamelCase. The current top-level module is `Playground`.
- Prefer minimal, direct Crystal code over framework-style abstractions unless the project grows beyond a simple console app.
- Preserve the existing starter layout unless there is a clear reason to introduce more structure.
- When touching template files, replace placeholders rather than leaving starter text in place. Current placeholders still exist in [shard.yml](../shard.yml) and [src/playground.cr](../src/playground.cr).

## Key Files

- [src/playground.cr](../src/playground.cr): module definition, `VERSION`, starter `Greeter`, and the current executable code path
- [spec/playground_spec.cr](../spec/playground_spec.cr): starter spec that verifies `Playground::VERSION`
- [spec/spec_helper.cr](../spec/spec_helper.cr): spec bootstrap
- [README.md](../README.md): setup, common commands, and template customization checklist

## Build, Test, And Debug

- Run the app with `shards run playground` or `crystal run src/playground.cr`.
- Build the target with `shards build`, which writes `bin/playground`.
- Run tests with `crystal spec`.
- The VS Code task in [.vscode/tasks.json](../.vscode/tasks.json) builds the active file with `${relativeFile}`. Only run it when the active editor is a Crystal source file, or it may try to compile the wrong file.
- The debug configuration in [.vscode/launch.json](../.vscode/launch.json) is set up for LLDB with Crystal formatters and disables the container ASLR warning.

## Editing Guidance

- Keep the starter test suite passing when making changes.
- If you add behavior in [src/playground.cr](../src/playground.cr), extend [spec/playground_spec.cr](../spec/playground_spec.cr) to cover it.
- Avoid introducing unnecessary dependencies or complex abstractions into this repository in its current state.
- If you convert the template into a real project, update the README, shard metadata, module documentation, and starter sample code together so the repo stays internally consistent.

## Current Pitfalls

- [src/playground.cr](../src/playground.cr) still contains starter TODO comments and example code executed at load time.
- [shard.yml](../shard.yml) still contains placeholder author metadata.
- The current task and debug workflow assumes the active file is the Crystal entrypoint or another valid `.cr` source file.
