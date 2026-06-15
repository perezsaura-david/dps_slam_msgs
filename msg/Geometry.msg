# Tagged union of supported landmark geometries.
# `type` selects which field below is valid; the others are ignored.

uint8 UNKNOWN=0
uint8 POINT=1     # use pose.position only (orientation ignored)
uint8 POSE=2      # use pose fully (position + orientation)
uint8 VECTOR=3    # use vector (direction)
uint8 PLANE=4     # use plane
uint8 CYLINDER=5  # use cylinder

uint8 type

geometry_msgs/Pose    pose       # POINT / POSE
geometry_msgs/Vector3 vector     # VECTOR
shape_msgs/Plane      plane      # PLANE (coef: ax + by + cz + d = 0)
Cylinder              cylinder   # CYLINDER
