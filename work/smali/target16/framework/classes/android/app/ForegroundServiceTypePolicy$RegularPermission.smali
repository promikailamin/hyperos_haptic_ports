.class Landroid/app/ForegroundServiceTypePolicy$RegularPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegularPermission"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 1175
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1176
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 14

    .line 1183
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I

    move-result p1

    .line 1186
    if-eqz p1, :cond_52

    sget-object p2, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    iget-object p3, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    .line 1187
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_52

    .line 1193
    :cond_1a
    const-class p2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 1194
    if-nez p2, :cond_25

    .line 1195
    return p1

    .line 1198
    :cond_25
    invoke-virtual {p2}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object p2

    .line 1199
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_2e
    if-ge p4, p3, :cond_51

    .line 1200
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/companion/virtual/VirtualDevice;

    .line 1201
    nop

    .line 1202
    invoke-virtual {p5}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result p5

    iget-object v2, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    .line 1201
    invoke-static {v1, p5, v2}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    .line 1204
    if-nez v7, :cond_44

    .line 1205
    goto :goto_4d

    .line 1207
    :cond_44
    iget-object v2, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I

    move-result p1

    .line 1209
    if-nez p1, :cond_4d

    .line 1210
    goto :goto_51

    .line 1199
    :cond_4d
    :goto_4d
    add-int/lit8 p4, p4, 0x1

    move-object v0, p0

    goto :goto_2e

    .line 1214
    :cond_51
    :goto_51
    return p1

    .line 1188
    :cond_52
    :goto_52
    return p1
.end method

.method blacklist checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I
    .registers 9

    .line 1221
    new-instance p4, Landroid/content/AttributionSource;

    const/4 v0, 0x0

    invoke-direct {p4, p3, p5, v0, p7}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1223
    nop

    .line 1224
    invoke-static {p1, p2, p4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p3

    .line 1225
    const/4 p5, 0x2

    const/4 p7, -0x1

    if-ne p3, p5, :cond_10

    .line 1227
    return p7

    .line 1229
    :cond_10
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p2

    .line 1230
    const/4 p5, 0x0

    if-ne p2, p7, :cond_1d

    .line 1232
    if-nez p3, :cond_1b

    .line 1233
    move p7, p5

    goto :goto_1c

    :cond_1b
    nop

    .line 1232
    :goto_1c
    return p7

    .line 1235
    :cond_1d
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 1236
    invoke-virtual {p1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result p1

    .line 1237
    packed-switch p1, :pswitch_data_4a

    .line 1259
    :pswitch_2c
    return p7

    .line 1248
    :pswitch_2d
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->-$$Nest$smisFgsTypeFgPermissionEnforcementEnabled()Z

    move-result p1

    if-eqz p1, :cond_37

    if-eqz p6, :cond_36

    goto :goto_37

    .line 1249
    :cond_36
    goto :goto_38

    :cond_37
    :goto_37
    move p7, p5

    .line 1248
    :goto_38
    return p7

    .line 1243
    :pswitch_39
    if-nez p3, :cond_3d

    .line 1244
    move p7, p5

    goto :goto_3e

    :cond_3d
    nop

    .line 1243
    :goto_3e
    return p7

    .line 1256
    :pswitch_3f
    if-eqz p6, :cond_46

    const/4 p1, 0x1

    if-ne p3, p1, :cond_46

    .line 1257
    move p7, p5

    goto :goto_47

    :cond_46
    nop

    .line 1256
    :goto_47
    return p7

    .line 1240
    :pswitch_48
    return p5

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3f
        :pswitch_2c
        :pswitch_39
        :pswitch_2d
    .end packed-switch
.end method
