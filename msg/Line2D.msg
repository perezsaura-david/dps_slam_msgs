# Line2D — 2D line landmark in Hesse normal form (2D representation of a plane/wall).
# The line is { x in R^2 : normal . x = distance }, with normal a unit 2D direction.
geometry_msgs/Vector3 normal   # Unit normal direction (2D line: z = 0)
float64 distance               # Signed distance from origin along the normal

# 2x2 row-major covariance over the line's minimal DOF [theta, distance],
# where theta = atan2(normal.y, normal.x). [s_tt, s_td, s_dt, s_dd]
float64[4] covariance
