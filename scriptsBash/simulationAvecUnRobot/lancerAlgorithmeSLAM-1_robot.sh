#!/bin/bash
#Ce script est appelé par le script automatisationMappingSingleRobot.sh.
#Il permet de démarrer l'algorithme de SLAM pour un seul robot présent dans la simulation.

#On commence par sourcer.
source ~/paul_ws/devel/setup.bash
#On lance l'algorithme de SLAM pour un seul robot.
roslaunch rrt_exploration single.launch
