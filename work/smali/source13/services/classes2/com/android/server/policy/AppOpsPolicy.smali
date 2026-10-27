.class public final Lcom/android/server/policy/AppOpsPolicy;
.super Ljava/lang/Object;
.source "AppOpsPolicy.java"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# static fields
.field private static final ACTIVITY_RECOGNITION_TAGS:Ljava/lang/String; = "android:activity_recognition_allow_listed_tags"

.field private static final ACTIVITY_RECOGNITION_TAGS_SEPARATOR:Ljava/lang/String; = ";"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIsHotwordDetectionServiceRequired:Z

.field private final mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPerUidLocationTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoleManager:Landroid/app/role/RoleManager;

.field private final mToken:Landroid/os/IBinder;

.field private final mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRoleManager(Lcom/android/server/policy/AppOpsPolicy;)Landroid/app/role/RoleManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateActivityRecognizerTags(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v14, Landroid/os/Binder;

    invoke-direct {v14}, Landroid/os/Binder;-><init>()V

    iput-object v14, v0, Lcom/android/server/policy/AppOpsPolicy;->mToken:Landroid/os/IBinder;

    .line 103
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 117
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    iput-object v7, v0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    .line 124
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/role/RoleManager;

    iput-object v8, v0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    .line 125
    const-class v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 127
    nop

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/android/server/policy/AppOpsPolicy;->isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    .line 130
    const-class v1, Landroid/location/LocationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/location/LocationManagerInternal;

    .line 132
    .local v15, "locationManagerInternal":Landroid/location/LocationManagerInternal;
    new-instance v1, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    invoke-virtual {v15, v1}, Landroid/location/LocationManagerInternal;->setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V

    .line 155
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v1

    .line 156
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "package"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    new-instance v2, Lcom/android/server/policy/AppOpsPolicy$1;

    invoke-direct {v2, v0}, Lcom/android/server/policy/AppOpsPolicy$1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v8, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 191
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ce

    .line 192
    const-string v2, "android.hardware.microphone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 193
    const-string v2, "android.software.telecom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 194
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v7, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 195
    .local v2, "appOps":Landroid/app/AppOpsManager;
    const/16 v9, 0x64

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v3, -0x1

    move-object v8, v2

    move-object v11, v14

    move-object v4, v13

    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    move v13, v3

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 197
    const/16 v9, 0x65

    const/4 v13, -0x1

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    goto :goto_cf

    .line 193
    .end local v2    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v13    # "intentFilter":Landroid/content/IntentFilter;
    :cond_ca
    move-object v4, v13

    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_cf

    .line 192
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v13    # "intentFilter":Landroid/content/IntentFilter;
    :cond_cc
    move-object v4, v13

    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_cf

    .line 191
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v13    # "intentFilter":Landroid/content/IntentFilter;
    :cond_ce
    move-object v4, v13

    .line 200
    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    :goto_cf
    return-void
.end method

.method private clearActivityRecognitionTags()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private initializeActivityRecognizersTags()V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 342
    .local v0, "activityRecognizers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 343
    .local v1, "recognizerCount":I
    if-lez v1, :cond_1e

    .line 344
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1d

    .line 345
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    .local v3, "activityRecognizer":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    .line 344
    .end local v3    # "activityRecognizer":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .end local v2    # "i":I
    :cond_1d
    goto :goto_21

    .line 349
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/policy/AppOpsPolicy;->clearActivityRecognitionTags()V

    .line 351
    :goto_21
    return-void
.end method

.method private static isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;)Z"
        }
    .end annotation

    .line 402
    .local p3, "mappedOps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/PackageTagsList;>;"
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PackageTagsList;

    .line 403
    .local v0, "appIdTags":Landroid/os/PackageTagsList;
    if-eqz v0, :cond_18

    invoke-virtual {v0, p1, p2}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private static isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z
    .registers 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method private static resolveArOp(I)I
    .registers 2
    .param p0, "code"    # I

    .line 417
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_7

    .line 418
    const/16 v0, 0x71

    return v0

    .line 420
    :cond_7
    return p0
.end method

