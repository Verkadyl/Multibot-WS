#!/bin/bash
#Ce script est appelé par le script automatisationMappingSingleRobot.sh.
#Il permet de démarrer l'algorithme de SLAM pour plusieurs robots présent dans la simulation.

#On commence par sourcer.
source ~/Multibot-WS/devel/setup.bash
#On lance l'algorithme de SLAM pour un seul robot.
roslaunch rrt_exploration three_robots.launch
