#!/bin/bash
#Ce script permet de lancer une simulation de plusieurs drones cartographiant leur environnement par une méthode SLAM.

#Avant tout, on source pour que tout se passe bien dans la suite du programme.
source ~/Multibot-WS/devel/setup.bash
#On se dirige vers le dossier contenant les scripts.
cd ~/Multibot-WS/scriptsBash/simulationAvecPlusieursRobots
#On lance le scipt, qui va entraîner tous les autres, dans un terminal.
x-terminal-emulator -H -T "Final_Exploration_avec_plusieurs_robot" -e ./automatisationMappingMultipleRobots.sh
