.class public abstract Lcom/android/server/display/DisplayControl;
.super Ljava/lang/Object;
.source "DisplayControl.java"


# direct methods
.method public static createVirtualDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 5

    .line 51
    const-string/jumbo v0, "name must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/server/display/DisplayControl;->nativeCreateVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static createVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;
    .registers 6

    .line 74
    const-string/jumbo v0, "name must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "uniqueId must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayControl;->nativeCreateVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static destroyVirtualDisplay(Landroid/os/IBinder;)V
    .registers 2

    if-eqz p0, :cond_6

    .line 89
    invoke-static {p0}, Lcom/android/server/display/DisplayControl;->nativeDestroyVirtualDisplay(Landroid/os/IBinder;)V

    return-void

    .line 87
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayToken must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getHdrOutputConversionSupport()Z
    .registers 1

    .line 150
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputConversionSupport()Z

    move-result v0

    return v0
.end method

.method public static getHdrOutputTypesWithLatency()[I
    .registers 1

    .line 142
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputTypesWithLatency()[I

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayIds()[J
    .registers 1

    .line 104
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 2

    .line 111
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedHdrOutputTypes()[I
    .registers 1

    .line 134
    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetSupportedHdrOutputTypes()[I

    move-result-object v0

    return-object v0
.end method

.method private static native nativeCreateVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;
.end method

.method private static native nativeDestroyVirtualDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetHdrOutputConversionSupport()Z
.end method

.method private static native nativeGetHdrOutputTypesWithLatency()[I
.end method

.method private static native nativeGetPhysicalDisplayIds()[J
.end method

.method private static native nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetSupportedHdrOutputTypes()[I
.end method

.method private static native nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V
.end method

.method private static native nativeSetHdrConversionMode(II[II)I
.end method

.method public static overrideHdrTypes(Landroid/os/IBinder;[I)V
    .registers 2

    .line 97
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V

    return-void
.end method

.method public static setHdrConversionMode(II[I)I
    .registers 4

    if-eqz p2, :cond_4

    .line 124
    array-length v0, p2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 125
    :goto_5
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/display/DisplayControl;->nativeSetHdrConversionMode(II[II)I

    move-result p0

    return p0
.end method
