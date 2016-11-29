# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "starbound/map.jinja" import starbound with context %}

include:
  - starbound.install

starbound-data:
  file.directory:
    - name: {{ starbound.data }}
    - user: root
    - group: root

starbound-container:
  dockerng.running:
    - name: {{ starbound.name }}
    - image: {{ starbound.image }}
    - binds: {{ starbound.data }}:/server/steamcmd/starbound
    - port_bindings:
      - {{ starbound.port }}:21025
    - environment:
      - STEAM_USERNAME: {{ starbound.steam.username }}
      - STEAM_PASSWORD: {{ starbound.steam.password }}
    - require:
      - dockerng: starbound-image
      - file: {{ starbound.data }}
