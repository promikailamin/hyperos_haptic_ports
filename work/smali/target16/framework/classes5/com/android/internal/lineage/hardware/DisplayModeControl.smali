.class public Lcom/android/internal/lineage/hardware/DisplayModeControl;
.super Ljava/lang/Object;
.source "DisplayModeControl.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAvailableModes()[Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 1

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/lineage/hardware/DisplayMode;

    return-object v0
.end method

.method public static blacklist getCurrentMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDefaultMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist isSupported()Z
    .registers 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z
    .registers 2

    .line 68
    const/4 p0, 0x0

    return p0
.end method
