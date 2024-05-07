source install/setup.bash
ros2 service call /SaveMap ig_lio_c_msgs/srv/SaveMap "{save_path: '$(pwd)', resolution: 0.0}"
ros2 run nav2_map_server map_saver_cli -f new
ros2 service call /CovertMap ig_lio_c_msgs/srv/CovertMap "{pcd_path: '$(pwd)/src/ig_lio_c/octomapfg_output.pcd',map_file_name: 'new_map'}"

	
