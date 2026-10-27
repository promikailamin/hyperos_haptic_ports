.class public Lcom/android/server/pm/permission/LegacyPermissionManagerService;
.super Landroid/permission/ILegacyPermissionManager$Stub;
.source "LegacyPermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;,
        Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V

    .line 84
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 85
    const-string v0, "legacy_permission"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 89
    invoke-direct {p0}, Landroid/permission/ILegacyPermissionManager$Stub;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 92
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 93
    return-void
.end method

.method private checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appop"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "pid"    # I
    .param p7, "uid"    # I

    .line 263
    if-eqz p2, :cond_c

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0, p2, p6, p7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_c

    .line 266
    const/4 v0, -0x1

    return v0

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 271
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    move-object v1, v0

    move-object v2, p3

    move v3, p7

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 273
    const/4 v1, 0x1

    return v1

    .line 275
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 73
    .local v0, "legacyPermissionManagerInternal":Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    if-nez v0, :cond_18

    .line 74
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;)V

    .line 75
    const-class v1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 78
    :cond_18
    return-object v0
.end method

.method private verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 220
    .local v3, "reportError":Z
    iget-object v4, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingUid()I

    move-result v4

    .line 221
    .local v4, "callingUid":I
    iget-object v5, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingPid()I

    move-result v5

    .line 222
    .local v5, "callingPid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_26

    if-ne v4, v2, :cond_22

    move/from16 v6, p3

    if-eq v5, v6, :cond_28

    goto :goto_24

    :cond_22
    move/from16 v6, p3

    .line 224
    :goto_24
    const/4 v3, 0x1

    goto :goto_28

    .line 222
    :cond_26
    move/from16 v6, p3

    .line 228
    :cond_28
    :goto_28
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_60

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-lt v12, v7, :cond_60

    .line 229
    iget-object v12, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v1, v13}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getPackageUidForUser(Ljava/lang/String;I)I

    move-result v12

    .line 230
    .local v12, "packageUid":I
    if-eq v2, v12, :cond_60

    .line 231
    const v13, 0x534e4554

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "193441322"

    aput-object v15, v14, v11

    .line 232
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    if-lt v15, v7, :cond_51

    .line 233
    move v7, v4

    goto :goto_52

    :cond_51
    move v7, v2

    .line 232
    :goto_52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v10

    const-string v7, "Package uid mismatch"

    aput-object v7, v14, v9

    .line 231
    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 234
    const/4 v3, 0x1

    .line 237
    .end local v12    # "packageUid":I
    :cond_60
    if-nez v3, :cond_63

    .line 244
    return-void

    .line 238
    :cond_63
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    aput-object v1, v7, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p2, v7, v8

    .line 238
    const-string v8, "Calling uid %d, pid %d cannot access for package %s (uid=%d, pid=%d): %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "response":Ljava/lang/String;
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method public checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 98
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    .line 100
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 103
    .local v12, "appId":I
    const/4 v0, 0x0

    const/16 v2, 0x3e8

    if-eq v12, v2, :cond_18

    if-nez v12, :cond_23

    .line 104
    :cond_18
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->get()Lcom/android/server/pm/permission/PermissionManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->isAllowedAccessDeviceIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 107
    return v0

    .line 110
    :cond_23
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_38

    .line 113
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->get()Lcom/android/server/pm/permission/PermissionManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->isAllowedAccessDeviceIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 116
    return v0

    .line 120
    :cond_38
    if-eqz v8, :cond_83

    .line 122
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v13

    .line 123
    .local v13, "token":J
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/app/AppOpsManager;

    .line 126
    .local v15, "appOpsManager":Landroid/app/AppOpsManager;
    :try_start_4b
    const-string v3, "android:read_device_identifiers"

    move-object v2, v15

    move/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_7c

    if-nez v2, :cond_63

    .line 128
    nop

    .line 131
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 128
    return v0

    .line 131
    :cond_63
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 132
    nop

    .line 135
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 136
    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 137
    .local v2, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_83

    invoke-virtual {v2, v8, v10, v11}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 139
    return v0

    .line 131
    .end local v2    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :catchall_7c
    move-exception v0

    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 132
    throw v0

    .line 142
    .end local v13    # "token":J
    .end local v15    # "appOpsManager":Landroid/app/AppOpsManager;
    :cond_83
    const/4 v0, -0x1

    return v0
