# Config Files

## Table of Contents
- [Config Files](#config-files)
  * [EasyEffects on Pipewire](#easyeffects-on-pipewire)

____
<br />

## Introduction
This folder contains configurations for various applications I use and instructions on where to place their respective configs.
<br />
<br />

## EasyEffects on Pipewire

Formerly called PulseEffects for anyone coming from the old application, EasyEffects is a great tool for tweaking the system sound using various filters and processing effects, for better-sounding internal speakers. My config contains volume normalization as well as some other tweaks. Note this is specific to the Dell XPS 9520's internal speakers. By default, it is a bit shallow and it is easy to distort the sound at high volumes. This config helps with that and widens the soundstage a bit.

Recommended for 6.2.7 or higher versions. To apply, copy it inside ~/.config/easyeffects/output folder (if you have the the Flatpak version, place the preset file in ~/.var/app/com.github.wwmm.easyeffects/config/easyeffects/output). Close and restart EasyEffects, then apply the new preset.