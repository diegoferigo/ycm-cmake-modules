#=============================================================================
# Copyright 2013-2021 Istituto Italiano di Tecnologia (IIT)
#   Authors: Daniele E. Domenichelli <daniele.domenichelli@iit.it>
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of YCM, substitute the full
#  License text for the above reference.)


##############################################################################
# FindUDev.cmake is taken from the ECM repository.

set(_files COPYING-CMAKE-SCRIPTS       ff3ed70db4739b3c6747c7f624fe2bad70802987
           find-modules/FindUDev.cmake 10bfe244e8f2c4d85338563a0057656093fb0d08)
set(_ref v5.79.0)
set(_dir "${CMAKE_CURRENT_BINARY_DIR}/ecm")

_ycm_download(3rdparty-ecm
              "KDE Extra CMake Modules git repository"
              "https://invent.kde.org/frameworks/extra-cmake-modules/-/raw/<REF>/<FILE>"
              ${_ref} "${_dir}" "${_files}")
file(WRITE "${_dir}/README.ECM"
"Some of the files in this folder and its subfolder come from the ECM git
repository (ref ${_ref}):

  https://invent.kde.org/frameworks/extra-cmake-modules

Redistribution and use is allowed according to the terms of the 3-clause
BSD license. See accompanying file COPYING.ECM for details.
")

_ycm_install(3rdparty-ecm FILES "${_dir}/find-modules/FindUDev.cmake"
                          DESTINATION "${YCM_INSTALL_MODULE_DIR}/3rdparty")

_ycm_install(3rdparty-ecm FILES "${_dir}/COPYING-CMAKE-SCRIPTS"
                          DESTINATION "${YCM_INSTALL_MODULE_DIR}/3rdparty"
                          RENAME COPYING.ECM)

_ycm_install(3rdparty-ecm FILES "${_dir}/README.ECM"
                          DESTINATION "${YCM_INSTALL_MODULE_DIR}/3rdparty")
