#!/bin/bash
#Ce script permet de mettre fin à la simulation de cartographie.
#On commence par sourcer.
source ~/Multibot-WS/devel/setup.bash
#On se dirige vers le dossier de script contenant le nécessaire à la simulation de plusieurs robots.
cd ~/Multibot-WS/scriptsBash/simulationAvecPlusieursRobots
#On lance dans un terminal le script chargé d'enregistrer la map créée par la méthode de SLAM.
#Le script exécuté est : <enregistrerLaMap.sh>
x-terminal-emulator -H -T "Saving_the_map" -e ./enregistrerLaMap.sh
#Le <sleep> est là pour laisser le temps à la map de s'enregistrer.
sleep 4
#Et ce n'est qu'après qu'on ferme les différents noeuds.
#C'est le script <closeProcess.sh> que l'on appelle qui fermera tous les process en cours.
x-terminal-emulator -H -T "Closing_process" -e ./closeProcess.sh

