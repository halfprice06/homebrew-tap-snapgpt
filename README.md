# Homebrew Tap for SnapGPT

This is the official Homebrew tap for SnapGPT, a command-line utility that creates snapshots of your codebase for AI assistants.

## How to Install

First, add the tap:
```bash
brew tap halfprice06/tap-snapgpt
```

Then install SnapGPT:
```bash
brew install snapgpt
```

Or do both in one command:
```bash
brew install halfprice06/tap-snapgpt/snapgpt
```

## Requirements

- macOS
- Homebrew
- Command Line Tools (can be installed with `xcode-select --install`)

## Available Formulas

- `snapgpt`: Create readable snapshots of your codebase for AI assistants

## Usage

After installation, you can use SnapGPT by running:
```bash
snapgpt --help
```

For more information about SnapGPT and its features, visit the [main repository](https://github.com/halfprice06/snapgpt).

## Development

To test the formula locally:
```bash
brew install --build-from-source Formula/snapgpt.rb
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -am 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any problems or have questions, please [open an issue](https://github.com/halfprice06/homebrew-tap-snapgpt/issues).
