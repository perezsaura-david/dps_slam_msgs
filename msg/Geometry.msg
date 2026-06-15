# Tagged union of supported landmark geometries.
# `type` selects which field below is valid; the others are ignored.

uint8 UNKNOWN=0
uint8 POINT=1     # use point
uint8 POSE=2      # use pose
uint8 VECTOR=3    # use vector
uint8 PLANE=4     # use plane
uint8 CYLINDER=5  # use cylinder
uint8 LINE=6      # use line

uint8 type

# Each geometry bundles its own covariance (POSE via the standard PoseWithCovariance,
# the rest via dedicated messages).
geometry_msgs/PoseWithCovariance pose      # POSE
Point3D                          point     # POINT
Vector3D                         vector    # VECTOR
Plane3D                          plane     # PLANE
Cylinder                         cylinder  # CYLINDER
Line2D                           line      # LINE
