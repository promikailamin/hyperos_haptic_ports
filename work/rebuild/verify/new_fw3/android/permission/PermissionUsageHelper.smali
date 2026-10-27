.class public Landroid/permission/PermissionUsageHelper;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionUsageHelper$AccessChainLink;,
        Landroid/permission/PermissionUsageHelper$OpUsage;
    }
.end annotation


# static fields
.field private static final blacklist ADDITIONAL_RUNNING_TIME_LOCATION_ONLY_MS:J = 0x1388L

.field private static final blacklist CAMERA_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_RECENT_TIME_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_RUNNING_TIME_MS:J = 0x1388L

.field private static final blacklist LOCATION_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist MIC_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PROPERTY_CAMERA_MIC_ICONS_ENABLED:Ljava/lang/String; = "camera_mic_icons_enabled"

.field private static final blacklist RECENT_ACCESS_TIME_MS:Ljava/lang/String; = "recent_access_time_ms"

.field private static final blacklist RUNNING_ACCESS_TIME_MS:Ljava/lang/String; = "running_access_time_ms"

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"


# instance fields
.field private blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mAttributionChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionUsageHelper$AccessChainLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPkgManager:Landroid/content/pm/PackageManager;

.field private blacklist mUserContexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 85
    const-class v0, Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    .line 127
    const-string v0, "android:fine_location"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    .line 131
    const-string v0, "android:receive_ambient_trigger_audio"

    const-string v1, "android:record_audio"

    const-string v2, "android:phone_call_microphone"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    .line 137
    const-string v0, "android:phone_call_camera"

    const-string v1, "android:camera"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 175
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 177
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 178
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 179
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    .line 180
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "android:camera"

    const-string v1, "android:record_audio"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 184
    const/16 p1, 0x1a

    const/16 v0, 0x1b

    filled-new-array {p1, v0}, [I

    move-result-object p1

    .line 185
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 186
    return-void
.end method

.method private blacklist addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .registers 9

    .line 264
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 265
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    new-instance v1, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 264
    invoke-virtual {v0, p6, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/ArrayList;

    .line 266
    new-instance v0, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object p0, p4

    move p4, p3

    move-object p3, p0

    move-object p0, v0

    invoke-direct/range {p0 .. p5}, Landroid/permission/PermissionUsageHelper$AccessChainLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 269
    move-object p1, p0

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 270
    return-void

    .line 273
    :cond_22
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 274
    if-eqz p2, :cond_5e

    invoke-virtual {p1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p3

    if-nez p3, :cond_5e

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {p3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p3

    if-nez p3, :cond_3d

    goto :goto_5e

    .line 278
    :cond_3d
    invoke-virtual {p1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result p3

    if-eqz p3, :cond_48

    .line 279
    const/4 p2, 0x0

    invoke-virtual {p6, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_61

    .line 280
    :cond_48
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {p3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p3

    if-eqz p3, :cond_61

    .line 282
    invoke-virtual {p6, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_61

    .line 277
    :cond_5e
    :goto_5e
    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_61
    :goto_61
    return-void
.end method

.method private blacklist formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 664
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist getGroupForOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "android:camera"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_12
    const-string v0, "android:phone_call_camera"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_1c
    const-string v0, "android:record_audio"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_26
    const-string v0, "android:receive_ambient_trigger_audio"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_30
    const-string v0, "android:phone_call_microphone"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_3a
    const-string v0, "android:fine_location"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :sswitch_44
    const-string v0, "android:coarse_location"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_94

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown app op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_6b
    const-string p0, "android.permission-group.LOCATION"

    return-object p0

    .line 151
    :pswitch_6e
    return-object p0

    .line 148
    :pswitch_6f
    const-string p0, "android.permission-group.CAMERA"

    return-object p0

    .line 146
    :pswitch_72
    const-string p0, "android.permission-group.MICROPHONE"

    return-object p0

    nop

    :sswitch_data_76
    .sparse-switch
        -0x639fe5c6 -> :sswitch_44
        -0xc86dd31 -> :sswitch_3a
        0x8da560f -> :sswitch_30
        0x268c0901 -> :sswitch_26
        0x47019993 -> :sswitch_1c
        0x52e1ba8a -> :sswitch_12
        0x5b14ae90 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_72
        :pswitch_72
        :pswitch_6f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method private blacklist getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;>;"
        }
    .end annotation

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 552
    iget-object v3, v0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_45

    .line 554
    :cond_1f
    const-string v3, "default:0"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 556
    sget-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "device_aware_permission_apis_enabled flag not enabled when deviceId is not default"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 561
    :cond_33
    iget-object v2, v0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_45} :catch_22b

    .line 566
    :goto_45
    nop

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 569
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Landroid/permission/PermissionUsageHelper;->getRecentThreshold(Ljava/lang/Long;)J

    move-result-wide v4

    .line 570
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Landroid/permission/PermissionUsageHelper;->getRunningThreshold(Ljava/lang/Long;)J

    move-result-wide v6

    .line 571
    nop

    .line 572
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 574
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 575
    const/4 v11, 0x0

    :goto_65
    if-ge v11, v9, :cond_1fa

    .line 576
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    .line 577
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    .line 578
    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 579
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 581
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v10

    .line 582
    move-object/from16 p2, v1

    const/4 v1, 0x0

    :goto_84
    if-ge v1, v10, :cond_1f0

    .line 583
    move-wide/from16 v22, v2

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    .line 584
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOpStr()Ljava/lang/String;

    move-result-object v16

    .line 585
    new-instance v3, Ljava/util/ArrayList;

    .line 586
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v17

    move/from16 v33, v1

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 589
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 590
    move-object/from16 v34, v2

    const/4 v2, 0x0

    :goto_b0
    if-ge v2, v1, :cond_1e1

    .line 591
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v35, v1

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    .line 592
    nop

    .line 593
    move/from16 v36, v2

    invoke-virtual/range {v34 .. v34}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 595
    move-object/from16 v17, v1

    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    .line 596
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_da

    .line 597
    move-wide/from16 v29, v22

    goto :goto_dc

    .line 596
    :cond_da
    move-wide/from16 v29, v18

    .line 600
    :goto_dc
    cmp-long v18, v29, v4

    if-gez v18, :cond_f0

    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v18

    if-nez v18, :cond_f0

    .line 601
    move-object/from16 v37, v3

    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    goto/16 :goto_1d3

    .line 604
    :cond_f0
    invoke-static/range {v16 .. v16}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->locationIndicatorsEnabled()Z

    move-result v19

    const/16 v20, 0x1

    if-eqz v19, :cond_109

    .line 607
    move-object/from16 v37, v3

    const-string v3, "android.permission-group.LOCATION"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    move/from16 v3, v20

    goto :goto_10c

    .line 606
    :cond_109
    move-object/from16 v37, v3

    .line 607
    :cond_10b
    const/4 v3, 0x0

    .line 608
    :goto_10c
    nop

    .line 610
    if-eqz v3, :cond_112

    const-wide/16 v24, 0x1388

    goto :goto_114

    :cond_112
    const-wide/16 v24, 0x0

    :goto_114
    sub-long v24, v6, v24

    .line 611
    nop

    .line 612
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v19

    if-nez v19, :cond_125

    cmp-long v19, v29, v24

    if-ltz v19, :cond_122

    goto :goto_125

    :cond_122
    const/16 v31, 0x0

    goto :goto_127

    :cond_125
    :goto_125
    move/from16 v31, v20

    .line 614
    :goto_127
    nop

    .line 615
    move/from16 v19, v3

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v2

    .line 616
    if-eqz v2, :cond_152

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_152

    .line 617
    new-instance v24, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v26

    .line 618
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v28

    const/16 v32, 0x0

    move-object/from16 v27, v16

    invoke-direct/range {v24 .. v32}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    move-object/from16 v2, v27

    move-object/from16 v21, v24

    goto :goto_158

    .line 616
    :cond_152
    move-object/from16 v2, v16

    .line 621
    const/16 v24, 0x0

    move-object/from16 v21, v24

    :goto_158
    if-eqz v19, :cond_17b

    .line 626
    invoke-direct {v0, v2, v15, v14, v13}, Landroid/permission/PermissionUsageHelper;->isSystemApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v3

    if-nez v3, :cond_172

    .line 627
    invoke-direct {v0, v13}, Landroid/permission/PermissionUsageHelper;->isBackgroundApp(I)Z

    move-result v3

    if-eqz v3, :cond_17b

    if-nez v31, :cond_17b

    .line 629
    move-object/from16 v16, v2

    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    goto/16 :goto_1d3

    .line 626
    :cond_172
    move-object/from16 v16, v2

    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    goto :goto_1d3

    .line 632
    :cond_17b
    move-object v3, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move/from16 v17, v13

    new-instance v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-object/from16 v16, v2

    move-wide/from16 v18, v29

    move/from16 v20, v31

    invoke-direct/range {v13 .. v21}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    .line 635
    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 636
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a9

    .line 637
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 638
    invoke-virtual {v15, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-interface {v8, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    move-wide/from16 v18, v4

    move-object v5, v3

    goto :goto_1d3

    .line 641
    :cond_1a9
    nop

    .line 642
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 643
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1bd

    .line 644
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v18, v4

    move-object v5, v3

    goto :goto_1d3

    .line 645
    :cond_1bd
    move-wide/from16 v18, v4

    move-object v5, v3

    iget-wide v3, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 646
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-wide/from16 v20, v3

    iget-wide v3, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v3, v20, v3

    if-lez v3, :cond_1d3

    .line 647
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_1d3
    :goto_1d3
    add-int/lit8 v2, v36, 0x1

    move-object v15, v14

    move/from16 v13, v17

    move/from16 v1, v35

    move-object/from16 v3, v37

    move-object v14, v5

    move-wide/from16 v4, v18

    goto/16 :goto_b0

    .line 582
    :cond_1e1
    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    add-int/lit8 v1, v33, 0x1

    move-wide/from16 v2, v22

    move-object v14, v5

    move-wide/from16 v4, v18

    goto/16 :goto_84

    .line 575
    :cond_1f0
    move-wide/from16 v22, v2

    move-wide/from16 v18, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_65

    .line 654
    :cond_1fa
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 655
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 656
    const/4 v10, 0x0

    :goto_209
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_22a

    .line 657
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 658
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    add-int/lit8 v10, v10, 0x1

    goto :goto_209

    .line 660
    :cond_22a
    return-object v0

    .line 563
    :catch_22b
    move-exception v0

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getRecentThreshold(Ljava/lang/Long;)J
    .registers 6

    .line 118
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo p0, "recent_access_time_ms"

    const-wide/16 v2, 0x3a98

    const-string/jumbo v4, "privacy"

    invoke-static {v4, p0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist getRunningThreshold(Ljava/lang/Long;)J
    .registers 6

    .line 123
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo p0, "running_access_time_ms"

    const-wide/16 v2, 0x1388

    const-string/jumbo v4, "privacy"

    invoke-static {v4, p0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 419
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 421
    :try_start_9
    invoke-direct {p0, p1, p2}, Landroid/permission/PermissionUsageHelper;->isSubattributionSupported(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_10

    .line 422
    return-object v0

    .line 424
    :cond_10
    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    .line 425
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 427
    const-wide v2, 0x80001000L    # 1.060999919E-314

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 425
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 429
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p2

    .line 430
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    array-length v1, p1

    :goto_2f
    if-ge v2, v1, :cond_47

    aget-object v3, p1, v2
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_33} :catch_48

    .line 432
    :try_start_33
    invoke-virtual {v3}, Landroid/content/pm/Attribution;->getLabel()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {v3}, Landroid/content/pm/Attribution;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_42} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_42} :catch_48

    .line 436
    goto :goto_44

    .line 434
    :catch_43
    move-exception v3

    .line 430
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 440
    :cond_47
    goto :goto_49

    .line 438
    :catch_48
    move-exception p1

    .line 441
    :goto_49
    return-object v0
.end method

.method private blacklist getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 669
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 671
    if-eqz v0, :cond_2b9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    goto/16 :goto_2b9

    .line 675
    :cond_15
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 677
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 679
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 681
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 683
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 685
    const/4 v10, 0x0

    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5a

    .line 686
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 687
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v12, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_57

    .line 689
    iget-object v12, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_57
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    .line 694
    :cond_5a
    const/4 v10, 0x0

    :goto_5b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_cb

    .line 695
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 696
    if-nez v11, :cond_6c

    .line 697
    move/from16 v16, v10

    goto :goto_c8

    .line 700
    :cond_6c
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    .line 703
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    iget-object v12, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_99

    const-string v12, "android.permission-group.MICROPHONE"

    .line 704
    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    .line 705
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_99
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    .line 711
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 712
    iget-object v14, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c6

    if-eqz v13, :cond_bc

    iget-wide v14, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move/from16 v16, v10

    iget-wide v9, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v9, v14, v9

    if-lez v9, :cond_c8

    goto :goto_be

    :cond_bc
    move/from16 v16, v10

    .line 714
    :goto_be
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    .line 712
    :cond_c6
    move/from16 v16, v10

    .line 694
    :cond_c8
    :goto_c8
    add-int/lit8 v10, v16, 0x1

    goto :goto_5b

    .line 719
    :cond_cb
    const/4 v8, 0x0

    :goto_cc
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v8, v0, :cond_1a3

    .line 720
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 722
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 724
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 725
    if-eqz v0, :cond_19f

    if-nez v11, :cond_f6

    .line 726
    goto/16 :goto_19f

    .line 728
    :cond_f6
    nop

    .line 729
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    .line 730
    :goto_fc
    iget-object v14, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v14, :cond_187

    .line 732
    iget-object v14, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v14}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_123

    .line 733
    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move v14, v12

    move-object v12, v0

    goto :goto_132

    .line 737
    :cond_123
    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 738
    iget-object v14, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_187

    .line 739
    nop

    .line 741
    add-int/lit8 v12, v12, 0x1

    move v14, v12

    move-object v12, v0

    .line 747
    :goto_132
    if-eqz v12, :cond_187

    if-eq v13, v14, :cond_187

    .line 748
    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    if-ne v0, v15, :cond_141

    .line 750
    goto :goto_187

    .line 753
    :cond_141
    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_181

    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 756
    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 758
    nop

    .line 759
    :try_start_15f
    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 760
    iget-object v15, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v15, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 762
    invoke-virtual {v15, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 764
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17f

    .line 765
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15f .. :try_end_17f} :catch_180

    .line 769
    :cond_17f
    goto :goto_181

    .line 767
    :catch_180
    move-exception v0

    .line 771
    :cond_181
    :goto_181
    add-int/lit8 v13, v13, 0x1

    move-object v0, v12

    move v12, v14

    goto/16 :goto_fc

    .line 776
    :cond_187
    :goto_187
    const-string v0, "android.permission-group.MICROPHONE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19f

    .line 777
    nop

    .line 778
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_198

    const/4 v9, 0x0

    goto :goto_19c

    :cond_198
    invoke-direct {v1, v11}, Landroid/permission/PermissionUsageHelper;->formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 777
    :goto_19c
    invoke-virtual {v3, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_19f
    :goto_19f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_cc

    .line 782
    :cond_1a3
    iget-object v4, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 783
    const/4 v9, 0x0

    :goto_1a7
    :try_start_1a7
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v9, v0, :cond_281

    .line 784
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 785
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 788
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_27c

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v8}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v8

    if-eqz v8, :cond_27c

    .line 789
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v8

    if-eqz v8, :cond_27a

    .line 790
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    iget-object v8, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v8, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {v8}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_278

    const-string v8, "android.permission-group.MICROPHONE"

    .line 791
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1fc

    .line 792
    const/4 v8, 0x0

    goto/16 :goto_27d

    .line 796
    :cond_1fc
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_200
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 797
    iget-object v10, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 798
    goto :goto_200

    .line 800
    :cond_21a
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 801
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 802
    :goto_227
    if-lez v7, :cond_23c

    iget-object v11, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v11, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v11}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_23c

    .line 803
    add-int/lit8 v7, v7, -0x1

    .line 804
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    goto :goto_227

    .line 806
    :cond_23c
    nop

    .line 807
    iget-object v0, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v7, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v7, v7, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_249
    .catchall {:try_start_1a7 .. :try_end_249} :catchall_2b6

    if-nez v0, :cond_270

    .line 809
    :try_start_24b
    iget-object v0, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 810
    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 811
    iget-object v7, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v7, v7, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;
    :try_end_25d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24b .. :try_end_25d} :catch_26d
    .catchall {:try_start_24b .. :try_end_25d} :catchall_2b6

    const/4 v8, 0x0

    :try_start_25e
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 813
    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_26a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25e .. :try_end_26a} :catch_26b
    .catchall {:try_start_25e .. :try_end_26a} :catchall_2b6

    .line 816
    goto :goto_272

    .line 814
    :catch_26b
    move-exception v0

    goto :goto_271

    :catch_26d
    move-exception v0

    const/4 v8, 0x0

    goto :goto_271

    .line 807
    :cond_270
    const/4 v8, 0x0

    .line 818
    :goto_271
    const/4 v0, 0x0

    :goto_272
    :try_start_272
    iget-object v7, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v3, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27d

    .line 790
    :cond_278
    const/4 v8, 0x0

    goto :goto_27d

    .line 789
    :cond_27a
    const/4 v8, 0x0

    goto :goto_27d

    .line 788
    :cond_27c
    const/4 v8, 0x0

    .line 783
    :goto_27d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1a7

    .line 820
    :cond_281
    monitor-exit v4
    :try_end_282
    .catchall {:try_start_272 .. :try_end_282} :catchall_2b6

    .line 822
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 823
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b3

    .line 824
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b4

    .line 823
    :cond_2b3
    const/4 v2, 0x0

    .line 826
    :goto_2b4
    goto :goto_28a

    .line 828
    :cond_2b5
    return-object v3

    .line 820
    :catchall_2b6
    move-exception v0

    :try_start_2b7
    monitor-exit v4
    :try_end_2b8
    .catchall {:try_start_2b7 .. :try_end_2b8} :catchall_2b6

    throw v0

    .line 672
    :cond_2b9
    :goto_2b9
    return-object v3
.end method

.method private blacklist getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 189
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 190
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_14
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    return-object p1
.end method

.method private blacklist isBackgroundApp(I)Z
    .registers 6

    .line 521
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 522
    nop

    .line 523
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 524
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 525
    return v1

    .line 527
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 528
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, p1, :cond_2f

    .line 529
    iget p1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x7d

    if-le p1, v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1

    .line 532
    :cond_2f
    goto :goto_17

    .line 533
    :cond_30
    return v1
.end method

.method private blacklist isLocationProvider(Ljava/lang/String;)Z
    .registers 4

    .line 471
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 471
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 472
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;)Z

    move-result p1

    .line 471
    return p1
.end method

.method private blacklist isSubattributionSupported(Ljava/lang/String;I)Z
    .registers 7

    .line 449
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/permission/PermissionUsageHelper;->isLocationProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 450
    return v0

    .line 452
    :cond_8
    nop

    .line 453
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 454
    nop

    .line 455
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 456
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 454
    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 457
    if-eqz p1, :cond_2b

    .line 458
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->areAttributionsUserVisible()Z

    move-result p1
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2c

    return p1

    .line 460
    :cond_2b
    return v0

    .line 461
    :catch_2c
    move-exception p1

    .line 462
    return v0
.end method

.method private blacklist isSystemApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Z
    .registers 9

    .line 482
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 483
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    .line 485
    nop

    .line 486
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 488
    invoke-virtual {v3, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 489
    nop

    .line 490
    move v0, v2

    goto :goto_2e

    .line 492
    :cond_2c
    goto :goto_17

    .line 487
    :cond_2d
    move v0, v1

    .line 493
    :goto_2e
    if-nez v0, :cond_31

    .line 494
    return v2

    .line 498
    :cond_31
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    .line 500
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v0, p1, v3, p4, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4a

    .line 506
    and-int/lit16 p1, p3, 0x100

    if-nez p1, :cond_49

    move v1, v2

    :cond_49
    return v1

    .line 509
    :cond_4a
    and-int/lit16 p1, p3, 0x200

    if-nez p1, :cond_4f

    move v1, v2

    :cond_4f
    return v1
.end method

.method static synthetic blacklist lambda$addLinkToChainIfNotPresentLocked$0(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 1

    .line 265
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static blacklist shouldShowIndicators()Z
    .registers 3

    .line 112
    const-string/jumbo v0, "privacy"

    const-string v1, "camera_mic_icons_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 114
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->locationIndicatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    nop

    .line 112
    :goto_16
    return v2
.end method

.method private blacklist shouldShowPackage(Ljava/lang/String;)Z
    .registers 3

    .line 832
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private blacklist updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 397
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 400
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 401
    iget-object v1, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 403
    iget-object v1, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 404
    invoke-direct {p0, v2, v0}, Landroid/permission/PermissionUsageHelper;->getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 403
    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_32
    goto :goto_d

    .line 407
    :cond_33
    return-void

    .line 398
    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public blacklist getOpUsageDataForAllDevices(Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v1, :cond_49

    .line 377
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v1

    .line 378
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 380
    const/4 v3, 0x0

    move v4, v3

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2c

    .line 381
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/virtual/VirtualDevice;

    invoke-virtual {v5}, Landroid/companion/virtual/VirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 383
    :cond_2c
    const-string v1, "default:0"

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 385
    nop

    :goto_32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v3, v1, :cond_49

    .line 386
    nop

    .line 388
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 387
    invoke-virtual {p0, p1, v1}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataForIndicatorsByDevice(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 391
    :cond_49
    return-object v0
.end method

.method public blacklist getOpUsageDataForIndicatorsByDevice(ZLjava/lang/String;)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 294
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowIndicators()Z

    move-result v2

    if-nez v2, :cond_e

    .line 297
    return-object v1

    .line 300
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    if-eqz p1, :cond_1c

    .line 302
    sget-object v3, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_1c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->locationIndicatorsEnabled()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 305
    sget-object v3, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    :cond_27
    move-object/from16 v15, p2

    invoke-direct {v0, v2, v15}, Landroid/permission/PermissionUsageHelper;->getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 310
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 314
    iget-object v4, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 315
    const-string v5, "android:phone_call_camera"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "android:phone_call_microphone"

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_57

    .line 316
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    goto :goto_57

    :cond_54
    move/from16 v6, v16

    goto :goto_58

    :cond_57
    :goto_57
    move v6, v8

    .line 317
    :goto_58
    const-string v9, "android.permission-group.MICROPHONE"

    if-eqz v6, :cond_99

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_99

    .line 319
    iget-object v4, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/TelephonyManager;

    .line 320
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 321
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 322
    move/from16 v10, v16

    :goto_7b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_99

    .line 323
    nop

    .line 324
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v11, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 323
    invoke-virtual {v4, v11}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v8, :cond_96

    .line 326
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    :cond_96
    add-int/lit8 v10, v10, 0x1

    goto :goto_7b

    .line 333
    :cond_99
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 335
    move/from16 v6, v16

    :goto_a0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_15f

    .line 336
    nop

    .line 337
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 339
    nop

    .line 340
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-direct {v0, v10, v11}, Landroid/permission/PermissionUsageHelper;->getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v11

    .line 342
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-direct {v0, v12, v4}, Landroid/permission/PermissionUsageHelper;->updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 344
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cb

    .line 345
    nop

    .line 346
    move v12, v8

    move-object v10, v9

    goto :goto_d8

    .line 347
    :cond_cb
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d6

    .line 348
    nop

    .line 349
    const-string v10, "android.permission-group.CAMERA"

    move v12, v8

    goto :goto_d8

    .line 347
    :cond_d6
    move/from16 v12, v16

    .line 352
    :goto_d8
    move/from16 v13, v16

    :goto_da
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_148

    .line 353
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 354
    iget-object v8, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v8, v0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v8, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 355
    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    move-object v2, v4

    new-instance v4, Landroid/permission/PermissionGroupUsage;

    move-object v8, v5

    iget-object v5, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    move/from16 v18, v6

    iget v6, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    iget-wide v7, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move-object/from16 v21, v9

    move-object v9, v10

    iget-boolean v10, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    iget-object v14, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 360
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move/from16 v23, v13

    move-object v13, v0

    move-object v0, v11

    move v11, v12

    move-object v12, v14

    move-object/from16 v14, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v19

    move/from16 v19, v23

    const/16 v23, 0x1

    invoke-direct/range {v4 .. v15}, Landroid/permission/PermissionGroupUsage;-><init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 356
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v13, v19, 0x1

    move-object/from16 v15, p2

    move-object v4, v2

    move-object v10, v9

    move v12, v11

    move-object/from16 v2, v17

    move/from16 v6, v18

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v5, v22

    move/from16 v8, v23

    move-object v11, v0

    move-object/from16 v0, p0

    goto :goto_da

    .line 335
    :cond_148
    move-object/from16 v17, v2

    move-object v2, v4

    move-object/from16 v22, v5

    move/from16 v18, v6

    move-object/from16 v20, v7

    move/from16 v23, v8

    move-object/from16 v21, v9

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v2, v17

    goto/16 :goto_a0

    .line 364
    :cond_15f
    return-object v1
.end method

.method public blacklist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 15

    .line 210
    if-eqz p5, :cond_3

    .line 212
    return-void

    .line 218
    :cond_3
    iget-object p5, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter p5

    .line 219
    :try_start_6
    iget-object p6, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p6, p7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object p6, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result p6

    .line 221
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, p6, :cond_53

    .line 223
    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    iget-object v3, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 226
    move v5, v0

    :goto_37
    if-ge v5, v4, :cond_50

    .line 227
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 228
    invoke-virtual {v6, p1, p3, p4, p2}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    goto :goto_50

    .line 226
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 222
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 234
    :cond_53
    iget-object p1, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {p1, p7}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 235
    monitor-exit p5

    .line 236
    return-void

    .line 235
    :catchall_5a
    move-exception p1

    monitor-exit p5
    :try_end_5c
    .catchall {:try_start_6 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    .line 204
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 242
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 17

    .line 249
    if-eqz p7, :cond_23

    const/4 p5, -0x1

    move/from16 v6, p9

    if-eq v6, p5, :cond_23

    if-eqz p8, :cond_23

    and-int/lit8 p5, p8, 0x8

    if-nez p5, :cond_e

    goto :goto_23

    .line 255
    :cond_e
    iget-object p5, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter p5

    .line 256
    :try_start_11
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move-object v2, p3

    move-object v4, p4

    move v5, p8

    invoke-direct/range {v0 .. v6}, Landroid/permission/PermissionUsageHelper;->addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 258
    monitor-exit p5

    .line 259
    return-void

    .line 258
    :catchall_1f
    move-exception v0

    move-object p1, v0

    monitor-exit p5
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_1f

    throw p1

    .line 253
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist tearDown()V
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 197
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 198
    return-void
.end method