.method private resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveRecordAudioOp(II)I

    move-result p1

    .line 318
    if-nez p4, :cond_7

    .line 319
    return p1

    .line 321
    :cond_7
    invoke-static {p1}, Lcom/android/server/policy/AppOpsPolicy;->resolveLocationOp(I)I

    move-result v0

    .line 322
    .local v0, "resolvedCode":I
    if-eq v0, p1, :cond_16

    .line 323
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, v1}, Lcom/android/server/policy/AppOpsPolicy;->isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 325
    return v0

    .line 328
    :cond_16
    invoke-static {p1}, Lcom/android/server/policy/AppOpsPolicy;->resolveArOp(I)I

    move-result v0

    .line 329
    if-eq v0, p1, :cond_25

    .line 330
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, v1}, Lcom/android/server/policy/AppOpsPolicy;->isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 332
    return v0

    .line 336
    :cond_25
    return p1
.end method

.method private static resolveLocationOp(I)I
    .registers 2
    .param p0, "code"    # I

    .line 407
    packed-switch p0, :pswitch_data_a

    .line 413
    return p0

    .line 409
    :pswitch_4
    const/16 v0, 0x6c

    return v0

    .line 411
    :pswitch_7
    const/16 v0, 0x6d

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method private resolveRecordAudioOp(II)I
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 424
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1b

    .line 425
    iget-boolean v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    if-nez v0, :cond_9

    .line 426
    return p1

    .line 430
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 431
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object v0

    .line 432
    .local v0, "hotwordDetectionServiceIdentity":Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    if-eqz v0, :cond_18

    .line 433
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v1

    if-ne p2, v1, :cond_18

    .line 434
    return p1

    .line 436
    :cond_18
    const/16 v1, 0x1b

    return v1

    .line 438
    .end local v0    # "hotwordDetectionServiceIdentity":Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    :cond_1b
    return p1
.end method

.method private resolveUid(II)I
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 447
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_e

    const/16 v0, 0x66

    if-ne p1, v0, :cond_20

    .line 450
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 451
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object v0

    .line 452
    .local v0, "hotwordDetectionServiceIdentity":Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    if-eqz v0, :cond_20

    .line 453
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v1

    if-ne p2, v1, :cond_20

    .line 454
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    move-result p2

    .line 457
    .end local v0    # "hotwordDetectionServiceIdentity":Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    :cond_20
    return p2
.end method

