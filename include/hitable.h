//
// Created by Avinash Pai on 8/26/20.
//

#ifndef HITABLE_H
#define HITABLE_H

#include "ray.h"

// Hitable abstract class for hitable "objects"

struct hit_record {
    float t;
    vec3 p;
    vec3 normal;
};

class hitable {
public:
    virtual bool hit(const ray& r, float t_min, float t_max, hit_record& rec) const = 0;
};

#endif
