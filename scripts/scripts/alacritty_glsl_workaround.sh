GLSL_MAX_VERSION_SUPPORTED=$(glxinfo | awk '/OpenGL version/ {print $4}')
UNSUPPORTED=$(echo "$GLSL_MAX_VERSION_SUPPORTED < 3.3" | bc -l)
LIBGL_ALWAYS_SOFTWARE=$UNSUPPORTED alacritty $@
