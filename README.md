# Counter-Strike 2
## My hardware
- CPU: Intel(R) Core(TM) i5-7600
- Motherboard: ASUS PRIME Z270-K
- Memory: Corsair Vengeance 3000MHz CL30 DDR5 4x8GB
- GPU: NVIDIA GeForce GTX 1660 SUPER

## Game Configs
- Mouse DPI: 800
- Game Sensy: 1.65
- Mouse Polling Rate: 1000hz
- Monitor: PHILIPS Generic 75Hz 4:3

## Download **[autoexec.cfg](/autoexec.cfg)**
```
# Execute o comando no PowerShell
iex (Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/PoBruno/cs/refs/heads/main/update_autoexec.ps1' -UseBasicP) 

```

---

# Graficos
## Distancia da sombra
Para fazer com que as sombras sejam renderizadas à distância quando definidas como baixas, baixe [update_cs2_video.ps1](/update_cs2_video.ps1)
, clique com o botão direito e execute com o PowerShell. Isso alterará automaticamente os parâmetros cs2_video.txtpara fazer com que as sombras sejam renderizadas corretamente em baixa qualidade.


## Launch options
`-w 1152 -h 864 -novid -fullscreen -console -threads 4 -high +exec autoexec.cfg `

## In-game video settings
Resolution: 1152x864 (stretched) 75Hz

Starting from the "low" preset:

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| Boost Player Contrast            | Disabled                   |
| Wait for Vertical Sync           | Disabled                   |
| Multisampling Anti-Aliasing Mode | 4X MSAA                    |
| Global Shadow Quality            | Low                        |
| Model / Texture Detail           | Medium                     |
| Texture Filtering Mode           | Bilinear                   |
| Shader Detail                    | Low                        |
| Particle Detail                  | Low                        |
| Ambient Occlusion                | Medium                     |
| High Dynamic Range               | Quality                    |
| FidelityFX Super Resolution      | Disabled (Highest Quality) |
| NVIDIA Reflex Low Latency        | Enabled                    |


## NVIDIA Profile Inspector ([website](https://nvidiaprofileinspector.com))
Profile Inspector is an alternative to the "Manage 3D Settings" page in NVIDIA Control Panel for changing game profile settings. Once set, you can export/import profiles to make configuration from a clean install quicker and easier.

Editing the "Counter-strike 2" profile, starting from default settings:

| Setting                          | Value                      |
|----------------------------------|----------------------------|
| <div align="center">**2 - Sync and Refresh**</div> |          |
| Frame Rate Limiter V3            | 600 FPS                    |
| Maximum Pre-Rendered Frames      | 1                          |
| Ultra Low Latency - CPL State    | Ultra                      |
| Ultra Low Latency - Enabled      | On                         |
| Vertical Sync                    | Force off                  |
| <div align="center">**4 - Texture Filtering**</div> |         |
| Anisotropic Filter - Sample Optimization | On                 |
| Texture Filtering - Quality      | High performance           |
| Texture Filtering - Trilinear Optimization | On               |
| <div align="center">**5 - Common**</div> |                    |
| Ansel - Enabled                  | Off                        |
| CUDA - Force P2 State            | Off                        |
| Power Management - Mode          | Prefer maximum performance |
| rBAR - Feature                   | Enabled                    |
| rBAR - Options                   | `0x00000001`               |
| rBAR - Size Limit                | `0x0000000040000000`       |
| Shadercache - Cachesize          | Unlimited                  |
| Threaded Optimization            | Off                        |
| <div align="center">**Other**</div> |                         |
| Memory Allocation Policy         | `0x00000001` (...MODERATE_PRE_ALLOCATION) |
| <div align="center">**Unknown**</div> |                       |
| `0x002ED8CD` (Image Sharpening - sharpen) | `0x00000032`      |
| `0x002ED8CE` (Image Sharpening - ignore film grain) | `0x00000011` |
| `0x00598928` (Image Sharpening - enabled) | `0x00000001`      |
| `0x00598949` (Image Sharpening - enabled) | `0x0000000F`      |


# Development

```
cd 'C:/Program Files (x86)/Steam/steamapps/common/Counter-Strike Global Offensive/game/csgo/cfg'
git clone https://github.com/PoBruno/cs tmp
mv tmp/.git .
rm -r tmp
git checkout .
```
