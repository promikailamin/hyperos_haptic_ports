.class public final Lcom/android/server/location/LocationPermissions;
.super Ljava/lang/Object;
.source "LocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationPermissions$PermissionLevel;
    }
.end annotation


# static fields
.field public static final PERMISSION_COARSE:I = 0x1

.field public static final PERMISSION_ERROR_CODE:I = 0x36c750c1

.field public static final PERMISSION_FINE:I = 0x2

.field public static final PERMISSION_NONE:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asAppOp(I)I
    .registers 2
    .param p0, "permissionLevel"    # I

    .line 82
    packed-switch p0, :pswitch_data_e

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 84
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public static asPermission(I)Ljava/lang/String;
    .registers 2
    .param p0, "permissionLevel"    # I

    .line 68
    packed-switch p0, :pswitch_data_10

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :pswitch_9
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 70
    :pswitch_c
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static checkCallingOrSelfLocationPermission(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requiredPermissionLevel"    # I

    .line 160
    nop

    .line 161
    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->getCallingOrSelfPermissionLevel(Landroid/content/Context;)I

    move-result v0

    .line 160
    invoke-static {v0, p1}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result v0

    return v0
.end method

.method public static checkLocationPermission(II)Z
    .registers 3
    .param p0, "permissionLevel"    # I
    .param p1, "requiredPermissionLevel"    # I

    .line 181
    if-lt p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static checkLocationPermission(Landroid/content/Context;III)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "requiredPermissionLevel"    # I

    .line 170
    nop

    .line 171
    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    .line 170
    invoke-static {v0, p3}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result v0

    return v0
.end method

.method public static enforceBypassPermission(Landroid/content/Context;II)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 148
    const-string v0, "android.permission.LOCATION_BYPASS"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_9

    .line 149
    return-void

    .line 151
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceBypassPermission(Landroid/content/Context;II)V

    .line 141
    return-void
.end method

.method public static enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requiredPermissionLevel"    # I

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v1

    .line 97
    invoke-static {v0, v1, p1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 100
    return-void
.end method

.method public static enforceLocationPermission(III)V
    .registers 10
    .param p0, "uid"    # I
    .param p1, "permissionLevel"    # I
    .param p2, "requiredPermissionLevel"    # I

    .line 119
    invoke-static {p1, p2}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    return-void

    .line 123
    :cond_7
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v0

    const v1, 0x36c750c1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "PermissionError"

    aput-object v5, v3, v4

    const-string v4, "Permission error"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v0

    .line 125
    .local v0, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 127
    const-string v1, "."

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, " does not have "

    const-string/jumbo v6, "uid "

    if-eq p2, v5, :cond_57

    .line 130
    if-eq p2, v2, :cond_34

    .line 134
    return-void

    .line 131
    :cond_34
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_57
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static enforceLocationPermission(Landroid/content/Context;III)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "requiredPermissionLevel"    # I

    .line 108
    nop

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    .line 108
    invoke-static {p1, v0, p3}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 111
    return-void
.end method

.method public static getCallingOrSelfPermissionLevel(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getPermissionLevel(Landroid/content/Context;II)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 197
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_a

    .line 198
    const/4 v0, 0x2

    return v0

    .line 200
    :cond_a
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_14

    .line 201
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
