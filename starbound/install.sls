# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "starbound/map.jinja" import starbound with context %}

starbound-image:
  dockerng.image_present:
    - name: {{ starbound.image }}
    - force: True
