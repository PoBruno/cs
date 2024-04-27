# cs2-config
## My hardware
- CPU: Intel(R) Core(TM) i5-7600
- Motherboard: ASUS PRIME Z270-K
- Memory: Corsair Vengeance 3000MHz CL30 DDR5 4x8GB
- GPU: NVIDIA GeForce GTX 1660 SUPER

## Reset steam cloud configuration
Before completing your configuration, reset steam cloud to remove any residual configuration from CS:GO/CS2 being automatically applied and reset everything to complete default.

1. Disable steam cloud for CS2
    1. Right click CS2 in your library and click properties
    1. Under "Steam Cloud", deselect "Keep game saves in the Steam Cloud for Counter-Strike 2"
1. Go to your user data folder for CS2 at `C:\Program Files (x86)\Steam\userdata\<account>\730` and delete the contents
1. Launch and then close CS2
1. Re-enable steam cloud for CS2
1. Go to CS2 in your steam library and click the "File conflict" button under "cloud status"
1. Select "Local Save" and then click "Continue"

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

