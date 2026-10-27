.class public final Lcom/android/server/pm/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# static fields
.field private static final DEBUG_BROADCASTS:Z = false

.field private static final INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;


# instance fields
.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mUmInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-string v0, "android.permission.ACCESS_INSTANT_APPS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 70
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 71
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public static sendDeviceCustomizationReadyBroadcast()V
    .registers 20

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 259
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x1000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v19

    .line 261
    .local v19, "am":Landroid/app/IActivityManager;
    const-string v0, "android.permission.RECEIVE_DEVICE_CUSTOMIZATION_READY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, "requiredPermissions":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v2, v19

    move-object v5, v1

    :try_start_2b
    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_30

    .line 270
    nop

    .line 271
    return-void

    .line 268
    :catch_30
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 30
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "isInstantApp"    # Z
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[IZ",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 112
    .local p9, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_d
    if-ge v7, v5, :cond_a3

    aget v15, v3, v7

    .line 113
    .local v15, "userId":I
    new-instance v8, Landroid/content/Intent;

    .line 114
    const/4 v9, 0x0

    if-eqz v0, :cond_1e

    const-string/jumbo v10, "package"

    invoke-static {v10, v0, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1f

    :cond_1e
    move-object v10, v9

    :goto_1f
    move-object/from16 v14, p1

    invoke-direct {v8, v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v13, v8

    .line 116
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p8, :cond_2b

    sget-object v8, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    move-object v11, v8

    goto :goto_2c

    :cond_2b
    move-object v11, v9

    .line 117
    .local v11, "requiredPermissions":[Ljava/lang/String;
    :goto_2c
    if-eqz v1, :cond_31

    .line 118
    invoke-virtual {v13, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    :cond_31
    if-eqz v2, :cond_36

    .line 121
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    :cond_36
    const/4 v8, -0x1

    const-string v10, "android.intent.extra.UID"

    invoke-virtual {v13, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 125
    .local v8, "uid":I
    if-ltz v8, :cond_53

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-eq v12, v15, :cond_53

    .line 126
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-static {v15, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 127
    invoke-virtual {v13, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move/from16 v16, v8

    goto :goto_55

    .line 129
    :cond_53
    move/from16 v16, v8

    .end local v8    # "uid":I
    .local v16, "uid":I
    :goto_55
    if-eqz v4, :cond_6b

    const-string v8, "android"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 130
    nop

    .line 131
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 130
    const-string v10, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    invoke-virtual {v13, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 133
    :cond_6b
    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {v13, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const/high16 v8, 0x4000000

    or-int v8, p4, v8

    invoke-virtual {v13, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    move-object/from16 v12, p0

    iget-object v8, v12, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p6, :cond_81

    const/4 v10, 0x1

    move/from16 v17, v10

    goto :goto_83

    :cond_81
    move/from16 v17, v6

    .line 145
    :goto_83
    if-nez v4, :cond_86

    goto :goto_8c

    :cond_86
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    :goto_8c
    move-object/from16 v18, v9

    .line 142
    move-object v9, v13

    move-object/from16 v10, p6

    move/from16 v12, v17

    move-object/from16 v17, v13

    .end local v13    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    move v13, v15

    move-object/from16 v14, v18

    move/from16 v18, v15

    .end local v15    # "userId":I
    .local v18, "userId":I
    move-object/from16 v15, p10

    invoke-virtual/range {v8 .. v15}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I

    .line 112
    .end local v11    # "requiredPermissions":[Ljava/lang/String;
    .end local v16    # "uid":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d

    .line 148
    :cond_a3
    return-void
.end method

.method public getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .registers 11
    .param p1, "reasonCode"    # I

    .line 220
    const-wide/16 v0, 0x2710

    .line 221
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v2, :cond_a

    .line 222
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    .line 224
    :cond_a
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v8

    .line 225
    .local v8, "bOptions":Landroid/app/BroadcastOptions;
    const/4 v5, 0x0

    const-string v7, ""

    move-object v2, v8

    move-wide v3, v0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 228
    return-object v8
.end method

.method public sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V
    .registers 36
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeStopped"    # Z
    .param p3, "userId"    # I

    .line 185
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v15, p3

    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 186
    return-void

    .line 188
    :cond_f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v30

    .line 191
    .local v30, "am":Landroid/app/IActivityManager;
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "lockedBcIntent":Landroid/content/Intent;
    const/16 v14, 0x20

    if-eqz p2, :cond_25

    .line 194
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    :cond_25
    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v12

    .line 197
    .local v12, "requiredPermissions":[Ljava/lang/String;
    const/16 v3, 0xca

    invoke-virtual {v1, v3}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v3

    move-object/from16 v31, v3

    .line 199
    .local v31, "bOptions":Landroid/app/BroadcastOptions;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v19, -0x1

    .line 201
    invoke-virtual/range {v31 .. v31}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v20
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_43} :catch_9e

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 199
    move-object/from16 v3, v30

    move-object v6, v0

    move-object/from16 v14, v16

    move/from16 v15, v19

    move-object/from16 v16, v20

    move/from16 v19, p3

    :try_start_52
    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 204
    iget-object v3, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_9a

    move/from16 v4, p3

    :try_start_59
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 205
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 206
    .local v3, "bcIntent":Landroid/content/Intent;
    if-eqz p2, :cond_71

    .line 207
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    :cond_71
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    .line 211
    invoke-virtual/range {v31 .. v31}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 209
    move-object/from16 v13, v30

    move-object/from16 v16, v3

    move-object/from16 v22, v12

    move/from16 v29, p3

    invoke-interface/range {v13 .. v29}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_96} :catch_98

    .line 215
    .end local v0    # "lockedBcIntent":Landroid/content/Intent;
    .end local v3    # "bcIntent":Landroid/content/Intent;
    .end local v12    # "requiredPermissions":[Ljava/lang/String;
    .end local v31    # "bOptions":Landroid/app/BroadcastOptions;
    :cond_96
    nop

    .line 216
    return-void

    .line 213
    :catch_98
    move-exception v0

    goto :goto_a0

    :catch_9a
    move-exception v0

    move/from16 v4, p3

    goto :goto_a0

    :catch_9e
    move-exception v0

    move v4, v15

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    :goto_a0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkg"    # Ljava/lang/String;
    .param p3, "userIds"    # [I
    .param p4, "instantUserIds"    # [I

    .line 327
    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 329
    return-void
.end method

.method public sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userIds"    # [I
    .param p4, "instantUserIds"    # [I
    .param p5, "dataLoaderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[I[II",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 313
    .local p6, "broadcastAllowlist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 316
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    aget v1, p4, v2

    goto :goto_12

    :cond_10
    aget v1, p3, v2

    .line 315
    :goto_12
    move/from16 v13, p2

    invoke-static {v1, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 317
    .local v1, "uid":I
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v2, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v14, p5

    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    move-object v2, p0

    move-object/from16 v4, p1

    move-object v5, v0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 323
    return-void
.end method

.method public sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 33
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "instantUserIds"    # [I
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 80
    .local p9, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 81
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_7

    return-void

    .line 83
    :cond_7
    if-nez p7, :cond_e

    .line 84
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v1

    .local v1, "resolvedUserIds":[I
    goto :goto_10

    .line 86
    .end local v1    # "resolvedUserIds":[I
    :cond_e
    move-object/from16 v1, p7

    .line 89
    .restart local v1    # "resolvedUserIds":[I
    :goto_10
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 90
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v1

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_47

    .line 94
    :cond_2e
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p8

    move-object/from16 v21, p10

    invoke-virtual/range {v11 .. v21}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_47} :catch_48

    .line 98
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "resolvedUserIds":[I
    :goto_47
    goto :goto_49

    .line 97
    :catch_48
    move-exception v0

    .line 99
    :goto_49
    return-void
.end method

.method public sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dontKillApp"    # Z
    .param p4, "packageUid"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 234
    .local p3, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_2c

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending package changed: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " components="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_2c
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    move-object v14, v0

    .line 239
    .local v14, "extras":Landroid/os/Bundle;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "android.intent.extra.changed_component_name"

    invoke-virtual {v14, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v15, v1, [Ljava/lang/String;

    .line 241
    .local v15, "nameList":[Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 242
    const-string v1, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v14, v1, v15}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.extra.DONT_KILL_APP"

    move/from16 v10, p2

    invoke-virtual {v14, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v1, "android.intent.extra.UID"

    move/from16 v9, p4

    invoke-virtual {v14, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    if-eqz v13, :cond_62

    .line 246
    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {v14, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_62
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 252
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_6c

    :cond_6b
    nop

    :goto_6c
    move v4, v0

    .line 253
    .local v4, "flags":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method public sendPreferredActivityChangedBroadcast(I)V
    .registers 22
    .param p1, "userId"    # I

    .line 294
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v18

    .line 295
    .local v18, "am":Landroid/app/IActivityManager;
    if-nez v18, :cond_7

    .line 296
    return-void

    .line 299
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 300
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.user_handle"

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const/high16 v0, 0x4000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, v18

    move-object/from16 v19, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    move/from16 v17, p1

    :try_start_30
    invoke-interface/range {v1 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    .line 307
    goto :goto_35

    .line 306
    :catch_34
    move-exception v0

    .line 308
    :goto_35
    return-void
.end method

.method public sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .registers 13
    .param p1, "mediaStatus"    # Z
    .param p2, "replacing"    # Z
    .param p4, "uidArr"    # [I
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .line 152
    .local p3, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 153
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    .line 152
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZ[Ljava/lang/String;[ILandroid/content/IIntentReceiver;)V

    .line 154
    return-void
.end method

.method public sendResourcesChangedBroadcast(ZZ[Ljava/lang/String;[ILandroid/content/IIntentReceiver;)V
    .registers 22
    .param p1, "mediaStatus"    # Z
    .param p2, "replacing"    # Z
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidArr"    # [I
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;

    .line 158
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    array-length v3, v1

    .line 159
    .local v3, "size":I
    if-lez v3, :cond_3a

    .line 161
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v4, "extras":Landroid/os/Bundle;
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    if-eqz v2, :cond_1a

    .line 164
    const-string v5, "android.intent.extra.changed_uid_list"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 166
    :cond_1a
    if-eqz v0, :cond_21

    .line 167
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    :cond_21
    if-eqz p1, :cond_27

    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object v6, v5

    goto :goto_2a

    .line 170
    :cond_27
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v6, v5

    :goto_2a
    nop

    .line 172
    .local v6, "action":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object v8, v4

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 175
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v6    # "action":Ljava/lang/String;
    :cond_3a
    return-void
.end method

.method public sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;IILandroid/content/ComponentName;Ljava/lang/String;)V
    .registers 12
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "userId"    # I
    .param p3, "launcherUid"    # I
    .param p4, "launcherComponent"    # Landroid/content/ComponentName;
    .param p5, "appPredictionServicePackage"    # Ljava/lang/String;

    .line 276
    const-string v0, "android.intent.extra.USER"

    const-string v1, "android.content.pm.extra.SESSION"

    const-string v2, "android.content.pm.action.SESSION_COMMITTED"

    if-eqz p4, :cond_2a

    .line 277
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 279
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 280
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 281
    .local v3, "launcherIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 284
    .end local v3    # "launcherIntent":Landroid/content/Intent;
    :cond_2a
    if-eqz p5, :cond_4a

    .line 285
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 287
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, "predictorIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 291
    .end local v0    # "predictorIntent":Landroid/content/Intent;
    :cond_4a
    return-void
.end method
