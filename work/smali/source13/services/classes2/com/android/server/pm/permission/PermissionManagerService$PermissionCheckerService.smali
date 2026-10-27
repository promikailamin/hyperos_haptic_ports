.class final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionCheckerService"
.end annotation


# static fields
.field private static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method static bridge synthetic -$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1054
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1057
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1063
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 1064
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 1065
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1066
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1067
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1068
    return-void
.end method

.method private static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z

    .line 1240
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    .line 1241
    .local v16, "op":I
    const/16 v17, 0x2

    if-gez v16, :cond_31

    .line 1242
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return v17

    .line 1246
    :cond_31
    move-object/from16 v0, p3

    .line 1247
    .local v0, "current":Landroid/content/AttributionSource;
    const/4 v1, 0x0

    move-object v11, v0

    .line 1250
    .end local v0    # "current":Landroid/content/AttributionSource;
    .local v1, "next":Landroid/content/AttributionSource;
    .local v11, "current":Landroid/content/AttributionSource;
    :goto_35
    const/4 v0, 0x1

    const/16 v18, 0x0

    if-nez p6, :cond_40

    if-eqz v1, :cond_3d

    goto :goto_40

    :cond_3d
    move/from16 v2, v18

    goto :goto_41

    :cond_40
    :goto_40
    move v2, v0

    :goto_41
    move/from16 v19, v2

    .line 1252
    .local v19, "skipCurrentChecks":Z
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v20

    .line 1256
    .end local v1    # "next":Landroid/content/AttributionSource;
    .local v20, "next":Landroid/content/AttributionSource;
    if-eqz p6, :cond_4f

    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    :cond_4f
    if-eqz v20, :cond_58

    .line 1257
    invoke-virtual {v11, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1258
    return v17

    .line 1264
    :cond_58
    if-eqz p6, :cond_6a

    .line 1265
    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    if-eqz v20, :cond_6a

    .line 1266
    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_6a

    move v1, v0

    goto :goto_6c

    :cond_6a
    move/from16 v1, v18

    :goto_6c
    move/from16 v21, v1

    .line 1267
    .local v21, "singleReceiverFromDatasource":Z
    if-nez v21, :cond_76

    if-nez v20, :cond_73

    goto :goto_76

    :cond_73
    move/from16 v8, v18

    goto :goto_77

    :cond_76
    :goto_76
    move v8, v0

    .line 1269
    .local v8, "selfAccess":Z
    :goto_77
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object v3, v11

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, v19

    move/from16 v9, v21

    move-object/from16 v25, v11

    .end local v11    # "current":Landroid/content/AttributionSource;
    .local v25, "current":Landroid/content/AttributionSource;
    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    .line 1276
    .local v0, "opMode":I
    packed-switch v0, :pswitch_data_de

    move-object/from16 v3, p2

    goto :goto_cb

    .line 1282
    :pswitch_a2
    if-nez v19, :cond_b5

    .line 1283
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 1282
    move-object/from16 v3, p2

    invoke-static {v14, v15, v3, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 1285
    return v17

    .line 1282
    :cond_b5
    move-object/from16 v3, p2

    .line 1287
    :cond_b7
    if-eqz v20, :cond_cb

    .line 1288
    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 1287
    invoke-static {v14, v15, v3, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 1289
    return v17

    .line 1279
    :pswitch_c8
    move-object/from16 v3, p2

    return v17

    .line 1294
    :cond_cb
    :goto_cb
    if-eqz v20, :cond_dd

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_d4

    goto :goto_dd

    .line 1298
    :cond_d4
    move-object/from16 v11, v20

    .line 1299
    .end local v0    # "opMode":I
    .end local v8    # "selfAccess":Z
    .end local v19    # "skipCurrentChecks":Z
    .end local v21    # "singleReceiverFromDatasource":Z
    .end local v25    # "current":Landroid/content/AttributionSource;
    .restart local v11    # "current":Landroid/content/AttributionSource;
    move-object/from16 v12, p3

    move-object v13, v3

    move-object/from16 v1, v20

    goto/16 :goto_35

    .line 1295
    .end local v11    # "current":Landroid/content/AttributionSource;
    .restart local v0    # "opMode":I
    .restart local v8    # "selfAccess":Z
    .restart local v19    # "skipCurrentChecks":Z
    .restart local v21    # "singleReceiverFromDatasource":Z
    .restart local v25    # "current":Landroid/content/AttributionSource;
    :cond_dd
    :goto_dd
    return v18

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_c8
        :pswitch_a2
    .end packed-switch
.end method

.method private static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 35
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .param p2, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z

    .line 1483
    move-object/from16 v14, p0

    move-object/from16 v13, p3

    const/16 v21, 0x2

    if-ltz p1, :cond_eb

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_eb

    .line 1487
    :cond_10
    nop

    .line 1488
    move/from16 v10, p6

    invoke-static {v10, v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v9

    .line 1489
    .local v9, "attributionChainId":I
    const/4 v0, -0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-eq v9, v0, :cond_21

    move/from16 v0, v22

    goto :goto_23

    :cond_21
    move/from16 v0, v23

    :goto_23
    move/from16 v24, v0

    .line 1491
    .local v24, "hasChain":Z
    move-object/from16 v0, p3

    .line 1492
    .local v0, "current":Landroid/content/AttributionSource;
    const/4 v1, 0x0

    .line 1496
    .local v1, "next":Landroid/content/AttributionSource;
    if-eqz v24, :cond_40

    .line 1497
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 1498
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 1496
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v8, p2

    invoke-static {v14, v8, v4, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_42

    :cond_3d
    move/from16 v2, v23

    goto :goto_44

    :cond_40
    move-object/from16 v8, p2

    :goto_42
    move/from16 v2, v22

    :goto_44
    move/from16 v25, v2

    move-object v7, v0

    .line 1501
    .end local v0    # "current":Landroid/content/AttributionSource;
    .local v7, "current":Landroid/content/AttributionSource;
    .local v25, "isChainStartTrusted":Z
    :goto_47
    if-eqz v1, :cond_4c

    move/from16 v0, v22

    goto :goto_4e

    :cond_4c
    move/from16 v0, v23

    :goto_4e
    move/from16 v26, v0

    .line 1502
    .local v26, "skipCurrentChecks":Z
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    .line 1506
    .end local v1    # "next":Landroid/content/AttributionSource;
    .local v6, "next":Landroid/content/AttributionSource;
    if-eqz v6, :cond_5d

    invoke-virtual {v7, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1507
    return v21

    .line 1511
    :cond_5d
    if-nez v6, :cond_62

    move/from16 v19, v22

    goto :goto_64

    :cond_62
    move/from16 v19, v23

    .line 1512
    .local v19, "selfAccess":Z
    :goto_64
    if-eqz v25, :cond_7d

    .line 1513
    invoke-virtual {v7, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-virtual {v7, v13}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_72
    if-eqz v6, :cond_7a

    .line 1514
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_7a
    move/from16 v20, v22

    goto :goto_7f

    :cond_7d
    move/from16 v20, v23

    .line 1516
    .local v20, "isLinkTrusted":Z
    :goto_7f
    if-nez v26, :cond_91

    if-eqz v24, :cond_91

    .line 1517
    const/16 v17, 0x0

    move-object/from16 v15, p3

    move-object/from16 v16, v7

    move/from16 v18, p6

    invoke-static/range {v15 .. v20}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v11, v0

    goto :goto_93

    .line 1519
    :cond_91
    move/from16 v11, v23

    :goto_93
    nop

    .line 1520
    .local v11, "proxyAttributionFlags":I
    if-eqz v24, :cond_a6

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object v1, v6

    move/from16 v3, p6

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v12, v0

    goto :goto_a8

    .line 1522
    :cond_a6
    move/from16 v12, v23

    :goto_a8
    nop

    .line 1524
    .local v12, "proxiedAttributionFlags":I
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v17, v6

    .end local v6    # "next":Landroid/content/AttributionSource;
    .local v17, "next":Landroid/content/AttributionSource;
    move/from16 v6, p6

    move-object/from16 v18, v7

    .end local v7    # "current":Landroid/content/AttributionSource;
    .local v18, "current":Landroid/content/AttributionSource;
    move/from16 v7, v26

    move/from16 v8, v19

    move/from16 v27, v9

    .end local v9    # "attributionChainId":I
    .local v27, "attributionChainId":I
    move v9, v15

    move/from16 v10, v16

    move/from16 v13, v27

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    .line 1529
    .local v0, "opMode":I
    packed-switch v0, :pswitch_data_ec

    .line 1538
    if-eqz v17, :cond_ea

    invoke-virtual/range {v17 .. v17}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_dc

    goto :goto_ea

    .line 1531
    :pswitch_da
    return v21

    .line 1534
    :pswitch_db
    return v22

    .line 1542
    :cond_dc
    move-object/from16 v7, v17

    .line 1543
    .end local v0    # "opMode":I
    .end local v11    # "proxyAttributionFlags":I
    .end local v12    # "proxiedAttributionFlags":I
    .end local v18    # "current":Landroid/content/AttributionSource;
    .end local v19    # "selfAccess":Z
    .end local v20    # "isLinkTrusted":Z
    .end local v26    # "skipCurrentChecks":Z
    .restart local v7    # "current":Landroid/content/AttributionSource;
    move-object/from16 v8, p2

    move-object/from16 v13, p3

    move/from16 v10, p6

    move-object/from16 v1, v17

    move/from16 v9, v27

    goto/16 :goto_47

    .line 1539
    .end local v7    # "current":Landroid/content/AttributionSource;
    .restart local v0    # "opMode":I
    .restart local v11    # "proxyAttributionFlags":I
    .restart local v12    # "proxiedAttributionFlags":I
    .restart local v18    # "current":Landroid/content/AttributionSource;
    .restart local v19    # "selfAccess":Z
    .restart local v20    # "isLinkTrusted":Z
    .restart local v26    # "skipCurrentChecks":Z
    :cond_ea
    :goto_ea
    return v23

    .line 1484
    .end local v0    # "opMode":I
    .end local v11    # "proxyAttributionFlags":I
    .end local v12    # "proxiedAttributionFlags":I
    .end local v17    # "next":Landroid/content/AttributionSource;
    .end local v18    # "current":Landroid/content/AttributionSource;
    .end local v19    # "selfAccess":Z
    .end local v20    # "isLinkTrusted":Z
    .end local v24    # "hasChain":Z
    .end local v25    # "isChainStartTrusted":Z
    .end local v26    # "skipCurrentChecks":Z
    .end local v27    # "attributionChainId":I
    :cond_eb
    :goto_eb
    return v21

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_db
        :pswitch_da
    .end packed-switch
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "fromDatasource"    # Z
    .param p8, "attributedOp"    # I

    .line 1195
    move-object v10, p2

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 1197
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_27

    .line 1199
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    move-object v1, v4

    .line 1200
    const-string v4, "android"

    iget-object v5, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1203
    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_23} :catch_25

    .line 1207
    :cond_23
    move-object v0, v1

    goto :goto_28

    .line 1205
    :catch_25
    move-exception v0

    .line 1206
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2

    .line 1197
    .end local v0    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_27
    move-object v0, v1

    .line 1210
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_28
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1211
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v1

    return v1

    .line 1214
    :cond_3e
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1215
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    return v1

    .line 1220
    :cond_49
    if-nez p7, :cond_5c

    .line 1221
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1222
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 1220
    move-object v11, p0

    move-object v12, p1

    invoke-static {p0, p1, p2, v1, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1223
    return v2

    .line 1220
    :cond_5c
    move-object v11, p0

    move-object v12, p1

    .line 1226
    :cond_5e
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 1227
    nop

    .line 1228
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    const/4 v8, 0x0

    .line 1227
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    return v1

    .line 1232
    :cond_7a
    return v3
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1407
    .local p4, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 1414
    .local v1, "permissionGranted":Z
    :goto_c
    if-nez v1, :cond_3c

    .line 1415
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1416
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1417
    const-string v4, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1418
    :cond_2c
    nop

    .line 1419
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v4

    .line 1420
    .local v4, "hotwordServiceProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    if-eqz v4, :cond_3a

    .line 1421
    invoke-interface {v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v5

    if-ne p3, v5, :cond_3a

    goto :goto_3b

    :cond_3a
    move v2, v3

    :goto_3b
    move v1, v2

    .line 1424
    .end local v4    # "hotwordServiceProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    :cond_3c
    if-eqz v1, :cond_4d

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1425
    const-string v2, "android.permission.RENOUNCE_PERMISSIONS"

    invoke-virtual {p0, v2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4d

    .line 1427
    return v3

    .line 1429
    :cond_4d
    return v1
.end method

.method private static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .registers 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "fromDatasource"    # Z
    .param p8, "attributedOp"    # I

    .line 1308
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v10, p3

    move/from16 v9, p6

    move/from16 v8, p7

    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 1309
    .local v7, "op":I
    nop

    .line 1310
    invoke-static {v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v6

    .line 1311
    .local v6, "attributionChainId":I
    const/16 v22, 0x1

    const/16 v23, 0x0

    const/4 v0, -0x1

    if-eq v6, v0, :cond_1f

    move/from16 v0, v22

    goto :goto_21

    :cond_1f
    move/from16 v0, v23

    :goto_21
    move/from16 v24, v0

    .line 1312
    .local v24, "hasChain":Z
    move-object/from16 v0, p3

    .line 1313
    .local v0, "current":Landroid/content/AttributionSource;
    const/4 v1, 0x0

    .line 1316
    .local v1, "next":Landroid/content/AttributionSource;
    if-eqz v24, :cond_3c

    .line 1317
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 1318
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 1316
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v14, v15, v4, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3c

    :cond_39
    move/from16 v2, v23

    goto :goto_3e

    :cond_3c
    :goto_3c
    move/from16 v2, v22

    :goto_3e
    move/from16 v25, v2

    move-object v12, v0

    .line 1321
    .end local v0    # "current":Landroid/content/AttributionSource;
    .local v12, "current":Landroid/content/AttributionSource;
    .local v25, "isChainStartTrusted":Z
    :goto_41
    if-nez v8, :cond_49

    if-eqz v1, :cond_46

    goto :goto_49

    :cond_46
    move/from16 v0, v23

    goto :goto_4b

    :cond_49
    :goto_49
    move/from16 v0, v22

    :goto_4b
    move/from16 v26, v0

    .line 1322
    .local v26, "skipCurrentChecks":Z
    invoke-virtual {v12}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    .line 1326
    .end local v1    # "next":Landroid/content/AttributionSource;
    .local v5, "next":Landroid/content/AttributionSource;
    const/16 v27, 0x2

    if-eqz v8, :cond_5b

    invoke-virtual {v12, v10}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    :cond_5b
    if-eqz v5, :cond_64

    .line 1327
    invoke-virtual {v12, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1328
    return v27

    .line 1332
    :cond_64
    if-nez v26, :cond_75

    .line 1333
    invoke-virtual {v12}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v12}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 1332
    invoke-static {v14, v15, v13, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 1334
    return v27

    .line 1337
    :cond_75
    if-eqz v5, :cond_86

    .line 1338
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 1337
    invoke-static {v14, v15, v13, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1339
    return v27

    .line 1342
    :cond_86
    if-gez v7, :cond_c7

    .line 1344
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1345
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1346
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1347
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform runtime permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_c0
    if-nez v5, :cond_c3

    .line 1351
    return v23

    .line 1353
    :cond_c3
    move-object v12, v5

    .line 1354
    move-object v1, v5

    goto/16 :goto_41

    .line 1360
    :cond_c7
    if-eqz v8, :cond_da

    .line 1361
    invoke-virtual {v12, v10}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    if-eqz v5, :cond_da

    .line 1362
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_da

    move/from16 v0, v22

    goto :goto_dc

    :cond_da
    move/from16 v0, v23

    :goto_dc
    move/from16 v28, v0

    .line 1363
    .local v28, "singleReceiverFromDatasource":Z
    if-nez v28, :cond_e6

    if-nez v5, :cond_e3

    goto :goto_e6

    :cond_e3
    move/from16 v20, v23

    goto :goto_e8

    :cond_e6
    :goto_e6
    move/from16 v20, v22

    .line 1364
    .local v20, "selfAccess":Z
    :goto_e8
    if-eqz v25, :cond_101

    .line 1365
    invoke-virtual {v12, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f6

    invoke-virtual {v12, v10}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    :cond_f6
    if-eqz v5, :cond_fe

    .line 1366
    invoke-virtual {v5, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_101

    :cond_fe
    move/from16 v21, v22

    goto :goto_103

    :cond_101
    move/from16 v21, v23

    .line 1368
    .local v21, "isLinkTrusted":Z
    :goto_103
    if-nez v26, :cond_115

    if-eqz v24, :cond_115

    .line 1369
    move-object/from16 v16, p3

    move-object/from16 v17, v12

    move/from16 v18, p7

    move/from16 v19, p6

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v11, v0

    goto :goto_117

    .line 1371
    :cond_115
    move/from16 v11, v23

    :goto_117
    nop

    .line 1372
    .local v11, "proxyAttributionFlags":I
    if-eqz v24, :cond_12c

    move-object/from16 v0, p3

    move-object v1, v5

    move/from16 v2, p7

    move/from16 v3, p6

    move/from16 v4, v20

    move-object/from16 v16, v5

    .end local v5    # "next":Landroid/content/AttributionSource;
    .local v16, "next":Landroid/content/AttributionSource;
    move/from16 v5, v21

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    goto :goto_130

    .line 1374
    .end local v16    # "next":Landroid/content/AttributionSource;
    .restart local v5    # "next":Landroid/content/AttributionSource;
    :cond_12c
    move-object/from16 v16, v5

    .end local v5    # "next":Landroid/content/AttributionSource;
    .restart local v16    # "next":Landroid/content/AttributionSource;
    move/from16 v0, v23

    :goto_130
    move-object v5, v12

    .end local v12    # "current":Landroid/content/AttributionSource;
    .local v5, "current":Landroid/content/AttributionSource;
    move v12, v0

    .line 1376
    .local v12, "proxiedAttributionFlags":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v7

    move-object v3, v5

    move-object/from16 v4, p4

    move-object v15, v5

    .end local v5    # "current":Landroid/content/AttributionSource;
    .local v15, "current":Landroid/content/AttributionSource;
    move/from16 v5, p5

    move/from16 v17, v6

    .end local v6    # "attributionChainId":I
    .local v17, "attributionChainId":I
    move/from16 v6, p6

    move/from16 v29, v7

    .end local v7    # "op":I
    .local v29, "op":I
    move/from16 v7, v26

    move/from16 v8, v20

    move/from16 v9, v28

    move/from16 v10, p8

    move/from16 v13, v17

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    .line 1381
    .local v0, "opMode":I
    packed-switch v0, :pswitch_data_190

    .line 1390
    if-eqz p6, :cond_16f

    .line 1391
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    move/from16 v2, p7

    move/from16 v3, v29

    .end local v29    # "op":I
    .local v3, "op":I
    invoke-direct {v1, v14, v3, v15, v2}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 1393
    .local v1, "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v15}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_173

    .line 1383
    .end local v1    # "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    .end local v3    # "op":I
    .restart local v29    # "op":I
    :pswitch_16d
    return v27

    .line 1386
    :pswitch_16e
    return v22

    .line 1390
    :cond_16f
    move/from16 v2, p7

    move/from16 v3, v29

    .line 1396
    .end local v29    # "op":I
    .restart local v3    # "op":I
    :goto_173
    if-eqz v16, :cond_18e

    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_17c

    goto :goto_18e

    .line 1400
    :cond_17c
    move-object/from16 v12, v16

    .line 1401
    .end local v0    # "opMode":I
    .end local v11    # "proxyAttributionFlags":I
    .end local v15    # "current":Landroid/content/AttributionSource;
    .end local v20    # "selfAccess":Z
    .end local v21    # "isLinkTrusted":Z
    .end local v26    # "skipCurrentChecks":Z
    .end local v28    # "singleReceiverFromDatasource":Z
    .local v12, "current":Landroid/content/AttributionSource;
    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v10, p3

    move/from16 v9, p6

    move v8, v2

    move v7, v3

    move-object/from16 v1, v16

    move/from16 v6, v17

    goto/16 :goto_41

    .line 1397
    .restart local v0    # "opMode":I
    .restart local v11    # "proxyAttributionFlags":I
    .local v12, "proxiedAttributionFlags":I
    .restart local v15    # "current":Landroid/content/AttributionSource;
    .restart local v20    # "selfAccess":Z
    .restart local v21    # "isLinkTrusted":Z
    .restart local v26    # "skipCurrentChecks":Z
    .restart local v28    # "singleReceiverFromDatasource":Z
    :cond_18e
    :goto_18e
    return v23

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_16e
        :pswitch_16d
    .end packed-switch
.end method

.method private static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDatasource"    # Z

    .line 1105
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1108
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    const/4 v3, -0x1

    move/from16 v9, p1

    if-ne v9, v3, :cond_15

    .line 1109
    return-void

    .line 1112
    :cond_15
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1113
    .local v3, "current":Landroid/content/AttributionSource;
    const/4 v4, 0x0

    move-object v10, v3

    .line 1116
    .end local v3    # "current":Landroid/content/AttributionSource;
    .local v4, "next":Landroid/content/AttributionSource;
    .local v10, "current":Landroid/content/AttributionSource;
    :goto_1c
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez p3, :cond_25

    if-eqz v4, :cond_23

    goto :goto_25

    :cond_23
    move v6, v3

    goto :goto_26

    :cond_25
    :goto_25
    move v6, v5

    :goto_26
    move v11, v6

    .line 1118
    .local v11, "skipCurrentFinish":Z
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v12

    .line 1122
    .end local v4    # "next":Landroid/content/AttributionSource;
    .local v12, "next":Landroid/content/AttributionSource;
    if-eqz p3, :cond_33

    invoke-virtual {v10}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-eq v4, v1, :cond_3c

    :cond_33
    if-eqz v12, :cond_3c

    .line 1123
    invoke-virtual {v10, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1124
    return-void

    .line 1130
    :cond_3c
    if-eqz p3, :cond_4e

    .line 1131
    invoke-virtual {v10}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-ne v4, v1, :cond_4e

    if-eqz v12, :cond_4e

    .line 1132
    invoke-virtual {v12}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_4e

    move v4, v5

    goto :goto_4f

    :cond_4e
    move v4, v3

    :goto_4f
    move v13, v4

    .line 1133
    .local v13, "singleReceiverFromDatasource":Z
    if-nez v13, :cond_54

    if-nez v12, :cond_55

    :cond_54
    move v3, v5

    :cond_55
    move v14, v3

    .line 1135
    .local v14, "selfAccess":Z
    if-nez v13, :cond_5a

    .line 1136
    move-object v3, v10

    goto :goto_5b

    :cond_5a
    move-object v3, v12

    :goto_5b
    move-object v15, v3

    .line 1138
    .local v15, "accessorSource":Landroid/content/AttributionSource;
    if-eqz v14, :cond_78

    .line 1139
    invoke-static {v0, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v16

    .line 1140
    .local v16, "resolvedPackageName":Ljava/lang/String;
    if-nez v16, :cond_65

    .line 1141
    return-void

    .line 1143
    :cond_65
    iget-object v4, v1, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1144
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    .line 1145
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1143
    move-object v3, v2

    move/from16 v5, p1

    move-object/from16 v7, v16

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1146
    .end local v16    # "resolvedPackageName":Ljava/lang/String;
    goto :goto_8d

    .line 1147
    :cond_78
    nop

    .line 1148
    invoke-static {v0, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    .line 1149
    .local v3, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_84

    .line 1150
    return-void

    .line 1152
    :cond_84
    iget-object v4, v1, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1153
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v5

    .line 1152
    invoke-virtual {v2, v4, v5, v3, v11}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 1156
    .end local v3    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    :goto_8d
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 1157
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    .line 1158
    .local v3, "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    if-eqz v3, :cond_a0

    .line 1159
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    .line 1162
    :cond_a0
    if-eqz v12, :cond_ad

    invoke-virtual {v12}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_a9

    goto :goto_ad

    .line 1171
    :cond_a9
    move-object v10, v12

    .line 1172
    .end local v3    # "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    .end local v11    # "skipCurrentFinish":Z
    .end local v13    # "singleReceiverFromDatasource":Z
    .end local v14    # "selfAccess":Z
    .end local v15    # "accessorSource":Landroid/content/AttributionSource;
    move-object v4, v12

    goto/16 :goto_1c

    .line 1163
    .restart local v3    # "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    .restart local v11    # "skipCurrentFinish":Z
    .restart local v13    # "singleReceiverFromDatasource":Z
    .restart local v14    # "selfAccess":Z
    .restart local v15    # "accessorSource":Landroid/content/AttributionSource;
    :cond_ad
    :goto_ad
    if-eqz v12, :cond_c3

    .line 1164
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    .line 1165
    if-eqz v3, :cond_c3

    .line 1166
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    .line 1169
    :cond_c3
    return-void
.end method

.method private static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .registers 5
    .param p0, "startDataDelivery"    # Z
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1712
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_19

    if-nez p0, :cond_b

    goto :goto_19

    .line 1715
    :cond_b
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 1718
    .local v1, "attributionChainId":I
    if-gez v1, :cond_18

    .line 1719
    const/4 v1, 0x0

    .line 1720
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1722
    :cond_18
    return v1

    .line 1713
    .end local v1    # "attributionChainId":I
    :cond_19
    :goto_19
    const/4 v0, -0x1

    return v0
.end method

.method private static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .registers 41
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chainStartToken"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "skipProxyOperation"    # Z
    .param p8, "selfAccess"    # Z
    .param p9, "singleReceiverFromDatasource"    # Z
    .param p10, "attributedOp"    # I
    .param p11, "proxyAttributionFlags"    # I
    .param p12, "proxiedAttributionFlags"    # I
    .param p13, "attributionChainId"    # I

    .line 1558
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    move/from16 v10, p7

    move/from16 v9, p10

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/AppOpsManager;

    .line 1559
    .local v8, "appOpsManager":Landroid/app/AppOpsManager;
    if-nez p9, :cond_19

    .line 1560
    move-object v0, v12

    goto :goto_1d

    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    :goto_1d
    move-object v7, v0

    .line 1561
    .local v7, "accessorSource":Landroid/content/AttributionSource;
    const/4 v0, 0x2

    if-nez p5, :cond_4c

    .line 1562
    invoke-static {v1, v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 1564
    .local v3, "resolvedAccessorPackageName":Ljava/lang/String;
    if-nez v3, :cond_28

    .line 1565
    return v0

    .line 1567
    :cond_28
    nop

    .line 1568
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    .line 1567
    invoke-virtual {v8, v2, v4, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 1569
    .local v4, "opMode":I
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    .line 1570
    .local v5, "next":Landroid/content/AttributionSource;
    if-nez p8, :cond_4b

    if-nez v4, :cond_4b

    if-eqz v5, :cond_4b

    .line 1571
    invoke-static {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v6

    .line 1572
    .local v6, "resolvedNextPackageName":Ljava/lang/String;
    if-nez v6, :cond_42

    .line 1573
    return v0

    .line 1575
    :cond_42
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v8, v2, v0, v6}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0

    .line 1578
    .end local v6    # "resolvedNextPackageName":Ljava/lang/String;
    :cond_4b
    return v4

    .line 1579
    .end local v3    # "resolvedAccessorPackageName":Ljava/lang/String;
    .end local v4    # "opMode":I
    .end local v5    # "next":Landroid/content/AttributionSource;
    :cond_4c
    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v5, " while not having "

    const-string v4, " protecting data with platform defined runtime permission "

    const-string v3, "Datasource "

    const-string v13, " with source "

    const-string v14, "Security exception for op "

    const-string v15, ", "

    move-object/from16 v17, v15

    const-string v15, ":"

    if-eqz p6, :cond_1be

    .line 1580
    invoke-static {v1, v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v23

    .line 1582
    .local v23, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_6b

    .line 1583
    return v0

    .line 1590
    :cond_6b
    move/from16 v18, p2

    .line 1591
    .local v18, "startedOp":I
    const/16 v19, 0x0

    .line 1598
    .local v19, "checkedOpResult":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_8d

    if-eq v9, v2, :cond_8d

    .line 1599
    nop

    .line 1600
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1601
    move-object/from16 v24, v7

    .end local v7    # "accessorSource":Landroid/content/AttributionSource;
    .local v24, "accessorSource":Landroid/content/AttributionSource;
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1599
    invoke-virtual {v8, v2, v0, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1602
    .end local v19    # "checkedOpResult":I
    .local v0, "checkedOpResult":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_87

    .line 1603
    return v0

    .line 1605
    :cond_87
    move/from16 v18, p10

    move v2, v0

    move/from16 v7, v18

    goto :goto_93

    .line 1598
    .end local v0    # "checkedOpResult":I
    .end local v24    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v7    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v19    # "checkedOpResult":I
    :cond_8d
    move-object/from16 v24, v7

    .line 1607
    .end local v7    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v24    # "accessorSource":Landroid/content/AttributionSource;
    move/from16 v7, v18

    move/from16 v2, v19

    .end local v18    # "startedOp":I
    .end local v19    # "checkedOpResult":I
    .local v2, "checkedOpResult":I
    .local v7, "startedOp":I
    :goto_93
    if-eqz p8, :cond_106

    .line 1609
    nop

    .line 1611
    :try_start_96
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getUid()I

    move-result v16

    .line 1612
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    .line 1614
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v19

    .line 1609
    move-object v13, v8

    move-object/from16 v14, p1

    move v15, v7

    move-object/from16 v20, p4

    move/from16 v21, p11

    move/from16 v22, p13

    invoke-virtual/range {v13 .. v22}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_b2
    .catch Ljava/lang/SecurityException; {:try_start_96 .. :try_end_b2} :catch_b9

    .line 1624
    .local v0, "startedOpResult":I
    move v12, v7

    move-object/from16 v26, v8

    move-object/from16 v25, v24

    goto/16 :goto_125

    .line 1616
    .end local v0    # "startedOpResult":I
    :catch_b9
    move-exception v0

    .line 1617
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1619
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1617
    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object v3, v8

    move-object/from16 v4, p1

    move/from16 v5, p10

    move-object/from16 v6, p3

    move v14, v7

    move-object/from16 v13, v24

    .end local v7    # "startedOp":I
    .end local v24    # "accessorSource":Landroid/content/AttributionSource;
    .local v13, "accessorSource":Landroid/content/AttributionSource;
    .local v14, "startedOp":I
    move-object/from16 v7, p4

    move-object v15, v8

    .end local v8    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v15, "appOpsManager":Landroid/app/AppOpsManager;
    move/from16 v8, p7

    move v12, v9

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    invoke-virtual/range {v3 .. v11}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    .line 1624
    .local v0, "startedOpResult":I
    move-object/from16 v25, v13

    move v12, v14

    move-object/from16 v26, v15

    goto :goto_125

    .line 1627
    .end local v0    # "startedOpResult":I
    .end local v13    # "accessorSource":Landroid/content/AttributionSource;
    .end local v14    # "startedOp":I
    .end local v15    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v7    # "startedOp":I
    .restart local v8    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v24    # "accessorSource":Landroid/content/AttributionSource;
    :cond_106
    move-object v11, v8

    move v12, v9

    move-object/from16 v10, v24

    move v9, v7

    .end local v7    # "startedOp":I
    .end local v8    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v24    # "accessorSource":Landroid/content/AttributionSource;
    .local v9, "startedOp":I
    .local v10, "accessorSource":Landroid/content/AttributionSource;
    .local v11, "appOpsManager":Landroid/app/AppOpsManager;
    move-object v3, v11

    move-object/from16 v4, p1

    move v5, v9

    move-object/from16 v6, v23

    move-object/from16 v7, p4

    move/from16 v8, p7

    move v12, v9

    .end local v9    # "startedOp":I
    .local v12, "startedOp":I
    move/from16 v9, p11

    move-object/from16 v25, v10

    .end local v10    # "accessorSource":Landroid/content/AttributionSource;
    .local v25, "accessorSource":Landroid/content/AttributionSource;
    move/from16 v10, p12

    move-object/from16 v26, v11

    .end local v11    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v26, "appOpsManager":Landroid/app/AppOpsManager;
    move/from16 v11, p13

    :try_start_120
    invoke-virtual/range {v3 .. v11}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0
    :try_end_124
    .catch Ljava/lang/SecurityException; {:try_start_120 .. :try_end_124} :catch_12a

    .line 1642
    .restart local v0    # "startedOpResult":I
    nop

    .line 1644
    :goto_125
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 1630
    .end local v0    # "startedOpResult":I
    :catch_12a
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1632
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1633
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v7, v17

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1635
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1636
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1637
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-eqz v4, :cond_19f

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1639
    .local v4, "next":Landroid/content/AttributionSource;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1641
    .end local v4    # "next":Landroid/content/AttributionSource;
    :cond_19f
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1646
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "checkedOpResult":I
    .end local v3    # "msg":Ljava/lang/String;
    .end local v12    # "startedOp":I
    .end local v23    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .end local v25    # "accessorSource":Landroid/content/AttributionSource;
    .end local v26    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v7, "accessorSource":Landroid/content/AttributionSource;
    .restart local v8    # "appOpsManager":Landroid/app/AppOpsManager;
    :cond_1be
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v7, v17

    .end local v7    # "accessorSource":Landroid/content/AttributionSource;
    .end local v8    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v25    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v26    # "appOpsManager":Landroid/app/AppOpsManager;
    move-object/from16 v2, v25

    .end local v25    # "accessorSource":Landroid/content/AttributionSource;
    .local v2, "accessorSource":Landroid/content/AttributionSource;
    invoke-static {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v9

    .line 1648
    .local v9, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d2

    .line 1649
    const/4 v0, 0x2

    return v0

    .line 1651
    :cond_1d2
    move/from16 v0, p2

    .line 1652
    .local v0, "notedOp":I
    const/4 v8, 0x0

    .line 1659
    .local v8, "checkedOpResult":I
    move/from16 v10, p10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1f7

    move/from16 v11, p2

    if-eq v10, v11, :cond_1f9

    .line 1660
    nop

    .line 1661
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getUid()I

    move-result v12

    .line 1662
    move/from16 v16, v0

    .end local v0    # "notedOp":I
    .local v16, "notedOp":I
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1660
    move-object/from16 v1, v26

    .end local v26    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v1, v11, v12, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v8

    .line 1663
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1f3

    .line 1664
    return v8

    .line 1666
    :cond_1f3
    move/from16 v0, p10

    move v12, v0

    .end local v16    # "notedOp":I
    .restart local v0    # "notedOp":I
    goto :goto_1ff

    .line 1659
    .end local v1    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v26    # "appOpsManager":Landroid/app/AppOpsManager;
    :cond_1f7
    move/from16 v11, p2

    :cond_1f9
    move/from16 v16, v0

    move-object/from16 v1, v26

    .line 1668
    .end local v0    # "notedOp":I
    .end local v26    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v1    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v16    # "notedOp":I
    move/from16 v12, v16

    .end local v16    # "notedOp":I
    .local v12, "notedOp":I
    :goto_1ff
    if-eqz p8, :cond_26a

    .line 1675
    nop

    .line 1676
    :try_start_202
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1677
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1678
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v13
    :try_end_20e
    .catch Ljava/lang/SecurityException; {:try_start_202 .. :try_end_20e} :catch_229

    .line 1675
    move-object v14, v3

    move-object v3, v1

    move-object v15, v4

    move v4, v12

    move-object/from16 v24, v2

    move-object v2, v5

    .end local v2    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v24    # "accessorSource":Landroid/content/AttributionSource;
    move v5, v0

    move-object v10, v6

    move-object v6, v7

    move-object v7, v13

    move v13, v8

    .end local v8    # "checkedOpResult":I
    .local v13, "checkedOpResult":I
    move-object/from16 v8, p4

    :try_start_21c
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_220
    .catch Ljava/lang/SecurityException; {:try_start_21c .. :try_end_220} :catch_227

    .line 1687
    .local v0, "notedOpResult":I
    move-object/from16 v5, p3

    move-object/from16 v2, p4

    move/from16 v3, p7

    goto :goto_268

    .line 1680
    .end local v0    # "notedOpResult":I
    :catch_227
    move-exception v0

    goto :goto_231

    .end local v13    # "checkedOpResult":I
    .end local v24    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v2    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v8    # "checkedOpResult":I
    :catch_229
    move-exception v0

    move-object/from16 v24, v2

    move-object v14, v3

    move-object v15, v4

    move-object v2, v5

    move-object v10, v6

    move v13, v8

    .line 1681
    .end local v2    # "accessorSource":Landroid/content/AttributionSource;
    .end local v8    # "checkedOpResult":I
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v13    # "checkedOpResult":I
    .restart local v24    # "accessorSource":Landroid/content/AttributionSource;
    :goto_231
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1683
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1681
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    move-object/from16 v2, p4

    move/from16 v3, p7

    invoke-virtual {v1, v12, v5, v2, v3}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 1687
    .local v0, "notedOpResult":I
    nop

    :goto_268
    move v8, v13

    goto :goto_277

    .line 1690
    .end local v0    # "notedOpResult":I
    .end local v13    # "checkedOpResult":I
    .end local v24    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v2    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v8    # "checkedOpResult":I
    :cond_26a
    move-object/from16 v5, p3

    move/from16 v3, p7

    move-object/from16 v24, v2

    move-object/from16 v2, p4

    .end local v2    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v24    # "accessorSource":Landroid/content/AttributionSource;
    :try_start_272
    invoke-virtual {v1, v12, v9, v2, v3}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0
    :try_end_276
    .catch Ljava/lang/SecurityException; {:try_start_272 .. :try_end_276} :catch_27c

    .line 1704
    .restart local v0    # "notedOpResult":I
    nop

    .line 1706
    :goto_277
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .line 1692
    .end local v0    # "notedOpResult":I
    :catch_27c
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1694
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1695
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1697
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1698
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1699
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-eqz v6, :cond_2ef

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    .line 1701
    .local v6, "next":Landroid/content/AttributionSource;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1703
    .end local v6    # "next":Landroid/content/AttributionSource;
    :cond_2ef
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .registers 10
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z
    .param p6, "flagsForProxy"    # Z

    .line 1453
    const/4 v0, 0x0

    if-eqz p1, :cond_47

    if-nez p3, :cond_6

    goto :goto_47

    .line 1456
    :cond_6
    if-eqz p5, :cond_b

    .line 1457
    const/16 v1, 0x8

    goto :goto_c

    :cond_b
    move v1, v0

    .line 1458
    .local v1, "trustedFlag":I
    :goto_c
    if-eqz p6, :cond_1e

    .line 1459
    if-eqz p4, :cond_13

    .line 1460
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 1461
    :cond_13
    if-nez p2, :cond_3b

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1462
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 1465
    :cond_1e
    if-eqz p4, :cond_23

    .line 1466
    or-int/lit8 v0, v1, 0x4

    return v0

    .line 1467
    :cond_23
    if-eqz p2, :cond_32

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1468
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 1469
    :cond_32
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 1470
    or-int/lit8 v0, v1, 0x4

    return v0

    .line 1473
    :cond_3b
    if-eqz p2, :cond_44

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1474
    return v0

    .line 1476
    :cond_44
    or-int/lit8 v0, v1, 0x2

    return v0

    .line 1454
    .end local v1    # "trustedFlag":I
    :cond_47
    :goto_47
    return v0
.end method

.method private static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1744
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1745
    return-object p1

    .line 1747
    :cond_7
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method private static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1727
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1728
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1730
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1731
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1730
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 1735
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 1738
    :cond_1d
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1739
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1738
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .registers 13
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z

    .line 1444
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    return v0
.end method

.method private static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .registers 13
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z

    .line 1436
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .registers 13
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z

    .line 1179
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    .line 1182
    .local v0, "result":I
    if-eqz v0, :cond_19

    if-eqz p5, :cond_19

    .line 1184
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 1186
    :cond_19
    return v0
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .registers 21
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z
    .param p7, "attributedOp"    # I

    .line 1076
    move-object v0, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    new-instance v4, Landroid/content/AttributionSource;

    move-object v12, p2

    invoke-direct {v4, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1080
    .local v4, "attributionSource":Landroid/content/AttributionSource;
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    .line 1084
    .local v1, "result":I
    if-eqz p5, :cond_41

    if-eqz v1, :cond_41

    const/4 v2, 0x1

    if-eq v1, v2, :cond_41

    .line 1086
    const/4 v2, -0x1

    if-ne v11, v2, :cond_3a

    .line 1087
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 1088
    invoke-virtual {v4}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 1087
    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    goto :goto_41

    .line 1090
    :cond_3a
    invoke-virtual {v4}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-virtual {p0, v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 1093
    :cond_41
    :goto_41
    return v1
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDataSource"    # Z

    .line 1099
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    .line 1101
    return-void
.end method
