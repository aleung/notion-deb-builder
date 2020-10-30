# Notion DEB Builder

Build Notion packages for Ubuntu/Debian, using resources extracted from Notion's Windows or macOS packages.

## Prebuilt packages

See [Releases](https://github.com/davidbailey00/notion-deb-builder/releases)

## Requirements

1. Install required packages `node.js`, `7z`, `convert`, `fakeroot` and `dpkg`.

   Using Ubuntu or Debian:

   ```sh
   sudo apt install nodejs p7zip-full imagemagick fakeroot
   ```

   Or, using macOS:

   ```sh
   brew install node p7zip imagemagick fakeroot dpkg
   ```

2. Clone this repo and `cd` into the folder

3. Install Node.js dependency packages:

   ```sh
   npm install
   ```

## Build

Edit the `config` section in `package.json`:
- Set `platform` with either `win` or `mac`, depending on which sources you would like to build from.
- Set `version` to the Notion installer version. Visit https://www.notion.so/desktop to check available version for specific platform.

Run the build script:

```sh
npm run download
npm run build
```

Once complete, you should have a DEB package in the `out` directory.
