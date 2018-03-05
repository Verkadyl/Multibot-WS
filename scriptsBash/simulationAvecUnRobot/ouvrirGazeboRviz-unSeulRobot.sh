#!/bin/bash
#Ce script permet d'ouvrir les environnements de simulation Gazebo et Rviz.

#Là encore, on commence par sourcer.
source ~/Multibot-WS/devel/setup.bash
#On demande ensuite d'ouvrir les environnements de simulation Gazebo et Rviz avec un .world particulier.
roslaunch rrt_exploration_tutorials single_simulated_house.launch
