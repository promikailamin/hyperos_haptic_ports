.class public final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# static fields
.field public static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public static bridge synthetic -$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 995
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 998
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1003
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 1004
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 1005
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1006
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method

.method public static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 1180
    invoke-static {v14}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x2

    if-gez v2, :cond_2b

    .line 1182
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Appop permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with no app op defined!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2b
    const/4 v3, 0x0

    move-object v4, v15

    :goto_2d
    const/4 v5, 0x1

    const/16 v16, 0x0

    if-nez p6, :cond_38

    if-eqz v3, :cond_35

    goto :goto_38

    :cond_35
    move/from16 v7, v16

    goto :goto_39

    :cond_38
    :goto_38
    move v7, v5

    .line 1192
    :goto_39
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-eqz p6, :cond_45

    .line 1196
    invoke-virtual {v4, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    :cond_45
    if-eqz v3, :cond_4e

    .line 1197
    invoke-virtual {v4, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4e

    return v1

    :cond_4e
    if-eqz p6, :cond_60

    .line 1205
    invoke-virtual {v4, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    if-eqz v3, :cond_60

    .line 1206
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-nez v6, :cond_60

    move v9, v5

    goto :goto_62

    :cond_60
    move/from16 v9, v16

    :goto_62
    if-nez v9, :cond_6b

    if-nez v3, :cond_67

    goto :goto_6b

    :cond_67
    move/from16 v8, v16

    :goto_69
    move v6, v1

    goto :goto_6d

    :cond_6b
    :goto_6b
    move v8, v5

    goto :goto_69

    .line 1209
    :goto_6d
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v10, v6

    const/4 v6, 0x0

    move v11, v10

    const/4 v10, -0x1

    move/from16 v17, v11

    const/4 v11, 0x0

    move v14, v5

    move/from16 v15, v17

    move/from16 v5, p5

    move-object/from16 v17, v3

    move-object v3, v4

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    if-eq v1, v14, :cond_be

    if-eq v1, v15, :cond_be

    const/4 v3, 0x3

    if-eq v1, v3, :cond_96

    :cond_8f
    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move-object/from16 v3, v17

    goto :goto_ae

    :cond_96
    if-nez v7, :cond_9f

    .line 1222
    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1

    if-nez v1, :cond_9f

    return v15

    :cond_9f
    if-eqz v17, :cond_8f

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move-object/from16 v3, v17

    .line 1226
    invoke-static {v0, v1, v14, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v4

    if-nez v4, :cond_ae

    return v15

    :cond_ae
    :goto_ae
    if-eqz v3, :cond_bd

    .line 1233
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_b7

    goto :goto_bd

    :cond_b7
    move-object v4, v3

    move v1, v15

    move-object/from16 v15, p3

    goto/16 :goto_2d

    :cond_bd
    :goto_bd
    return v16

    :cond_be
    return v15
.end method

.method public static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v14, 0x2

    if-ltz p1, :cond_bb

    .line 1451
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    goto/16 :goto_bb

    :cond_f
    move/from16 v4, p6

    .line 1456
    invoke-static {v4, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v13

    const/4 v2, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eq v13, v2, :cond_1e

    move/from16 v17, v15

    goto :goto_20

    :cond_1e
    move/from16 v17, v16

    :goto_20
    if-eqz v17, :cond_30

    .line 1464
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v3, p2

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_30

    :cond_2d
    move/from16 v18, v16

    goto :goto_32

    :cond_30
    :goto_30
    move/from16 v18, v15

    :goto_32
    const/4 v2, 0x0

    move-object v3, v1

    :goto_34
    if-eqz v2, :cond_38

    move v7, v15

    goto :goto_3a

    :cond_38
    move/from16 v7, v16

    .line 1469
    :goto_3a
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    if-eqz v8, :cond_47

    .line 1473
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_47

    return v14

    :cond_47
    if-nez v8, :cond_4b

    move v5, v15

    goto :goto_4d

    :cond_4b
    move/from16 v5, v16

    :goto_4d
    if-eqz v18, :cond_65

    .line 1480
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_5b
    if-eqz v8, :cond_63

    .line 1481
    invoke-virtual {v8, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_63
    move v6, v15

    goto :goto_67

    :cond_65
    move/from16 v6, v16

    :goto_67
    if-nez v7, :cond_74

    if-eqz v17, :cond_74

    move-object v2, v3

    const/4 v3, 0x0

    .line 1484
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v3

    move-object v9, v2

    move v11, v3

    goto :goto_77

    :cond_74
    move-object v9, v3

    move/from16 v11, v16

    :goto_77
    if-eqz v17, :cond_87

    const/4 v3, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object v2, v8

    .line 1487
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v3

    move-object/from16 v19, v2

    move v12, v3

    goto :goto_8b

    :cond_87
    move-object/from16 v19, v8

    move/from16 v12, v16

    .line 1491
    :goto_8b
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object v2, v9

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object/from16 v4, p4

    move/from16 v6, p6

    move-object v3, v2

    move v8, v5

    move/from16 v2, p1

    move/from16 v5, p5

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    if-eq v1, v15, :cond_ba

    if-eq v1, v14, :cond_b9

    if-eqz v19, :cond_b8

    .line 1505
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_ad

    goto :goto_b8

    :cond_ad
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object/from16 v2, v19

    move-object v3, v2

    goto/16 :goto_34

    :cond_b8
    :goto_b8
    return v16

    :cond_b9
    return v14

    :cond_ba
    return v15

    :cond_bb
    :goto_bb
    return v14
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .registers 19

    .line 1136
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v1, :cond_27

    .line 1139
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1140
    const-string v3, "android"

    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1141
    invoke-static {p0, p2}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1144
    :cond_24
    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_27} :catch_29

    :cond_27
    move-object v9, v1

    goto :goto_2a

    :catch_29
    return v7

    .line 1151
    :goto_2a
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v0

    if-eqz v0, :cond_3d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    .line 1152
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0

    .line 1155
    :cond_3d
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1156
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_48
    if-nez p7, :cond_51

    .line 1161
    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_51

    return v7

    .line 1166
    :cond_51
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1168
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    .line 1167
    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_6a
    return v8
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z
    .registers 10

    .line 1370
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1371
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v1

    .line 1372
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne v2, v1, :cond_f

    goto :goto_13

    .line 1373
    :cond_f
    invoke-virtual {p0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object p0

    :goto_13
    const/4 v1, -0x1

    .line 1374
    invoke-virtual {p0, p2, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1e

    move v2, v3

    goto :goto_1f

    :cond_1e
    move v2, v4

    :goto_1f
    if-nez v2, :cond_56

    .line 1383
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_56

    const-string v5, "android.permission.RECORD_AUDIO"

    .line 1384
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 1385
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1387
    :cond_47
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 1389
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result p1

    if-ne v0, p1, :cond_54

    goto :goto_55

    :cond_54
    move v3, v4

    :goto_55
    move v2, v3

    .line 1391
    :cond_56
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object p1

    if-eqz v2, :cond_6b

    .line 1392
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    const-string p1, "android.permission.RENOUNCE_PERMISSIONS"

    .line 1393
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_6b

    return v4

    :cond_6b
    return v2
.end method

.method public static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    move/from16 v4, p6

    .line 1247
    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 1249
    invoke-static {v4, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v13

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v13, v2, :cond_1a

    move/from16 v16, v8

    goto :goto_1c

    :cond_1a
    move/from16 v16, v9

    :goto_1c
    if-eqz v16, :cond_2a

    .line 1256
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v0, v14, v2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2a

    :cond_27
    move/from16 v17, v9

    goto :goto_2c

    :cond_2a
    :goto_2a
    move/from16 v17, v8

    :goto_2c
    const/4 v2, 0x0

    move-object v3, v1

    move-object/from16 v18, v2

    :goto_30
    if-nez p7, :cond_38

    if-eqz v2, :cond_35

    goto :goto_38

    :cond_35
    move v10, v7

    move v7, v9

    goto :goto_3a

    :cond_38
    :goto_38
    move v10, v7

    move v7, v8

    .line 1261
    :goto_3a
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v12, 0x2

    if-eqz p7, :cond_48

    .line 1265
    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_51

    :cond_48
    if-eqz v11, :cond_51

    .line 1266
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_51

    return v12

    :cond_51
    :goto_51
    if-nez v7, :cond_5a

    .line 1271
    invoke-static {v0, v14, v15, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-nez v2, :cond_5a

    return v12

    :cond_5a
    if-eqz v11, :cond_63

    .line 1276
    invoke-static {v0, v14, v15, v11}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-nez v2, :cond_63

    return v12

    :cond_63
    if-gez v10, :cond_a1

    .line 1283
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1284
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 1285
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 1286
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Platform runtime permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with no app op defined!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    if-nez v11, :cond_9d

    return v9

    :cond_9d
    move v7, v10

    move-object v2, v11

    move-object v3, v2

    goto :goto_30

    :cond_a1
    if-eqz p7, :cond_b5

    .line 1300
    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    if-eqz v11, :cond_b5

    .line 1301
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_b5

    move/from16 v19, v9

    move v9, v8

    goto :goto_b7

    :cond_b5
    move/from16 v19, v9

    :goto_b7
    if-nez v9, :cond_bf

    if-nez v11, :cond_bc

    goto :goto_bf

    :cond_bc
    move/from16 v5, v19

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v5, v8

    :goto_c0
    if-eqz v17, :cond_d8

    .line 1304
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_ce

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    :cond_ce
    if-eqz v11, :cond_d6

    .line 1305
    invoke-virtual {v11, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d8

    :cond_d6
    move v6, v8

    goto :goto_da

    :cond_d8
    move/from16 v6, v19

    :goto_da
    if-nez v7, :cond_e8

    if-eqz v16, :cond_e8

    move-object v2, v3

    move/from16 v3, p7

    .line 1308
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v20

    move-object/from16 v21, v2

    goto :goto_ec

    :cond_e8
    move-object/from16 v21, v3

    move/from16 v20, v19

    :goto_ec
    if-eqz v16, :cond_fc

    move-object/from16 v1, p3

    move/from16 v4, p6

    move/from16 v3, p7

    move-object v2, v11

    .line 1311
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v6

    move-object/from16 v22, v2

    goto :goto_100

    :cond_fc
    move-object/from16 v22, v11

    move/from16 v6, v19

    .line 1315
    :goto_100
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v4, p4

    move/from16 v14, p7

    move v8, v5

    move v12, v6

    move v2, v10

    move/from16 v15, v19

    move/from16 v11, v20

    move-object/from16 v3, v21

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p8

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    move v10, v2

    move-object v2, v3

    if-eqz p6, :cond_139

    if-eqz v1, :cond_139

    if-eqz v18, :cond_139

    .line 1327
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 1328
    iget-object v4, v3, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v5, v4

    if-lez v5, :cond_132

    .line 1329
    aget-object v4, v4, v15

    new-array v5, v15, [Landroid/content/AttributionSourceState;

    iput-object v5, v4, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_132
    move/from16 v4, p8

    .line 1331
    invoke-static {v0, v4, v3, v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    :goto_137
    const/4 v3, 0x1

    goto :goto_13c

    :cond_139
    move/from16 v4, p8

    goto :goto_137

    :goto_13c
    if-eq v1, v3, :cond_19e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_16f

    if-eqz p6, :cond_153

    .line 1352
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    invoke-direct {v1, v0, v10, v2, v14}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 1354
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_153
    if-eqz v22, :cond_16e

    .line 1357
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_15c

    goto :goto_16e

    :cond_15c
    move-object/from16 v14, p1

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object/from16 v18, v2

    move v7, v10

    move v9, v15

    move-object/from16 v2, v22

    move-object v3, v2

    const/4 v8, 0x1

    move-object/from16 v15, p2

    goto/16 :goto_30

    :cond_16e
    :goto_16e
    return v15

    .line 1338
    :cond_16f
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    move-object/from16 v15, p2

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 1339
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLUETOOTH_CONNECT permission hard denied as op mode is MODE_ERRORED. Permission check was requested for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and op transaction was invoked for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19b
    const/16 v19, 0x2

    return v19

    :cond_19e
    move/from16 v20, v3

    return v20
.end method

.method public static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .registers 11

    .line 1044
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_10

    goto/16 :goto_b0

    .line 1051
    :cond_10
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v2, 0x0

    :goto_16
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1f

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    move v2, v4

    goto :goto_20

    :cond_1f
    :goto_1f
    move v2, v3

    .line 1057
    :goto_20
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-eqz p3, :cond_2c

    .line 1061
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-eq v6, p2, :cond_36

    :cond_2c
    if-eqz v5, :cond_36

    .line 1062
    invoke-virtual {v1, p0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_36

    goto/16 :goto_b0

    :cond_36
    if-eqz p3, :cond_48

    .line 1070
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-ne v6, p2, :cond_48

    if-eqz v5, :cond_48

    .line 1071
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-nez v6, :cond_48

    move v6, v3

    goto :goto_49

    :cond_48
    move v6, v4

    :goto_49
    if-nez v6, :cond_4f

    if-nez v5, :cond_4e

    goto :goto_4f

    :cond_4e
    move v3, v4

    :cond_4f
    :goto_4f
    if-nez v6, :cond_53

    move-object v4, v1

    goto :goto_54

    :cond_53
    move-object v4, v5

    :goto_54
    if-eqz v3, :cond_67

    .line 1078
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5d

    goto :goto_b0

    .line 1083
    :cond_5d
    invoke-virtual {v4, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 1085
    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v3, p1, v2}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    goto :goto_7b

    .line 1089
    :cond_67
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    .line 1090
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_72

    goto :goto_b0

    .line 1093
    :cond_72
    iget-object v4, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1094
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v6

    .line 1093
    invoke-virtual {v0, v4, v6, v3, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 1097
    :goto_7b
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 1098
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz v1, :cond_8e

    .line 1100
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_8e
    if-eqz v5, :cond_9b

    .line 1103
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_97

    goto :goto_9b

    :cond_97
    move-object v1, v5

    move-object v2, v1

    goto/16 :goto_16

    :cond_9b
    :goto_9b
    if-eqz v5, :cond_b0

    .line 1105
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz p0, :cond_b0

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_b0
    :goto_b0
    return-void
.end method

.method public static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .registers 2

    if-eqz p1, :cond_1d

    .line 1698
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p1

    if-eqz p1, :cond_1d

    if-nez p0, :cond_b

    goto :goto_1d

    .line 1701
    :cond_b
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-gez p1, :cond_1c

    const/4 p1, 0x0

    .line 1705
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1706
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0

    :cond_1c
    return p1

    :cond_1d
    :goto_1d
    const/4 p0, -0x1

    return p0
.end method

.method public static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v2, p10

    .line 1525
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    if-nez p9, :cond_14

    move-object v5, v3

    goto :goto_18

    .line 1527
    :cond_14
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    :goto_18
    const/4 v7, 0x2

    if-nez p5, :cond_4b

    .line 1529
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_22

    return v7

    .line 1535
    :cond_22
    invoke-virtual {v5, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz p7, :cond_2c

    if-nez p9, :cond_2c

    const/4 v6, 0x0

    goto :goto_30

    .line 1547
    :cond_2c
    invoke-virtual {v4, v1, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v6

    .line 1549
    :goto_30
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez p8, :cond_4a

    if-nez v6, :cond_4a

    if-eqz v2, :cond_4a

    .line 1551
    invoke-static {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_41

    return v7

    .line 1556
    :cond_41
    invoke-virtual {v2, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1557
    invoke-virtual {v4, v1, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    return v0

    :cond_4a
    return v6

    .line 1560
    :cond_4b
    const-string v9, " with source "

    const-string v10, "Security exception for op "

    const-string v12, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v13, " while not having "

    const-string v14, " protecting data with platform defined runtime permission "

    const-string v15, "Datasource "

    const/4 v8, -0x1

    const-string v11, ", "

    move/from16 v16, v7

    const-string v7, ":"

    if-eqz p6, :cond_162

    move-object/from16 v17, v7

    .line 1561
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v7

    .line 1563
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6d

    return v16

    :cond_6d
    if-eq v2, v8, :cond_7d

    if-eq v2, v1, :cond_7d

    .line 1580
    invoke-virtual {v4, v1, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v6

    move/from16 v0, v16

    if-ne v6, v0, :cond_7a

    return v6

    :cond_7a
    move v0, v6

    move v6, v2

    goto :goto_7f

    :cond_7d
    move v6, v1

    const/4 v0, 0x0

    :goto_7f
    if-eqz p8, :cond_c9

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    move/from16 v10, p11

    move/from16 v11, p13

    .line 1588
    :try_start_8a
    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I

    move-result v1
    :try_end_8e
    .catch Ljava/lang/SecurityException; {:try_start_8a .. :try_end_8e} :catch_90

    move v12, v0

    goto :goto_df

    .line 1593
    :catch_90
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1593
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    move/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    move v12, v0

    move-object v0, v4

    move-object/from16 v4, p4

    .line 1597
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v1

    goto :goto_df

    :cond_c9
    move-object/from16 v1, p1

    move/from16 v5, p7

    move/from16 v8, p13

    move v12, v0

    move-object v0, v4

    move v2, v6

    move-object v3, v7

    move-object/from16 v13, v17

    move-object/from16 v4, p4

    move/from16 v6, p11

    move/from16 v7, p12

    .line 1603
    :try_start_db
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v1
    :try_end_df
    .catch Ljava/lang/SecurityException; {:try_start_db .. :try_end_df} :catch_e4

    .line 1620
    :goto_df
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_e4
    move-exception v0

    .line 1608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1613
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_146

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1617
    :cond_146
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_162
    move-object v6, v4

    move-object/from16 v18, v7

    move-object/from16 v4, p4

    move v7, v2

    move/from16 v2, p7

    .line 1622
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1624
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_176

    const/4 v5, 0x2

    return v5

    :cond_176
    const/4 v5, 0x2

    if-eq v7, v8, :cond_182

    if-eq v7, v1, :cond_182

    .line 1636
    invoke-virtual {v6, v1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v8

    if-ne v8, v5, :cond_184

    return v8

    :cond_182
    move v7, v1

    const/4 v8, 0x0

    :cond_184
    if-eqz p8, :cond_1b6

    .line 1649
    :try_start_186
    invoke-virtual {v6, v7, v0, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v2
    :try_end_18a
    .catch Ljava/lang/SecurityException; {:try_start_186 .. :try_end_18a} :catch_18b

    goto :goto_1ba

    .line 1652
    :catch_18b
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1652
    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-virtual {v6, v7, v3, v4, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v2

    goto :goto_1ba

    .line 1661
    :cond_1b6
    :try_start_1b6
    invoke-virtual {v6, v7, v0, v4, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v2
    :try_end_1ba
    .catch Ljava/lang/SecurityException; {:try_start_1b6 .. :try_end_1ba} :catch_20f

    .line 1677
    :goto_1ba
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_20e

    const/4 v5, 0x2

    if-ne v2, v5, :cond_20e

    .line 1680
    const-string v3, " returned MODE_ERRORED"

    const-string v4, " and op "

    if-ne v2, v8, :cond_1ed

    .line 1681
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BLUETOOTH_CONNECT permission hard denied as checkOp for resolvedAttributionSource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20e

    .line 1686
    :cond_1ed
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BLUETOOTH_CONNECT permission hard denied as noteOp for resolvedAttributionSource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20e
    :goto_20e
    return v2

    :catch_20f
    move-exception v0

    .line 1665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v18

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1670
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_273

    .line 1671
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    :cond_273
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    if-nez p3, :cond_6

    goto :goto_47

    :cond_6
    if-eqz p5, :cond_b

    const/16 p3, 0x8

    goto :goto_c

    :cond_b
    move p3, v0

    :goto_c
    if-eqz p6, :cond_1e

    if-eqz p4, :cond_13

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_13
    if-nez p2, :cond_3b

    .line 1429
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3b

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_1e
    if-eqz p4, :cond_23

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_23
    if-eqz p2, :cond_32

    .line 1435
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_32

    or-int/lit8 p0, p3, 0x1

    return p0

    .line 1437
    :cond_32
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    if-nez p4, :cond_3b

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_3b
    if-eqz p2, :cond_44

    .line 1441
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    return v0

    :cond_44
    or-int/lit8 p0, p3, 0x2

    return p0

    :cond_47
    :goto_47
    return v0
.end method

.method public static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 3

    .line 1730
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object p1

    .line 1733
    :cond_7
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 3

    .line 1713
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1714
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1716
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1717
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1716
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/4 p1, 0x0

    .line 1721
    aget-object p0, p0, p1

    return-object p0

    .line 1724
    :cond_1d
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 1725
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1724
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1412
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method

.method public static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1404
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .registers 13

    .line 1120
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result p1

    if-eqz p1, :cond_19

    if-eqz v6, :cond_19

    const/4 p3, 0x0

    .line 1125
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_19
    return p1
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .registers 17

    .line 1015
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result p2

    if-eqz p5, :cond_37

    if-eqz p2, :cond_37

    const/4 p3, 0x1

    if-eq p2, p3, :cond_37

    const/4 p3, -0x1

    if-ne v8, p3, :cond_30

    .line 1026
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    .line 1027
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p3

    .line 1026
    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    return p2

    .line 1029
    :cond_30
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p1

    invoke-virtual {p0, v8, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_37
    return p2
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .registers 4

    .line 1038
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method
