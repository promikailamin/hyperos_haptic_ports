.class public Lmiui/security/WakePathChecker;
.super Ljava/lang/Object;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathChecker$WakePathRuleData;
    }
.end annotation


# static fields
.field private static final blacklist CALLED_ACTIVE_ACTIVITY_BLACKLIST_INDEX:I = 0x8

.field private static final blacklist CALLED_ACTIVE_BROADCAST_BLACKLIST_INDEX:I = 0x9

.field private static final blacklist CALLED_ACTIVE_PROVIDER_BLACKLIST_INDEX:I = 0xa

.field private static final blacklist CALLED_ACTIVE_SERVICE_BLACKLIST_INDEX:I = 0xb

.field private static final blacklist CALL_LIST_LOG_MAP_MAX_SIZE:I = 0xc8

.field private static final blacklist GET_CONTENT_PROVIDER_RULE_INFOS_LIST_INDEX:I = 0x2

.field private static final blacklist GET_CONTENT_PROVIDER_RULE_INFOS_WHITELIST_INDEX:I = 0x6

.field private static final blacklist RULE_INFOS_LIST_COUNT:I = 0xd

.field private static final blacklist SEND_BROADCAST_RULE_INFOS_LIST_INDEX:I = 0x1

.field private static final blacklist SEND_BROADCAST_RULE_INFOS_WHITELIST_INDEX:I = 0x5

.field private static final blacklist START_ACTIVITY_RULE_INFOS_LIST_INDEX:I = 0x0

.field private static final blacklist START_ACTIVITY_RULE_INFOS_WHITELIST_INDEX:I = 0x4

.field private static final blacklist START_SERVICE_RULE_INFOS_LIST_INDEX:I = 0x3

.field private static final blacklist START_SERVICE_RULE_INFOS_WHITELIST_INDEX:I = 0x7

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_ANALYTIC:I = 0x16

.field public static final blacklist TYPE_ANALYTIC_INDEX:I = 0xc

.field public static final blacklist WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLEE:I = 0x1

.field public static final blacklist WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLER:I = 0x2

.field private static blacklist sInstance:Lmiui/security/WakePathChecker;


# instance fields
.field private final blacklist mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final blacklist mBindServiceCheckActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallListLogLocker:Ljava/lang/Object;

.field private blacklist mCallListLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallback:Lcom/android/internal/app/IWakePathCallback;

.field private final blacklist mLauncherPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageManager:Landroid/content/pm/IPackageManager;

.field private blacklist mSecurityManagerInternal:Lmiui/security/SecurityManagerInternal;

.field private blacklist mTrackCallListLogEnabled:Z

.field private blacklist mUpdatePkgsEnable:Z

.field private final blacklist mUpdatePkgsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserWakePathRuleDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathChecker$WakePathRuleData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWakePathCallerWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWakePathConfirmDialogWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lmiui/security/WakePathChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 6

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    .line 91
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    .line 103
    iget-boolean v3, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v3, :cond_51

    .line 104
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    .line 106
    :cond_51
    const-string v3, "com.mfashiongallery.express"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v3, "com.mi.dlabs.vr.thor"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, "com.miui.home"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "com.miui.securitycenter"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v0, "com.miui.carlink"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v0, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_78

    .line 115
    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_78
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 119
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 120
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 121
    return-void
.end method

