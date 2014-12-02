// ----------------------------------------------------------------------------
// Copyright (c) 2014, Nicolas P. Rougier. All Rights Reserved.
// Distributed under the (new) BSD License.
// ----------------------------------------------------------------------------
#include "colormaps/util.glsl"

vec3 colormap_spring(float t)
{
    return mix(vec3(1.0,0.0,1.0), vec3(1.0,1.0,0.0), t);
}

vec3 colormap_spring(float t, vec3 under, vec3 over)
{
    return colormap_underover(t, colormap_spring(t), under, over);
}

vec3 colormap_spring(float t, vec4 under, vec4 over)
{
    return colormap_underover(t, vec4(colormap_spring(t),1.0), under, over);
}
