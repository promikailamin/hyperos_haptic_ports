.class public abstract Lcom/android/server/wm/DesktopModeHelper;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"


# static fields
.field public static final ENFORCE_DEVICE_RESTRICTIONS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const-string v0, "persist.wm.debug.desktop_mode_enforce_device_restrictions"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/DesktopModeHelper;->ENFORCE_DEVICE_RESTRICTIONS:Z

    return-void
.end method

.method public static canEnterDesktopMode(Landroid/content/Context;)Z
    .registers 2

    .line 103
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_DESKTOP_WINDOWING_MODE:Landroid/window/DesktopModeFlags;

    .line 104
    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_14

    .line 105
    :cond_e
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeEnabledByDevOption(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static canInternalDisplayHostDesktops(Landroid/content/Context;)Z
    .registers 2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110069

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDesktopExperienceDevOptionSupported(Landroid/content/Context;)Z
    .registers 1

    .line 116
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isDesktopModeDevOptionsSupported(Landroid/content/Context;)Z
    .registers 2

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101e5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDesktopModeEnabledByDevOption(Landroid/content/Context;)Z
    .registers 2

    .line 84
    invoke-static {}, Landroid/window/DesktopModeFlags;->isDesktopModeForcedEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeDevOptionsSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 85
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static isDesktopModeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101e6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z
    .registers 2

    .line 70
    invoke-static {}, Lcom/android/server/wm/DesktopModeHelper;->shouldEnforceDeviceRestrictions()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->canInternalDisplayHostDesktops(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z
    .registers 2

    .line 110
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_WALLPAPER:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 111
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z
    .registers 3

    .line 90
    invoke-static {}, Lcom/android/server/wm/DesktopModeHelper;->shouldEnforceDeviceRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 96
    :cond_8
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDesktopModeSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return v1
.end method

.method public static shouldEnforceDeviceRestrictions()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/android/server/wm/DesktopModeHelper;->ENFORCE_DEVICE_RESTRICTIONS:Z

    return v0
.end method
