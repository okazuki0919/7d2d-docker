#!/bin/bash

echo "[INFO] Installing mods after first start"

if [ "${CPM,,}" == 'yes'  ]
  then
    source $scriptsDir/Mods/cpm.sh
    # To force install of Alloc Fixes
    ALLOC_FIXES=yes
fi

# Install Alloc Fixes, always after CPM, because CPM requiere Alloc fixes

if [ "${ALLOC_FIXES,,}" == 'yes'  ]
  then
    source $scriptsDir/Mods/alloc_fixes.sh
fi

# Install Undead Legacy

if [ "${UNDEAD_LEGACY,,}" == 'yes'  ]
  then
    source $scriptsDir/Mods/undead_legacy.sh
fi

# Install enZombies + addons
if [ "${ENZOMBIES,,}" == 'yes'  ]
  then
    source $scriptsDir/Mods/enZombies.sh
fi

if [ "${BEPINEX,,}" == 'yes'  ] && [ "${UNDEAD_LEGACY,,}" == 'no'  ]
  then
    source $scriptsDir/Mods/bepinex.sh
fi
