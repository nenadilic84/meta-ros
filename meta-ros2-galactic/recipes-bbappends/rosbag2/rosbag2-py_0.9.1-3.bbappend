# Copyright (c) 2021 LG Electronics, Inc.

ROS_BUILDTOOL_DEPENDS += " \
    rosidl-adapter \
"

do_install:append() {
    install -d ${D}${PYTHON_SITEPACKAGES_DIR}
    for f in $(find ${D}${PYTHON_SITEPACKAGES_DIR} -name "*x86_64*"); do
        mv "$f" "$(echo "$f" | sed 's/x86_64/aarch64/')"
    done
}
