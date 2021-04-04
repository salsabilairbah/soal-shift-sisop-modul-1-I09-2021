#!/bin/bash

dated=$(date +"%m%d%Y")
zip -P /home/julius/Documents/SISOP/Modul_1/$dated -r /home/julius/Documents/SISOP/Modul_1/Collection Cat* Rabbit*
rm -r /home/julius/Documents/SISOP/Modul_1/Cat*
rm -r /home/julius/Documents/SISOP/Modul_1/Rabbit*
