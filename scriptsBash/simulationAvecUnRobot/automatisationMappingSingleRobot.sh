#!/bin/bash
#On commence par sourcer.
source ~/Multibot-WS/devel/setup.bash
#On navigue jusqu'au dossier contenant les scripts. Plusieurs vont être lancés à partir d'ici.
cd ~/Multibot-WS/scriptsBash/simulationAvecUnRobot

#Là, on ouvre un terminal qui va être chargé de gérer Gazebo / Rviz. Il lance le script <ouvrirGazeboRviz-unSeulRobot.sh>
x-terminal-emulator -H -T "Gazebo_&_Rviz_pour_un_robot" -e ./ouvrirGazeboRviz-unSeulRobot.sh

#Pour permettre au programme de se dérouler correctement, il faut laisser le temps à Gazebo et Rviz de se lancer.
#Cela revient à retarder le lancement de l'algorithme de 8 secondes.
sleep 8

#Ensuite, on va lancer un autre terminal chargé de lancer l'algorithme de SLAM.
#Le script chargé de cela s'appelle <lancerAlgorithmeSLAM-1_robot.sh>
x-terminal-emulator -H -T "Algorithme_SLAM_pour_un_robot" -e ./lancerAlgorithmeSLAM-1_robot.sh

#Là encore, on laisse avant de passer à l'étape suivante.
sleep 10

#Techniquement, on n'a plus qu'à publish nos <click_points> qui contiennent les coordonnées délimitant la zone à explorer.
#On lance dans un autre terminal le script <publishDesClickedPoints.sh>
x-terminal-emulator -H -T "Publish_des_clickedPoints" -e ./publishDesClickedPoints.sh

