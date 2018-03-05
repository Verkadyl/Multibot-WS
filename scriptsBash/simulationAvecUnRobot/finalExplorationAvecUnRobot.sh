#!/bin/bash
#Ce script permet de lancer une simulation d'un drone cartographiant son environnement par une méthode SLAM.

#Avant tout, on source pour que tout se passe bien dans la suite du programme.
source ~/paul_ws/devel/setup.bash
#On se dirige vers le dossier contenant les scripts.
cd ~/paul_ws/scriptsBash/simulationAvecUnRobot
#On lance le scipt, qui va entraîner tous les autres, dans un terminal.
x-terminal-emulator -H -T "Final_Exploration_avec_un_robot" -e ./automatisationMappingSingleRobot.sh
