# Ad Astra Mekanism Fix

Forge 1.20.1. Fixes the "Broken tags in Mekanism recipes" warning you get with Ad Astra and Mekanism in the same pack.

Ad Astra 1.15.x ships a Mekanism crushing recipe, venus sandstone to 2 venus sand, that only loads when Mekanism is present. Its input is the tag `forge:sandstone/venus_sandstone`, which nothing defines, so Mekanism logs:

```
Empty item ingredient: {"tag":"forge:sandstone/venus_sandstone"}
Incomplete recipe detected: mekanism:crushing/venus_sandstone_to_venus_sand
```

This mod adds the tag (items and blocks), so the recipe works and the warning goes away. No code, just data.

## Requirements

- Minecraft 1.20.1, Forge 47+
- Ad Astra 1.15+
- Mekanism 10.4+

## Building

The jar is the contents of `src/` zipped up. On Linux or macOS:

```sh
cd src && zip -r ../Ad_Astra_Mekanism_Fix-1.0.2.jar .
```

On Windows, `build.ps1` does the same. Don't use `Compress-Archive` from Windows PowerShell 5.1, it writes paths with backslashes and Forge won't find `META-INF/mods.toml`.

## License

MIT
