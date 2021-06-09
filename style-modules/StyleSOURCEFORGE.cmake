# SPDX-FileCopyrightText: 2012-2021 Istituto Italiano di Tecnologia (IIT)
# SPDX-License-Identifier: BSD-3-Clause

#[=======================================================================[.rst:
StyleSOURCEFORGE
----------------
#]=======================================================================]


# TYPE GIT STYLE SOURCEFORGE
set(YCM_GIT_SOURCEFORGE_USERNAME "" CACHE STRING "Username to use for sourceforge git repositories")
set(YCM_GIT_SOURCEFORGE_COMMIT_NAME "" CACHE STRING "Name to use for git commits for sourceforge git repositories (if empty will use YCM_GIT_COMMIT_NAME)")
set(YCM_GIT_SOURCEFORGE_COMMIT_EMAIL "" CACHE STRING "Email address to use for git commits for sourceforge git repositories (if empty will use YCM_GIT_COMMIT_EMAIL)")
set(YCM_GIT_SOURCEFORGE_BASE_ADDRESS "git://git.code.sf.net/p/" CACHE STRING "Address to use for sourceforge git repositories")
set_property(CACHE YCM_GIT_SOURCEFORGE_BASE_ADDRESS PROPERTY STRINGS "git://git.code.sf.net/p/"
                                                                     "ssh://${YCM_GIT_SOURCEFORGE_USERNAME}@git.code.sf.net/p/"
                                                                     "${YCM_GIT_SOURCEFORGE_USERNAME}@git.code.sf.net:p/"
                                                                     "sf:")
mark_as_advanced(YCM_GIT_SOURCEFORGE_USERNAME
                 YCM_GIT_SOURCEFORGE_COMMIT_NAME
                 YCM_GIT_SOURCEFORGE_COMMIT_EMAIL
                 YCM_GIT_SOURCEFORGE_BASE_ADDRESS)


# TYPE SVN STYLE SOURCEFORGE
set(YCM_SVN_SOURCEFORGE_USERNAME "" CACHE STRING "Username to use for sourceforge svn repositories")
set(YCM_SVN_SOURCEFORGE_PASSWORD "" CACHE STRING "Password to use for sourceforge svn repositories")
set(YCM_SVN_SOURCEFORGE_BASE_ADDRESS "https://svn.code.sf.net/p/" CACHE INTERNAL "Address to use for sourceforge svn repositories")
mark_as_advanced(YCM_SVN_SOURCEFORGE_USERNAME
                 YCM_SVN_SOURCEFORGE_PASSWORD)
