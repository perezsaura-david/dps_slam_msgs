# A plane landmark with covariance
shape_msgs/Plane plane    # coef: ax + by + cz + d = 0
float64[9] covariance     # 3x3 row-major covariance of the minimal plane parameters

# Limits of the observed plane patch: ordered corner points tracing its outline.
# The points are expected to lie on (or near) the infinite plane above. Empty when
# the extent is unknown (the plane is then treated as unbounded).
geometry_msgs/Point[] boundary  # ordered corner points of the patch
