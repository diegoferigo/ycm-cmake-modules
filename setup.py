import os
from pathlib import Path
from setuptools import setup
from cmake_build_extension import BuildExtension, CMakeExtension

if "CIBUILDWHEEL" in os.environ and os.environ["CIBUILDWHEEL"] == "1":
    CIBW_CMAKE_OPTIONS = ["-DCMAKE_INSTALL_LIBDIR=lib"]
else:
    CIBW_CMAKE_OPTIONS = []

# Read the contents of the README file
this_directory = Path(__file__).absolute().parent
with open(this_directory / "README.md", encoding="utf-8") as f:
    long_description = f.read()

setup(
    name="ycm-build-modules",
    author="Diego Ferigo",
    author_email="diego.ferigo@iit.it",
    description="Extra CMake Modules for YARP and friends.",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="http://robotology.github.io/ycm",
    project_urls={
        "Bug Tracker": "https://github.com/robotology/ycm/issues",
        "Documentation": "http://robotology.github.io/ycm",
        "Source Code": "https://github.com/robotology/ycm/",
    },
    keywords=["cmake", "cmake-modules", "cmake-resources", "build-tool", "build-system",
              "superbuild", "yarp", "robotics"],
    license="BSD",
    platforms="any",
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Operating System :: POSIX :: Linux",
        "Operating System :: MacOS",
        "Operating System :: Microsoft :: Windows",
        "Operating System :: OS Independent",
        "Framework :: Robot Framework",
        "Intended Audience :: Science/Research",
        "Intended Audience :: Developers",
        "Intended Audience :: Education",
        "Topic :: Software Development :: Build Tools",
        "Topic :: Software Development :: Code Generators",
        "Topic :: System :: Archiving :: Packaging",
        "License :: OSI Approved :: BSD License",
    ],
    zip_safe=False,
    use_scm_version=dict(local_scheme="dirty-tag"),
    setup_requires=["setuptools_scm", "cmake>=3.12", "ninja"],
    python_requires='>=3.0',
    cmdclass=dict(build_ext=BuildExtension),
    ext_modules=[
        CMakeExtension(name='CMakeProject',
                       install_prefix="ycm_build_modules",
                       disable_editable=True,
                       write_top_level_init="",
                       cmake_configure_options=[
                           "-DBUILD_TESTING:BOOL=OFF",
                           "-DYCM_NO_DEPRECATED:BOOL=ON",
                       ] + CIBW_CMAKE_OPTIONS)],
)
