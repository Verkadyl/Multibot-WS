#!/bin/bash
#Ce script permet d'enregistrer les maps des zones cartographiés par un robot.

source ~/Multibot-WS/devel/setup.bash
#On vérifie si le dossier "map" existe.
if [ -d "~/Multibot-WS/scriptsBash/simulationAvecUnRobot/map" ];then
echo "Le répertoire \"map\" existe.";
#Si c'est le cas, on y va.
cd map
else
echo "Le répertoire \"map\" n'existe pas. Il sera créé."
#Si ce n'est pas le cas, on le créé puis on y va.
mkdir map
cd map
fi
#Pour pouvoir donner un nom correct à notre future map, on extrait la date et l'heure.
echo "Recherche de la date et l'heure d'aujourd'hui..."
date=$(date +%Y"_"%m"_"%d"_"%H"_"%M)
#On enregistre la map sous le double format .pgm et .yaml.
echo "Saving the map..."
rosrun map_server map_saver map:=/robot_1/map -f $date
echo "Map saved !"
