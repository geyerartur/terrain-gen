# Contributing

Thanks for your interest in `terrain-gen`. The project is in early development, so small, focused contributions and clear technical discussions are especially useful.

## Before making a change

1. Check existing issues and discussions to avoid duplicating work.
2. For substantial changes, open an issue first to discuss the approach.
3. Keep pull requests focused on one concern.
4. Do not assume a planned simulation feature is already implemented; check the current source before building on it.

## Development environment

Install Alire, GNAT, and GPRbuild using the [Alire getting-started guide](https://alire.ada.dev/docs/getting-started).

Build the library:

```sh
cd terrain_core
alr build
```

Build the terminal application:

```sh
cd ../terrain_tui
alr build
```

Run the TUI from its crate directory:

```sh
alr run
```

The intended supported development platforms are Windows and Debian Linux. Build locally on your target operating system rather than committing compiled artifacts.

## Design principles

- Keep simulation logic independent of terminal I/O and ANSI rendering.
- Prefer explicit types and clear package boundaries over hidden global state.
- Keep random behavior reproducible from an explicit seed.
- Make simulation phases independently understandable and, where practical, independently testable.
- Avoid introducing dependencies without a concrete need.
- Document assumptions, units, boundary conditions, and numerical limitations in simulation code.
- Prefer small, reviewable changes over broad refactors.

For numerical changes, explain the model or algorithm being implemented, the assumptions it makes, and any known stability or conservation limitations. Where relevant, include a small reproducible example or test.

## Code and pull-request expectations

Before submitting a pull request:

- Build both `terrain_core` and `terrain_tui`.
- Run any tests relevant to the change.
- Describe the behavior changed and why.
- Include test or reproduction steps.
- Mention platform-specific behavior or known limitations.
- Update documentation when commands, public interfaces, or project structure change.

The GitHub Actions workflow builds both crates on Windows and Linux. Passing CI is necessary but does not replace tests for numerical correctness.

## Reporting bugs

Include, where possible:

- Operating system and version
- Alire and GNAT versions
- The exact command that failed
- Relevant compiler output
- Simulation configuration and seed, if applicable
- A minimal reproduction

Do not include secrets or unrelated personal information in bug reports.

## Licensing

By submitting a contribution, you agree that it will be distributed under the project's licensing terms. Read [`LICENSE`](LICENSE), including the PolyForm Noncommercial License 1.0.0 terms. If you are unsure whether a proposed use or contribution is compatible with those terms, ask before submitting it.
