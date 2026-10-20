# terrain-gen

A deterministic, simulation-driven terrain generator written in Ada.

`terrain-gen` aims to generate terrain through interacting geological and hydrological processes rather than relying only on a static heightmap. The planned simulation includes seeded noise, tectonic plates, rainfall, erosion, sediment transport, and river formation. The output is intended to be inspectable in a terminal using ANSI rendering.

> **Project status:** Early development.

## Project structure

```text
terrain-gen/
├── terrain_core/
├── terrain_tui/
├── .github/workflows/
├── CONTRIBUTING.md
└── README.md
```

## Requirements

- [Alire](https://alire.ada.dev/) (`alr`)
- GNAT Ada compiler
- GPRbuild

Alire can manage the compiler and build tools. See the [Alire getting-started guide](https://alire.ada.dev/docs/getting-started) for installation instructions for Windows and Linux.

## Build
```sh
cd terrain-gen
./build.sh
```

## Development platforms

The project is intended to build natively on:

- Windows 10 or later
- Debian Linux

## Design goals

- **Determinism:** a seed and configuration should reproduce the same simulation result, subject to documented platform/numerical constraints.
- **Simulation-first architecture:** geology, climate, erosion, and hydrology belong in the library, not the terminal frontend.
- **Inspectable results:** terrain should be easy to visualize in ANSI-capable terminals and export for further analysis.
- **Incremental complexity:** each process should be testable independently before being coupled into a full simulation.
- **Portable native builds:** use Alire/GNAT and keep platform-specific behavior at the edges.

## License

This project uses the PolyForm Noncommercial License 1.0.0. Read the repository's [`LICENSE`](LICENSE) file before using, modifying, or distributing the software. The license file is authoritative.
