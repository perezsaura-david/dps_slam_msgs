# A finite cylinder landmark
geometry_msgs/PoseWithCovariance pose  # Center pose (+Z = axis) with 6x6 covariance
float64 radius                         # Cylinder radius (m)
float64 height                         # Cylinder extent along the axis (m)
float64[4] dimension_covariance        # 2x2 row-major covariance of [radius, height]
