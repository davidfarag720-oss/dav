# Local project sources preserved with the fork

These projects were previously outside the shared Git repository in `C:\DAV`.
They are preserved here so the GitHub fork includes the local work needed to
continue development. The original working folders have not been moved.

| Folder | Contents |
| --- | --- |
| `capstone` | Vivado project and XADC Wizard configuration (`xadc_audio.xci`) |
| `lab1` | Calculator project, local HDL, constraints, and testbenches |
| `lab_2` | Stopwatch project, local HDL, and constraints |
| `lab_4` | FFT project referencing the repository's `lab4` sources |
| `project_1` | Local project HDL and constraints |
| `project_3` | VGA project referencing the repository's `lab3` sources |

Open the `.xpr` files in Vivado. References to the shared HDL now resolve inside
this repository. The lab1 project also includes `seg_driver.sv` and
`display_tb.sv`, which previously referenced the local Downloads folder.
References to generated synthesis checkpoints were removed; regenerate outputs
with Vivado. The capstone project targets the Basys3 `xc7a35tcpg236-1` device.
Install the matching Vivado IP and Basys3 board support as needed.

Generated caches, simulation runs, bitstreams, and synthesis outputs are excluded.
The XADC configuration is retained so Vivado can regenerate its IP products.
The original LTspice schematics are in [`../circuits`](../circuits).

This preservation step does not establish that the projects synthesize or run
correctly on hardware. The capstone Vivado project currently contains the XADC IP
configuration, while the integration HDL is in `digital_audio_visualizer`.