.method private updateActivityRecognizerTags(Ljava/lang/String;)V
    .registers 11
    .param p1, "activityRecognizer"    # Ljava/lang/String;

    .line 360
    const v0, 0xc8084

    .line 366
    .local v0, "flags":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTIVITY_RECOGNIZER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 369
    const v3, 0xc8084

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 370
    .local v2, "resolvedService":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_69

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_22

    goto :goto_69

    .line 375
    :cond_22
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 376
    .local v3, "metaData":Landroid/os/Bundle;
    if-nez v3, :cond_29

    .line 377
    return-void

    .line 379
    :cond_29
    const-string v4, "android:activity_recognition_allow_listed_tags"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "tagsList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 381
    new-instance v5, Landroid/os/PackageTagsList$Builder;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v7, ";"

    .line 383
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 381
    invoke-virtual {v5, v6, v7}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    move-result-object v5

    .line 383
    invoke-virtual {v5}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v5

    .line 384
    .local v5, "packageTagsList":Landroid/os/PackageTagsList;
    iget-object v6, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 385
    :try_start_54
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 386
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 385
    invoke-static {v7, v5, v8}, Lcom/android/server/policy/AppOpsPolicy;->updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 389
    monitor-exit v6

    goto :goto_68

    :catchall_65
    move-exception v7

    monitor-exit v6
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_65

    throw v7

    .line 391
    .end local v5    # "packageTagsList":Landroid/os/PackageTagsList;
    :cond_68
    :goto_68
    return-void

    .line 371
    .end local v3    # "metaData":Landroid/os/Bundle;
    .end local v4    # "tagsList":Ljava/lang/String;
    :cond_69
    :goto_69
    sget-object v3, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Service recognizer doesn\'t handle android.intent.action.ACTIVITY_RECOGNIZER, ignoring!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method private static updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 4
    .param p0, "appId"    # I
    .param p1, "packageTagsList"    # Landroid/os/PackageTagsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/PackageTagsList;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;)V"
        }
    .end annotation

    .line 396
    .local p2, "datastore":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Landroid/os/PackageTagsList;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method private writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V
    .registers 7
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 306
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/PackageTagsList;>;"
    const/4 v0, 0x0

    .line 307
    .local v0, "counter":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 308
    .local v2, "tagEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/PackageTagsList;>;"
    const-string v3, "    #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "counter":I
    .local v3, "counter":I
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PackageTagsList;

    invoke-virtual {v0, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 311
    .end local v2    # "tagEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/PackageTagsList;>;"
    move v0, v3

    goto :goto_9

    .line 312
    .end local v3    # "counter":I
    .restart local v0    # "counter":I
    :cond_41
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 9
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 217
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v0, v1, v2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/QuintFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 211
    .local p6, "superImpl":Lcom/android/internal/util/function/QuintFunction;, "Lcom/android/internal/util/function/QuintFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p6

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public dumpTags(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 294
    const-string v0, "  AppOps policy location tags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 296
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 298
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 299
    const-string v0, "  AppOps policy activity recognition tags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 303
    :cond_2a
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V
    .registers 14
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p6, "superImpl":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<Landroid/os/IBinder;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 276
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 275
    move-object v1, p6

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .registers 9
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "skipProxyOperation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Landroid/os/IBinder;Ljava/lang/Integer;Landroid/content/AttributionSource;Ljava/lang/Boolean;Ljava/lang/Void;>;"
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 284
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 285
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 283
    invoke-interface {p5, p1, v0, p3, v1}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-policy-AppOpsPolicy(ILandroid/os/PackageTagsList;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageTagsList"    # Landroid/os/PackageTagsList;

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    invoke-virtual {p2}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 136
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14

    .line 138
    :cond_f
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 141
    :goto_14
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 142
    .local v1, "appId":I
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    .line 143
    .local v2, "appIdTags":Landroid/os/PackageTagsList$Builder;
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 144
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v3, :cond_41

    .line 145
    iget-object v5, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-ne v5, v1, :cond_3e

    .line 146
    iget-object v5, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PackageTagsList;

    invoke-virtual {v2, v5}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 144
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 150
    .end local v4    # "i":I
    :cond_41
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v4, v5}, Lcom/android/server/policy/AppOpsPolicy;->updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 152
    .end local v1    # "appId":I
    .end local v2    # "appIdTags":Landroid/os/PackageTagsList$Builder;
    .end local v3    # "size":I
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method synthetic lambda$new$1$com-android-server-policy-AppOpsPolicy(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 181
    const-string v0, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    invoke-direct {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    .line 184
    :cond_b
    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;
    .registers 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/HeptFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 225
    .local p8, "superImpl":Lcom/android/internal/util/function/HeptFunction;, "Lcom/android/internal/util/function/HeptFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/app/SyncNotedAppOp;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 227
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 225
    move-object/from16 v1, p8

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .registers 16
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/internal/util/function/HexFunction<",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 236
    .local p7, "superImpl":Lcom/android/internal/util/function/HexFunction;, "Lcom/android/internal/util/function/HexFunction<Ljava/lang/Integer;Landroid/content/AttributionSource;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/app/SyncNotedAppOp;>;"
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 237
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 238
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 239
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 236
    move-object v1, p7

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 30
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 250
    .local p12, "superImpl":Lcom/android/internal/util/function/UndecFunction;, "Lcom/android/internal/util/function/UndecFunction<Landroid/os/IBinder;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/app/SyncNotedAppOp;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    invoke-direct {v0, v1, v2, v15, v14}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 251
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 252
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 253
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 250
    move-object/from16 v3, p12

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v11, p8

    move-object/from16 v14, v16

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SyncNotedAppOp;

    return-object v3
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 30
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z
    .param p8, "skipProxyOperation"    # Z
    .param p9, "proxyAttributionFlags"    # I
    .param p10, "proxiedAttributionFlags"    # I
    .param p11, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZIII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 264
    .local p12, "superImpl":Lcom/android/internal/util/function/UndecFunction;, "Lcom/android/internal/util/function/UndecFunction<Landroid/os/IBinder;Ljava/lang/Integer;Landroid/content/AttributionSource;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/app/SyncNotedAppOp;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 264
    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 266
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 267
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 268
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 264
    move-object/from16 v5, p12

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v11, p6

    invoke-interface/range {v5 .. v16}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method