.method private blacklist collectTrackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakeType"    # I
    .param p6, "userId"    # I
    .param p7, "calleeAlive"    # Z

    .line 497
    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v0, :cond_7

    .line 498
    invoke-direct/range {p0 .. p5}, Lmiui/security/WakePathChecker;->trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 500
    :cond_7
    invoke-direct/range {p0 .. p7}, Lmiui/security/WakePathChecker;->trackAnalyticListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 501
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/security/WakePathChecker;
    .registers 2

    const-class v0, Lmiui/security/WakePathChecker;

    monitor-enter v0

    .line 124
    :try_start_3
    sget-object v1, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    if-nez v1, :cond_e

    .line 125
    new-instance v1, Lmiui/security/WakePathChecker;

    invoke-direct {v1}, Lmiui/security/WakePathChecker;-><init>()V

    sput-object v1, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    .line 128
    :cond_e
    sget-object v1, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 123
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;
    .registers 6
    .param p1, "userId"    # I

    .line 228
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 229
    :cond_9
    const/4 p1, 0x0

    .line 232
    :cond_a
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v0

    .line 233
    :try_start_d
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 234
    .local v1, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-nez v1, :cond_2a

    .line 235
    new-instance v2, Lmiui/security/WakePathChecker$WakePathRuleData;

    invoke-direct {v2}, Lmiui/security/WakePathChecker$WakePathRuleData;-><init>()V

    move-object v1, v2

    .line 236
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2a
    monitor-exit v0

    .line 239
    return-object v1

    .line 238
    .end local v1    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private blacklist isSystem(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;

    .line 612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 613
    return v1

    .line 615
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 617
    .local v2, "callingIdentity":J
    :try_start_c
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v4, 0x0

    invoke-interface {v0, p1, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 618
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2c

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 619
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_33
    .catchall {:try_start_c .. :try_end_26} :catchall_31

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_2c

    :cond_2a
    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 623
    :goto_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    return v1

    .line 623
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_31
    move-exception v0

    goto :goto_52

    .line 620
    :catch_33
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    :try_start_34
    sget-object v4, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageInfo exception! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_31

    .line 623
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    nop

    .line 625
    return v1

    .line 623
    :goto_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    throw v0
.end method

.method private blacklist listIndexToWakeType(I)I
    .registers 3
    .param p1, "index"    # I

    .line 182
    const/4 v0, -0x1

    .line 183
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_2c

    goto :goto_2a

    .line 221
    :pswitch_5
    const/16 v0, 0x16

    goto :goto_2a

    .line 218
    :pswitch_8
    const v0, 0x8000

    .line 219
    goto :goto_2a

    .line 215
    :pswitch_c
    const/16 v0, 0x4000

    .line 216
    goto :goto_2a

    .line 212
    :pswitch_f
    const/16 v0, 0x2000

    .line 213
    goto :goto_2a

    .line 209
    :pswitch_12
    const/16 v0, 0x1000

    .line 210
    goto :goto_2a

    .line 197
    :pswitch_15
    const/16 v0, 0x100

    .line 198
    goto :goto_2a

    .line 203
    :pswitch_18
    const/16 v0, 0x80

    .line 204
    goto :goto_2a

    .line 206
    :pswitch_1b
    const/16 v0, 0x40

    .line 207
    goto :goto_2a

    .line 200
    :pswitch_1e
    const/16 v0, 0x20

    .line 201
    goto :goto_2a

    .line 185
    :pswitch_21
    const/16 v0, 0x8

    .line 186
    goto :goto_2a

    .line 191
    :pswitch_24
    const/4 v0, 0x4

    .line 192
    goto :goto_2a

    .line 194
    :pswitch_26
    const/4 v0, 0x2

    .line 195
    goto :goto_2a

    .line 188
    :pswitch_28
    const/4 v0, 0x1

    .line 189
    nop

    .line 224
    :goto_2a
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 23
    .param p1, "wakePathRuleData"    # Lmiui/security/WakePathChecker$WakePathRuleData;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "callee"    # Ljava/lang/String;
    .param p6, "wakeType"    # I
    .param p7, "userId"    # I

    .line 530
    move-object v0, p0

    move/from16 v7, p6

    invoke-direct {p0, v7}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v8

    .line 531
    .local v8, "index":I
    const/4 v9, 0x0

    if-ltz v8, :cond_4c

    const/16 v1, 0xd

    if-lt v8, v1, :cond_11

    move-object/from16 v10, p1

    goto :goto_4e

    .line 535
    :cond_11
    move-object/from16 v10, p1

    iget-object v1, v10, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 537
    .local v11, "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    if-eqz v11, :cond_4b

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_25

    goto :goto_4b

    .line 540
    :cond_25
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 541
    .local v12, "size":I
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_2b
    if-ge v13, v12, :cond_4a

    .line 542
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lmiui/security/WakePathRuleInfo;

    .line 543
    .local v14, "info":Lmiui/security/WakePathRuleInfo;
    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lmiui/security/WakePathRuleInfo;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 544
    const/4 v1, 0x1

    return v1

    .line 541
    .end local v14    # "info":Lmiui/security/WakePathRuleInfo;
    :cond_47
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    .line 547
    .end local v13    # "i":I
    :cond_4a
    return v9

    .line 538
    .end local v12    # "size":I
    :cond_4b
    :goto_4b
    return v9

    .line 531
    .end local v11    # "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :cond_4c
    move-object/from16 v10, p1

    .line 532
    :goto_4e
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v2, "MIUILOG-WAKEPATH invalid parameter"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v9
.end method

.method private blacklist shouldBlockServiceAndProvider(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 551
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist skipChainBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 596
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_85

    .line 597
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 598
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 599
    :cond_26
    const-string v0, "com.android.providers.settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "com.android.providers.settings.SettingsProvider"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 600
    :cond_36
    const-string v0, "com.miui.securitycenter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "com.miui.idprovider.IdProvider"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 601
    :cond_46
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "com.xiaomi.push.service.XMPushService"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 602
    :cond_56
    const-string v0, "com.miui.analytics"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 603
    const-string v0, "com.lbe.security.miui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 604
    const-string v0, "com.android.packageinstaller.permission.ui.ReviewPermissionsActivity"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 605
    :cond_76
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_85

    .line 608
    :cond_83
    const/4 v0, 0x0

    return v0

    .line 606
    :cond_85
    :goto_85
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist trackAnalyticListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 25
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakeType"    # I
    .param p6, "userId"    # I
    .param p7, "calleeAlive"    # Z

    .line 555
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-direct {v9, v15}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v16

    .line 556
    .local v16, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    iget-object v0, v9, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    if-eqz v0, :cond_7e

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_7e

    invoke-static/range {p3 .. p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    if-eqz v16, :cond_7e

    const/16 v7, 0x16

    .line 557
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 560
    :try_start_38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 561
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v1, "className"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string v1, "caller"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v1, "callee"

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4f} :catch_65

    .line 565
    const/16 v1, 0x1000

    if-ge v14, v1, :cond_56

    .line 566
    shl-int/lit8 v1, v14, 0xc

    move v14, v1

    .line 568
    .end local p5    # "wakeType":I
    .local v14, "wakeType":I
    :cond_56
    :try_start_56
    const-string v1, "wakeType"

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    iget-object v1, v9, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    const/16 v2, 0x16

    invoke-interface {v1, v2, v0, v12}, Lcom/android/internal/app/IWakePathCallback;->onUpdateCall(ILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_62} :catch_63

    .line 572
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_7e

    .line 570
    :catch_63
    move-exception v0

    goto :goto_66

    .end local v14    # "wakeType":I
    .restart local p5    # "wakeType":I
    :catch_65
    move-exception v0

    .line 571
    .end local p5    # "wakeType":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v14    # "wakeType":I
    :goto_66
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePath error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    invoke-direct {v9, v12, v13, v10, v11}, Lmiui/security/WakePathChecker;->skipChainBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 575
    iget-object v0, v9, Lmiui/security/WakePathChecker;->mSecurityManagerInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_92

    .line 576
    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, v9, Lmiui/security/WakePathChecker;->mSecurityManagerInternal:Lmiui/security/SecurityManagerInternal;

    .line 578
    :cond_92
    iget-object v0, v9, Lmiui/security/WakePathChecker;->mSecurityManagerInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_d2

    .line 580
    const/4 v0, 0x2

    if-eq v14, v0, :cond_a1

    const/16 v1, 0x2000

    if-eq v14, v1, :cond_a1

    const/16 v1, 0x40

    if-ne v14, v1, :cond_aa

    .line 583
    :cond_a1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 584
    move-object/from16 v1, p1

    .local v1, "callData":Ljava/lang/String;
    goto :goto_b3

    .line 586
    .end local v1    # "callData":Ljava/lang/String;
    :cond_aa
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    move-object v1, v11

    goto :goto_b3

    :cond_b2
    move-object v1, v10

    .line 588
    .restart local v1    # "callData":Ljava/lang/String;
    :goto_b3
    iget-object v2, v9, Lmiui/security/WakePathChecker;->mSecurityManagerInternal:Lmiui/security/SecurityManagerInternal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, p7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v12, v13, v3}, Lmiui/security/SecurityManagerInternal;->recordAppChainAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 578
    .end local v1    # "callData":Ljava/lang/String;
    :cond_d2
    move/from16 v4, p7

    goto :goto_d7

    .line 574
    :cond_d5
    move/from16 v4, p7

    .line 593
    :goto_d7
    return-void
.end method

.method private blacklist trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 23
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakeType"    # I

    .line 630
    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v11, v1, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v11

    .line 631
    :try_start_9
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 632
    monitor-exit v11

    return-void

    .line 634
    :cond_11
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 635
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH trackCallListInfo: invalid parameter caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    monitor-exit v11

    return-void

    .line 638
    :cond_3b
    iget-object v0, v1, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v0, :cond_e0

    .line 640
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_49

    .line 641
    monitor-exit v11

    return-void

    .line 645
    :cond_49
    invoke-static/range {p1 .. p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 646
    .local v12, "hashCode":I
    if-nez v12, :cond_a2

    .line 647
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH trackCallListInfo: hashCode == 0,(action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_5d
    .catchall {:try_start_9 .. :try_end_5d} :catchall_e8

    move-object/from16 v13, p1

    :try_start_5f
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_a0

    move-object/from16 v14, p2

    :try_start_6b
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_9e

    move/from16 v15, p5

    :try_start_8b
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    monitor-exit v11

    return-void

    .line 664
    .end local v12    # "hashCode":I
    :catchall_9e
    move-exception v0

    goto :goto_ed

    :catchall_a0
    move-exception v0

    goto :goto_eb

    .line 652
    .restart local v12    # "hashCode":I
    :cond_a2
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    iget-object v0, v1, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathRuleInfo;
    :try_end_b4
    .catchall {:try_start_8b .. :try_end_b4} :catchall_f1

    move-object/from16 v16, v0

    .line 653
    .local v16, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    if-nez v16, :cond_e6

    .line 655
    :try_start_b8
    new-instance v0, Lmiui/security/WakePathRuleInfo;

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lmiui/security/WakePathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c9} :catch_ce
    .catchall {:try_start_b8 .. :try_end_c9} :catchall_f1

    move-object/from16 v16, v0

    .line 658
    move-object/from16 v0, v16

    goto :goto_d4

    .line 656
    :catch_ce
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    :try_start_cf
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, v16

    .line 659
    .end local v16    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .local v0, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    :goto_d4
    if-eqz v0, :cond_e6

    .line 660
    iget-object v2, v1, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e6

    .line 638
    .end local v0    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .end local v12    # "hashCode":I
    :cond_e0
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    .line 664
    :cond_e6
    :goto_e6
    monitor-exit v11

    .line 665
    return-void

    .line 664
    :catchall_e8
    move-exception v0

    move-object/from16 v13, p1

    :goto_eb
    move-object/from16 v14, p2

    :goto_ed
    move/from16 v15, p5

    :goto_ef
    monitor-exit v11
    :try_end_f0
    .catchall {:try_start_cf .. :try_end_f0} :catchall_f1

    throw v0

    :catchall_f1
    move-exception v0

    goto :goto_ef
.end method

.method private blacklist updateLauncherPackageNames(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 727
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 729
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 730
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v6, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateLauncherPackageNames ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4d} :catch_50

    .line 732
    nop

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_1e

    .line 735
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4f
    goto :goto_58

    .line 733
    :catch_50
    move-exception v2

    .line 734
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v4, "updateLauncherPackageNames"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_58
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v2

    .line 738
    :try_start_5b
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 739
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6b

    .line 740
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 742
    :cond_6b
    monitor-exit v2

    .line 743
    return-void

    .line 742
    :catchall_6d
    move-exception v3

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_6d

    throw v3
.end method

.method private blacklist wakeTypeToRuleInfosListIndex(I)I
    .registers 3
    .param p1, "wakeType"    # I

    .line 136
    const/4 v0, -0x1

    .line 137
    .local v0, "ret":I
    sparse-switch p1, :sswitch_data_26

    goto :goto_24

    .line 172
    :sswitch_5
    const/16 v0, 0xb

    .line 173
    goto :goto_24

    .line 169
    :sswitch_8
    const/16 v0, 0xa

    .line 170
    goto :goto_24

    .line 166
    :sswitch_b
    const/16 v0, 0x9

    .line 167
    goto :goto_24

    .line 163
    :sswitch_e
    const/16 v0, 0x8

    .line 164
    goto :goto_24

    .line 151
    :sswitch_11
    const/4 v0, 0x7

    .line 152
    goto :goto_24

    .line 157
    :sswitch_13
    const/4 v0, 0x6

    .line 158
    goto :goto_24

    .line 160
    :sswitch_15
    const/4 v0, 0x5

    .line 161
    goto :goto_24

    .line 154
    :sswitch_17
    const/4 v0, 0x4

    .line 155
    goto :goto_24

    .line 175
    :sswitch_19
    const/16 v0, 0xc

    goto :goto_24

    .line 139
    :sswitch_1c
    const/4 v0, 0x3

    .line 140
    goto :goto_24

    .line 145
    :sswitch_1e
    const/4 v0, 0x2

    .line 146
    goto :goto_24

    .line 148
    :sswitch_20
    const/4 v0, 0x1

    .line 149
    goto :goto_24

    .line 142
    :sswitch_22
    const/4 v0, 0x0

    .line 143
    nop

    .line 178
    :goto_24
    return v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_20
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_1c
        0x16 -> :sswitch_19
        0x20 -> :sswitch_17
        0x40 -> :sswitch_15
        0x80 -> :sswitch_13
        0x100 -> :sswitch_11
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public blacklist calleeAliveMatchBlackRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Z
    .registers 22
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "calleePkg"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "wakeType"    # I
    .param p7, "record"    # Z

    .line 511
    move/from16 v10, p6

    if-eqz p7, :cond_14

    .line 512
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lmiui/security/WakePathChecker;->collectTrackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 514
    :cond_14
    move-object v11, p0

    move/from16 v12, p5

    invoke-direct {p0, v12}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lmiui/security/WakePathChecker;->matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v13

    .line 516
    .local v13, "matchWakePathRuleInfos":Z
    if-eqz p7, :cond_55

    if-eqz v13, :cond_55

    const/16 v0, 0x1000

    if-eq v10, v0, :cond_40

    const v0, 0x8000

    if-eq v10, v0, :cond_40

    const/16 v0, 0x2000

    if-eq v10, v0, :cond_40

    const/16 v0, 0x4000

    if-ne v10, v0, :cond_55

    .line 520
    :cond_40
    const/4 v1, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v6, p5

    move-object v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v9}, Lmiui/security/WakePathChecker;->recordWakePathCall(ZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 523
    :cond_55
    return v13
.end method

.method public blacklist checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 16
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "calleeUid"    # I

    .line 672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_93

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_93

    .line 676
    :cond_f
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v0

    .line 677
    :try_start_12
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 678
    monitor-exit v0

    return v1

    .line 680
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_90

    .line 682
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v2

    .line 683
    :try_start_20
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 684
    monitor-exit v2

    return v1

    .line 686
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_8d

    .line 688
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v0

    .line 689
    :try_start_2e
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 690
    monitor-exit v0

    return v1

    .line 692
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_8a

    .line 694
    invoke-direct {p0, p4}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v2

    .line 695
    .local v2, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v2

    .line 697
    :try_start_3e
    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 698
    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 699
    const/4 v6, 0x1

    .line 700
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v9, 0x1

    .line 699
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 701
    monitor-exit v2

    return v1

    .line 705
    :cond_61
    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz v0, :cond_84

    .line 706
    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 707
    .local v0, "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_84

    .line 708
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 709
    const/4 v7, 0x1

    .line 710
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/4 v10, 0x1

    .line 709
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 711
    monitor-exit v2

    return v1

    .line 715
    .end local v0    # "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_84
    monitor-exit v2

    .line 716
    const/4 v0, 0x0

    return v0

    .line 715
    :catchall_87
    move-exception v0

    monitor-exit v2
    :try_end_89
    .catchall {:try_start_3e .. :try_end_89} :catchall_87

    throw v0

    .line 692
    .end local v2    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v1

    .line 686
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0

    .line 680
    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1

    .line 673
    :cond_93
    :goto_93
    return v1
.end method

.method public blacklist checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "info"    # Landroid/content/pm/ResolveInfo;
    .param p5, "userId"    # I

    .line 350
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x1

    if-eqz p1, :cond_90

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_90

    .line 354
    :cond_f
    const-string v3, ""

    .line 355
    .local v3, "callee":Ljava/lang/String;
    const-string v4, ""

    .line 356
    .local v4, "action":Ljava/lang/String;
    const-string v5, ""

    .line 357
    .local v5, "className":Ljava/lang/String;
    const/4 v6, -0x1

    .line 358
    .local v6, "callerUid":I
    const/4 v7, -0x1

    .line 359
    .local v7, "calleeUid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 365
    :cond_31
    if-eqz v1, :cond_4d

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_4d

    .line 366
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_49

    .line 367
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 368
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 370
    :cond_49
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 373
    :cond_4d
    if-eqz v0, :cond_51

    .line 374
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 377
    :cond_51
    move-object/from16 v15, p2

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 378
    return v2

    .line 381
    :cond_5a
    const/16 v16, 0x2

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v11, p2

    move-object v12, v3

    move v13, v6

    move v14, v7

    move/from16 v15, v16

    move/from16 v16, p5

    invoke-virtual/range {v8 .. v16}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v8

    xor-int/2addr v2, v8

    .line 383
    .local v2, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_7e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8f

    .line 384
    :cond_7e
    const/16 v11, 0x12

    .line 385
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 384
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object v10, v3

    move/from16 v13, p5

    move v14, v2

    invoke-virtual/range {v8 .. v14}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 387
    :cond_8f
    return v2

    .line 351
    .end local v2    # "result":Z
    .end local v3    # "callee":Ljava/lang/String;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "callerUid":I
    .end local v7    # "calleeUid":I
    :cond_90
    :goto_90
    return v2
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 806
    if-nez p1, :cond_3

    .line 807
    return-void

    .line 810
    :cond_3
    const-string v0, "========================================WAKEPATH DUMP BEGIN========================================"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    :try_start_8
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_f9

    .line 813
    :try_start_b
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_f4

    .line 814
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 815
    .local v2, "userId":I
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 816
    .local v3, "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    const-string v4, "----------------------------------------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    if-nez v3, :cond_41

    .line 818
    goto :goto_1d

    .line 820
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    iget-object v4, v3, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v4, :cond_74

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whitelist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    .line 824
    :cond_74
    const-string v4, "whitelist is null."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    :goto_79
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7a
    const/16 v5, 0xd

    if-ge v4, v5, :cond_f2

    .line 828
    iget-object v5, v3, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 829
    .local v5, "ruleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    if-eqz v5, :cond_cf

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_8f

    goto :goto_cf

    .line 832
    :cond_8f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rule info type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lmiui/security/WakePathChecker;->listIndexToWakeType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 833
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 832
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ef

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/security/WakePathRuleInfo;

    .line 835
    .local v7, "rule":Lmiui/security/WakePathRuleInfo;
    invoke-virtual {v7}, Lmiui/security/WakePathRuleInfo;->getSHA256Rule()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    .end local v7    # "rule":Lmiui/security/WakePathRuleInfo;
    goto :goto_bb

    .line 830
    :cond_cf
    :goto_cf
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rule info type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lmiui/security/WakePathChecker;->listIndexToWakeType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    .end local v5    # "ruleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :cond_ef
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 839
    .end local v2    # "userId":I
    .end local v3    # "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .end local v4    # "i":I
    :cond_f2
    goto/16 :goto_1d

    .line 841
    :cond_f4
    monitor-exit v0

    .line 844
    goto :goto_101

    .line 841
    :catchall_f6
    move-exception v1

    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_b .. :try_end_f8} :catchall_f6

    .end local p0    # "this":Lmiui/security/WakePathChecker;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_f8
    throw v1
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_f9} :catch_f9

    .line 842
    .restart local p0    # "this":Lmiui/security/WakePathChecker;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_f9
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v2, "dump"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_101
    const-string v0, "========================================WAKEPATH DUMP END========================================"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public blacklist getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .registers 5

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v1, :cond_22

    .line 331
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_8
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_1d

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 334
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 336
    :cond_1d
    monitor-exit v1

    goto :goto_22

    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v2

    .line 338
    :cond_22
    :goto_22
    if-nez v0, :cond_26

    .line 339
    const/4 v1, 0x0

    return-object v1

    .line 341
    :cond_26
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method synthetic blacklist lambda$onPackageAdded$0$miui-security-WakePathChecker(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 746
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method public blacklist matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 17
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "calleeUid"    # I
    .param p6, "wakeType"    # I
    .param p7, "userId"    # I

    .line 391
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    return v0
.end method

.method public blacklist matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z
    .registers 30
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "callerUid"    # I
    .param p6, "calleeUid"    # I
    .param p7, "wakeType"    # I
    .param p8, "userId"    # I

    .line 400
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v10, p6

    move/from16 v9, p7

    move/from16 v8, p8

    invoke-static {v15, v9}, Lmiui/security/AppRunningControlManager;->matchRule(Ljava/lang/String;I)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_62

    .line 401
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppRunningControl, Reject userId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callee= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wakeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v7

    .line 407
    :cond_62
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move v13, v8

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lmiui/security/WakePathChecker;->collectTrackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 409
    invoke-direct {v11, v13}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v8

    .line 410
    .local v8, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v8

    .line 412
    :try_start_7b
    iget-object v0, v11, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v17, 0x0

    if-nez v0, :cond_350

    iget-object v0, v8, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_36d

    if-eqz v0, :cond_ab

    :try_start_89
    iget-object v0, v8, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    .line 414
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ab

    iget-object v0, v8, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    .line 415
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_97
    .catchall {:try_start_89 .. :try_end_97} :catchall_a2

    if-eqz v0, :cond_ab

    move-object/from16 v16, v8

    move v8, v9

    move v11, v13

    const/4 v1, 0x1

    move-object/from16 v13, p2

    goto/16 :goto_357

    .line 491
    :catchall_a2
    move-exception v0

    move-object/from16 v16, v8

    move v8, v9

    move v11, v13

    move-object/from16 v13, p2

    goto/16 :goto_374

    .line 422
    :cond_ab
    const/16 v7, 0x2718

    const/16 v6, 0x8

    if-ne v9, v6, :cond_181

    if-lez v10, :cond_181

    if-eqz v15, :cond_181

    :try_start_b5
    iget-object v0, v11, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    .line 424
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 425
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_16b

    iget-object v0, v11, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_16b

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_cb
    .catchall {:try_start_b5 .. :try_end_cb} :catchall_177

    move-wide/from16 v18, v0

    .line 429
    .local v18, "callingIdentity":J
    :try_start_cd
    iget-object v0, v11, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v7, v10, v15}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 430
    .local v0, "mode":I
    if-eqz v0, :cond_144

    .line 431
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d9} :catch_152
    .catchall {:try_start_cd .. :try_end_d9} :catchall_14d

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move v11, v6

    move/from16 v6, p8

    move/from16 v7, v20

    :try_start_e8
    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 432
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-AutoStart, BindService Reject userId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callee= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " classname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_116} :catch_142
    .catchall {:try_start_e8 .. :try_end_116} :catchall_14d

    move v7, v13

    move-object/from16 v13, p2

    :try_start_119
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_138} :catch_13f
    .catchall {:try_start_119 .. :try_end_138} :catchall_163

    .line 435
    nop

    .line 440
    :try_start_139
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8

    .line 435
    const/4 v6, 0x1

    return v6

    .line 437
    .end local v0    # "mode":I
    :catch_13f
    move-exception v0

    const/4 v6, 0x1

    goto :goto_158

    :catch_142
    move-exception v0

    goto :goto_154

    .line 430
    .restart local v0    # "mode":I
    :cond_144
    move v11, v6

    move v7, v13

    const/4 v6, 0x1

    move-object/from16 v13, p2

    .line 440
    .end local v0    # "mode":I
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14c
    .catchall {:try_start_139 .. :try_end_14c} :catchall_169

    .line 441
    :goto_14c
    goto :goto_186

    .line 440
    :catchall_14d
    move-exception v0

    move v7, v13

    move-object/from16 v13, p2

    goto :goto_164

    .line 437
    :catch_152
    move-exception v0

    move v11, v6

    :goto_154
    move v7, v13

    const/4 v6, 0x1

    move-object/from16 v13, p2

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    :goto_158
    :try_start_158
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15f
    .catchall {:try_start_158 .. :try_end_15f} :catchall_163

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_15f
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14c

    :catchall_163
    move-exception v0

    :goto_164
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    nop

    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .end local p0    # "this":Lmiui/security/WakePathChecker;
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "caller":Ljava/lang/String;
    .end local p4    # "callee":Ljava/lang/String;
    .end local p5    # "callerUid":I
    .end local p6    # "calleeUid":I
    .end local p7    # "wakeType":I
    .end local p8    # "userId":I
    throw v0
    :try_end_169
    .catchall {:try_start_15f .. :try_end_169} :catchall_169

    .line 491
    .end local v18    # "callingIdentity":J
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local p0    # "this":Lmiui/security/WakePathChecker;
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "caller":Ljava/lang/String;
    .restart local p4    # "callee":Ljava/lang/String;
    .restart local p5    # "callerUid":I
    .restart local p6    # "calleeUid":I
    .restart local p7    # "wakeType":I
    .restart local p8    # "userId":I
    :catchall_169
    move-exception v0

    goto :goto_17b

    .line 425
    :cond_16b
    move v11, v6

    move v7, v13

    const/4 v6, 0x1

    move-object/from16 v13, p2

    goto :goto_186

    .line 424
    :cond_171
    move v11, v6

    move v7, v13

    const/4 v6, 0x1

    move-object/from16 v13, p2

    goto :goto_186

    .line 491
    :catchall_177
    move-exception v0

    move v7, v13

    move-object/from16 v13, p2

    :goto_17b
    move v11, v7

    move-object/from16 v16, v8

    move v8, v9

    goto/16 :goto_374

    .line 422
    :cond_181
    move v11, v6

    move v7, v13

    const/4 v6, 0x1

    move-object/from16 v13, p2

    .line 444
    :goto_186
    :try_start_186
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_188
    .catchall {:try_start_186 .. :try_end_188} :catchall_34a

    if-nez v0, :cond_28e

    if-eq v9, v11, :cond_19a

    const/4 v0, 0x4

    if-eq v9, v0, :cond_19a

    const/4 v0, 0x2

    if-ne v9, v0, :cond_193

    goto :goto_19a

    :cond_193
    move-object/from16 v11, p0

    move v10, v7

    move-object/from16 v16, v8

    goto/16 :goto_293

    :cond_19a
    :goto_19a
    if-lez v10, :cond_28e

    if-eqz v15, :cond_28e

    .line 448
    :try_start_19e
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0
    :try_end_1a2
    .catchall {:try_start_19e .. :try_end_1a2} :catchall_286

    if-nez v0, :cond_280

    move-object/from16 v11, p0

    :try_start_1a6
    iget-object v0, v11, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_282

    iget-object v0, v11, Lmiui/security/WakePathChecker;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_282

    .line 451
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1b2
    .catchall {:try_start_1a6 .. :try_end_1b2} :catchall_27e

    move-wide/from16 v18, v0

    .line 453
    .restart local v18    # "callingIdentity":J
    :try_start_1b4
    invoke-direct {v11, v14, v15, v7}, Lmiui/security/WakePathChecker;->shouldBlockServiceAndProvider(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_260

    .line 454
    iget-object v0, v11, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x2718

    invoke-interface {v0, v1, v10, v15}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c2} :catch_26c
    .catchall {:try_start_1b4 .. :try_end_1c2} :catchall_267

    .line 455
    .local v0, "mode":I
    if-eqz v0, :cond_25c

    .line 457
    shl-int/lit8 v16, v9, 0x5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v10, v6

    move-object/from16 v6, p4

    move v10, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .local v16, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    move/from16 v8, p8

    :try_start_1d9
    invoke-direct/range {v1 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1f7

    .line 459
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1f1} :catch_25a
    .catchall {:try_start_1d9 .. :try_end_1f1} :catchall_278

    .line 460
    nop

    .line 472
    :try_start_1f2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_1f6
    .catchall {:try_start_1f2 .. :try_end_1f6} :catchall_346

    .line 460
    return v17

    .line 462
    :cond_1f7
    :try_start_1f7
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 463
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-AutoStart, Service/Provider/Broadcast Reject userId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callee= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " classname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_253} :catch_25a
    .catchall {:try_start_1f7 .. :try_end_253} :catchall_278

    .line 466
    nop

    .line 472
    :try_start_254
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16

    .line 466
    const/4 v1, 0x1

    return v1

    .line 469
    .end local v0    # "mode":I
    :catch_25a
    move-exception v0

    goto :goto_270

    .line 455
    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v0    # "mode":I
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_25c
    move v10, v7

    move-object/from16 v16, v8

    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    goto :goto_263

    .line 453
    .end local v0    # "mode":I
    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_260
    move v10, v7

    move-object/from16 v16, v8

    .line 472
    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :goto_263
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_266
    .catchall {:try_start_254 .. :try_end_266} :catchall_346

    .line 473
    goto :goto_293

    .line 472
    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_267
    move-exception v0

    move v10, v7

    move-object/from16 v16, v8

    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    goto :goto_279

    .line 469
    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catch_26c
    move-exception v0

    move v10, v7

    move-object/from16 v16, v8

    .line 470
    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :goto_270
    :try_start_270
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_277
    .catchall {:try_start_270 .. :try_end_277} :catchall_278

    goto :goto_263

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_278
    move-exception v0

    :goto_279
    :try_start_279
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    nop

    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .end local p0    # "this":Lmiui/security/WakePathChecker;
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "caller":Ljava/lang/String;
    .end local p4    # "callee":Ljava/lang/String;
    .end local p5    # "callerUid":I
    .end local p6    # "calleeUid":I
    .end local p7    # "wakeType":I
    .end local p8    # "userId":I
    throw v0

    .line 491
    .end local v18    # "callingIdentity":J
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local p0    # "this":Lmiui/security/WakePathChecker;
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "caller":Ljava/lang/String;
    .restart local p4    # "callee":Ljava/lang/String;
    .restart local p5    # "callerUid":I
    .restart local p6    # "calleeUid":I
    .restart local p7    # "wakeType":I
    .restart local p8    # "userId":I
    :catchall_27e
    move-exception v0

    goto :goto_289

    .line 448
    :cond_280
    move-object/from16 v11, p0

    :cond_282
    move v10, v7

    move-object/from16 v16, v8

    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    goto :goto_293

    .line 491
    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_286
    move-exception v0

    move-object/from16 v11, p0

    :goto_289
    move-object/from16 v16, v8

    move v11, v7

    goto/16 :goto_34e

    .line 444
    :cond_28e
    move-object/from16 v11, p0

    move v10, v7

    move-object/from16 v16, v8

    .line 477
    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :goto_293
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2d7

    shl-int/lit8 v7, v9, 0xc

    const/4 v8, 0x0

    .line 478
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v8}, Lmiui/security/WakePathChecker;->calleeAliveMatchBlackRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2c0

    const/4 v8, 0x1

    goto :goto_2d8

    .line 487
    :cond_2c0
    const/4 v8, 0x1

    if-eq v9, v8, :cond_2d5

    .line 488
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 491
    :cond_2d5
    monitor-exit v16

    .line 492
    return v17

    .line 477
    :cond_2d7
    const/4 v8, 0x1

    .line 480
    :goto_2d8
    const/4 v2, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6
    :try_end_2dd
    .catchall {:try_start_279 .. :try_end_2dd} :catchall_346

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v7, p8

    move/from16 v17, v8

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move v11, v10

    move v10, v0

    :try_start_2f0
    invoke-virtual/range {v1 .. v10}, Lmiui/security/WakePathChecker;->recordWakePathCall(ZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 482
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH: call was rejected by wakepath. userId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callee= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wakeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_332
    .catchall {:try_start_2f0 .. :try_end_332} :catchall_342

    move/from16 v8, p7

    :try_start_334
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    monitor-exit v16

    const/4 v1, 0x1

    return v1

    .line 491
    :catchall_342
    move-exception v0

    move/from16 v8, p7

    goto :goto_374

    :catchall_346
    move-exception v0

    move v8, v9

    move v11, v10

    goto :goto_374

    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_34a
    move-exception v0

    move v11, v7

    move-object/from16 v16, v8

    :goto_34e
    move v8, v9

    goto :goto_374

    .line 412
    :cond_350
    move-object/from16 v16, v8

    move v8, v9

    move v11, v13

    const/4 v1, 0x1

    move-object/from16 v13, p2

    .line 416
    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :goto_357
    if-eq v8, v1, :cond_36b

    .line 417
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 419
    :cond_36b
    monitor-exit v16

    return v17

    .line 491
    .end local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_36d
    move-exception v0

    move-object/from16 v16, v8

    move v8, v9

    move v11, v13

    move-object/from16 v13, p2

    .end local v8    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v16    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :goto_374
    monitor-exit v16
    :try_end_375
    .catchall {:try_start_334 .. :try_end_375} :catchall_376

    throw v0

    :catchall_376
    move-exception v0

    goto :goto_374
.end method

.method public blacklist onPackageAdded(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 746
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/security/WakePathChecker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lmiui/security/WakePathChecker$$ExternalSyntheticLambda0;-><init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method

.method public blacklist pushUpdatePkgsData(Ljava/util/List;Z)V
    .registers 5
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 768
    .local p1, "updatePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-boolean p2, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    .line 769
    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1d

    .line 772
    :cond_b
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v0

    .line 773
    :try_start_e
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 774
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 775
    monitor-exit v0

    .line 776
    return-void

    .line 775
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v1

    .line 770
    :cond_1d
    :goto_1d
    return-void
.end method

.method public blacklist pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .registers 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    .line 285
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 286
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v0

    .line 287
    :try_start_f
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 288
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    monitor-exit v0

    goto :goto_33

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v1

    .line 290
    :cond_1e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_33

    .line 291
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v0

    .line 292
    :try_start_24
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 293
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    throw v1

    .line 296
    :cond_33
    :goto_33
    return-void

    .line 283
    :cond_34
    :goto_34
    return-void
.end method

.method public blacklist pushWakePathRuleInfos(ILjava/util/List;I)V
    .registers 10
    .param p1, "wakeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;I)V"
        }
    .end annotation

    .line 243
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH pushWakePathRuleInfos: wakeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    if-nez p2, :cond_25

    const/4 v2, 0x0

    goto :goto_29

    :cond_25
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    .line 246
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v0

    .line 247
    const/16 v1, 0x11

    if-ne p1, v1, :cond_7b

    .line 248
    :try_start_3d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    .line 251
    if-eqz p2, :cond_8a

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7a

    .line 253
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathRuleInfo;

    .line 254
    .local v2, "info":Lmiui/security/WakePathRuleInfo;
    iget-object v3, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 255
    .local v3, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_70

    .line 256
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 257
    iget-object v4, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_70
    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCallerExpress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .end local v1    # "i":I
    .end local v2    # "info":Lmiui/security/WakePathRuleInfo;
    .end local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7a
    goto :goto_8a

    .line 263
    :cond_7b
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v1

    .line 264
    .local v1, "index":I
    if-ltz v1, :cond_8a

    const/16 v2, 0xd

    if-ge v1, v2, :cond_8a

    .line 265
    iget-object v2, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v1    # "index":I
    :cond_8a
    :goto_8a
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3d .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public blacklist pushWakePathWhiteList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 272
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH pushWakePathWhiteList: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    if-nez p1, :cond_1b

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    .line 276
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v0

    .line 277
    :try_start_2f
    iput-object p1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 17
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "wakeType"    # I
    .param p4, "callerUserId"    # I
    .param p5, "calleeUserId"    # I
    .param p6, "isAllowed"    # Z

    .line 801
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lmiui/security/WakePathChecker;->recordWakePathCall(ZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 803
    return-void
.end method

.method public blacklist recordWakePathCall(ZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .registers 22
    .param p1, "isRejectByWakePath"    # Z
    .param p2, "callerPkgName"    # Ljava/lang/String;
    .param p3, "calleePkgName"    # Ljava/lang/String;
    .param p4, "wakeType"    # I
    .param p5, "callerUserId"    # I
    .param p6, "calleeUserId"    # I
    .param p7, "action"    # Ljava/lang/String;
    .param p8, "className"    # Ljava/lang/String;
    .param p9, "isAllowed"    # Z

    .line 781
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "android"

    move-object v10, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v11, p0

    goto :goto_57

    .line 784
    :cond_11
    move-object v11, p0

    iget-object v1, v11, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    if-eqz v1, :cond_54

    .line 786
    if-eqz p9, :cond_26

    .line 787
    move-object v2, p2

    move/from16 v3, p5

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    :try_start_20
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IWakePathCallback;->onAllowCallNew(Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_3b

    .line 793
    :catch_24
    move-exception v0

    goto :goto_3c

    .line 790
    :cond_26
    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    move v2, v0

    move-object v3, p2

    move/from16 v4, p5

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/app/IWakePathCallback;->onRejectCallNew(ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3b} :catch_24

    .line 795
    :goto_3b
    goto :goto_54

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3c
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordWakePathCall error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    return-void

    .line 781
    :cond_55
    move-object v11, p0

    move-object v10, p2

    .line 782
    :goto_57
    return-void
.end method

.method public blacklist registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .line 668
    iput-object p1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    .line 669
    return-void
.end method

.method public blacklist removeWakePathData(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 299
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH removeWakePathData: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz p1, :cond_3c

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_3c

    .line 305
    :cond_21
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v0

    .line 306
    :try_start_24
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 307
    .local v1, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-eqz v1, :cond_37

    .line 308
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v1    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_37
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_39

    throw v1

    .line 302
    :cond_3c
    :goto_3c
    return-void
.end method

.method public blacklist setTrackWakePathCallListLogEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 315
    if-eqz p1, :cond_3

    .line 316
    return-void

    .line 319
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 320
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_9
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v1, :cond_13

    .line 322
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    .line 325
    :cond_13
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist updatePath(Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ComponentInfo;
    .param p3, "wakeType"    # I
    .param p4, "userId"    # I

    .line 750
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4a

    if-nez p4, :cond_4a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    goto :goto_4a

    .line 754
    :cond_a
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    if-eqz v0, :cond_49

    .line 755
    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    if-nez v0, :cond_13

    return-void

    .line 756
    :cond_13
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v0

    .line 757
    :try_start_16
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    iget-object v2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    monitor-exit v0

    return-void

    .line 758
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_46

    .line 760
    :try_start_23
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    const/4 v1, 0x0

    iget-object v2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/app/IWakePathCallback;->onUpdateCall(ILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    .line 763
    goto :goto_49

    .line 761
    :catch_2c
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePath error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1

    .line 765
    :cond_49
    :goto_49
    return-void

    .line 751
    :cond_4a
    :goto_4a
    return-void
.end method
