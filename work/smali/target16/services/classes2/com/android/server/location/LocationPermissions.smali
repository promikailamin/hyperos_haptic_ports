.class public abstract Lcom/android/server/location/LocationPermissions;
.super Ljava/lang/Object;
.source "LocationPermissions.java"


# direct methods
.method public static asAppOp(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    return v0

    .line 85
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static asPermission(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    .line 69
    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    return-object p0

    .line 71
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 67
    :cond_f
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object p0
.end method

.method public static checkCallingOrSelfLocationPermission(Landroid/content/Context;I)Z
    .registers 2

    .line 177
    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->getCallingOrSelfPermissionLevel(Landroid/content/Context;)I

    move-result p0

    .line 176
    invoke-static {p0, p1}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result p0

    return p0
.end method

.method public static checkLocationPermission(II)Z
    .registers 2

    .line 0
    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static enforceBypassPermission(Landroid/content/Context;II)V
    .registers 5

    .line 141
    const-string v0, "android.permission.LOCATION_BYPASS"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 144
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not have "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V
    .registers 3

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceBypassPermission(Landroid/content/Context;II)V

    return-void
.end method

.method public static enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V
    .registers 5

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    .line 94
    invoke-static {v0, p0, p1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    return-void
.end method

.method public static enforceLocationPermission(III)V
    .registers 7

    .line 116
    invoke-static {p1, p2}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_16

    :cond_7
    const/4 p1, 0x1

    .line 120
    const-string v0, "."

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, " does not have "

    const-string/jumbo v3, "uid "

    if-eq p2, p1, :cond_35

    const/4 p1, 0x2

    if-eq p2, p1, :cond_17

    :goto_16
    return-void

    .line 124
    :cond_17
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_35
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " or "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getCallingOrSelfPermissionLevel(Landroid/content/Context;)I
    .registers 3

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getPermissionLevel(Landroid/content/Context;II)I
    .registers 4

    .line 213
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x2

    return p0

    .line 216
    :cond_a
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
