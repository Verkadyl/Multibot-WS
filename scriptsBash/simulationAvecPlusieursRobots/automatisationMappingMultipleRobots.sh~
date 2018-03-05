#!/bin/bash
#On commence par sourcer.
source ~/paul_ws/devel/setup.bash
#On navigue jusqu'au dossier contenant les scropts. Plusieurs vont être lancés à partir d'ici.
cd ~/paul_ws/scriptsBash/simulationAvecPlusieursRobots

#Là, on ouvre un terminal qui va être chargé de Gazebo / Rviz
x-terminal-emulator -H -T "Gazebo_&_Rviz_pour_trois_robots" -e ./ouvrirGazeboRviz-plusieurs-Robots.sh
#Pour permettre au programme de se dérouler correctement, il faut laisser le temps à Gazebo et Rviz de se lancer.
#Cela revient à retarder le lancement de l'algorithme de 8 secondes.
sleep 8

#Ensuite, on va lancer un autre terminal chargé de lancer l'algo.
#Le script chargé de cela s'appelle <lancerAlgorithmeSLAM-1_robot.sh>
x-terminal-emulator -H -T "Algorithme_SLAM_pour_trois_robots" -e ./lancerAlgorithmeSLAM-plusieurs_robots.sh
#Là encore, on laisse avant de passer à l'étape suivante.
sleep 10

#Techniquement, on n'a plus qu'à publish nos <click_points> qui contiennent les coordonnées délimitant la zone à explorer.
#On lance dans un autre terminal le script <publishDesClickedPoints.sh>
x-terminal-emulator -H -T "Publish_des_clickedPoints" -e ./publishDesClickedPoints.sh
