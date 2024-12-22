# Permissions for lineage sdk services
PRODUCT_COPY_FILES += \
    vendor/alpha/config/permissions/org.lineageos.globalactions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.globalactions.xml \
    vendor/alpha/config/permissions/org.lineageos.hardware.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.hardware.xml \
    vendor/alpha/config/permissions/org.lineageos.health.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.health.xml \
    vendor/alpha/config/permissions/org.lineageos.livedisplay.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.livedisplay.xml \
    vendor/alpha/config/permissions/org.lineageos.profiles.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.profiles.xml \
    vendor/alpha/config/permissions/org.lineageos.settings.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.settings.xml \
    vendor/alpha/config/permissions/org.lineageos.trust.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.trust.xml

# Lineage Platform Library
PRODUCT_PACKAGES += \
    org.lineageos.platform-res \
    org.lineageos.platform

# AOSP has no support of loading framework resources from /system_ext
# so the SDK has to stay in /system for now
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/framework/oat/%/org.lineageos.platform.odex \
    system/framework/oat/%/org.lineageos.platform.vdex \
    system/framework/org.lineageos.platform-res.apk \
    system/framework/org.lineageos.platform.jar
