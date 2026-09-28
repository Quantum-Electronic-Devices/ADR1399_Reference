#!/bin/bash
set -euo pipefail

kicad-cli sch export python-bom reference_board.kicad_sch
kicost -i reference_board-bom.xml -o reference_board.csv -w --variant default --include farnell mouser digikey --currency EUR