.end method

.method public checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 148
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p2

    invoke-direct {v9, v10, v13, v11, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    .line 149
    iget-object v0, v9, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_19

    .line 152
    return v14

    .line 156
    :cond_19
    if-nez v10, :cond_1d

    .line 157
    const/4 v0, -0x1

    return v0

    .line 161
    :cond_1d
    const/4 v1, 0x0

    .line 162
    .local v1, "preR":Z
    const/4 v15, -0x1

    .line 164
    .local v15, "result":I
    const/4 v8, 0x1

    :try_start_20
    iget-object v0, v9, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 165
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_28} :catch_32

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_2e

    move v2, v8

    goto :goto_2f

    :cond_2e
    move v2, v14

    :goto_2f
    move v1, v2

    .line 167
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    move v0, v1

    goto :goto_34

    .line 166
    :catch_32
    move-exception v0

    move v0, v1

    .line 168
    .end local v1    # "preR":Z
    .local v0, "preR":Z
    :goto_34
    if-eqz v0, :cond_4d

    .line 175
    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android:read_phone_state"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v15

    .line 178
    if-nez v15, :cond_4d

    .line 179
    return v15

    .line 183
    :cond_4d
    const/4 v3, 0x0

    const-string v4, "android:write_sms"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_63

    .line 185
    return v14

    .line 200
    :cond_63
    const-string v3, "android.permission.READ_PHONE_NUMBERS"

    const-string v4, "android:read_phone_numbers"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v14

    .line 202
    .local v14, "phoneRt":I
    if-eqz v14, :cond_99

    const/4 v8, 0x1

    if-ne v14, v8, :cond_7d

    goto :goto_99

    .line 207
    :cond_7d
    const-string v3, "android.permission.READ_SMS"

    const-string v4, "android:read_sms"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move v9, v8

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 209
    .local v1, "smsRt":I
    if-eqz v1, :cond_98

    if-ne v1, v9, :cond_97

    goto :goto_98

    .line 213
    :cond_97
    return v15

    .line 210
    :cond_98
    :goto_98
    return v1

    .line 204
    .end local v1    # "smsRt":I
    :cond_99
    :goto_99
    return v14
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 290
    .local v0, "callingUid":I
    const-string v1, "grantDefaultPermissionsToActiveLuiApp"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 292
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 294
    return-void
.end method

.method public grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 281
    const-string v0, "grantDefaultPermissionsForCarrierServiceApp"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 285
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 338
    .local v0, "callingUid":I
    const-string v1, "grantPermissionsToEnabledCarrierApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 340
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 342
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 308
    .local v0, "callingUid":I
    const-string v1, "grantDefaultPermissionsToEnabledImsServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 310
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 312
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 318
    .local v0, "callingUid":I
    const-string v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 320
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 322
    return-void
.end method

.method synthetic lambda$grantDefaultPermissionsToActiveLuiApp$1$com-android-server-pm-permission-LegacyPermissionManagerService(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 293
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 292
    return-void
.end method

.method synthetic lambda$grantDefaultPermissionsToCarrierServiceApp$0$com-android-server-pm-permission-LegacyPermissionManagerService(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 284
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method synthetic lambda$grantDefaultPermissionsToEnabledCarrierApps$6$com-android-server-pm-permission-LegacyPermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 341
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 340
    return-void
.end method

.method synthetic lambda$grantDefaultPermissionsToEnabledImsServices$3$com-android-server-pm-permission-LegacyPermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 311
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method synthetic lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$4$com-android-server-pm-permission-LegacyPermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 321
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 320
    return-void
.end method

.method synthetic lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$5$com-android-server-pm-permission-LegacyPermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 331
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 330
    return-void
.end method

.method synthetic lambda$revokeDefaultPermissionsFromLuiApps$2$com-android-server-pm-permission-LegacyPermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 302
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 301
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 328
    .local v0, "callingUid":I
    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 330
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 333
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 299
    .local v0, "callingUid":I
    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 301
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 303
    return-void
.end method
