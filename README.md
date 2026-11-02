# Ad Astra Mekanism Fix

Forge 1.20.1. Fixes the "Broken tags in Mekanism recipes" warning you get with Ad Astra and Mekanism in the same pack.

Ad Astra 1.15.x ships two Mekanism recipes that only load when Mekanism is present. Their inputs point at tags nobody defines:

| Tag | Mekanism recipe |
| --- | --- |
| `forge:sandstone/venus_sandstone` | Crushing: venus sandstone to 2 venus sand |
| `forge:ores/ice_shard` | Enriching: ice shard ore to 4 ice shards |

This mod adds both tags (items and blocks), so the recipes work and the warning goes away. No code, just data.

## Requirements

- Minecraft 1.20.1, Forge 47+
- Ad Astra 1.15+
- Mekanism 10.4+

## Building

The jar is the contents of `src/` zipped up. On Linux or macOS:

```sh
cd src && zip -r ../Ad_Astra_Mekanism_Fix-1.0.1.jar .
```

On Windows, `build.ps1` does the same. Don't use `Compress-Archive` from Windows PowerShell 5.1, it writes paths with backslashes and Forge won't find `META-INF/mods.toml`.

## License

MIT
