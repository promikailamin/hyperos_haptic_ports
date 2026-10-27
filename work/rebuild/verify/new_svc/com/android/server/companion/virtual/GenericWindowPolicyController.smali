.class public Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.super Landroid/window/DisplayWindowPolicyController;
.source "GenericWindowPolicyController.java"


# static fields
.field public static final BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field public mActivityLaunchAllowedByDefault:Z

.field public final mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

.field public final mActivityPolicyExemptions:Landroid/util/ArraySet;

.field public final mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

.field public final mAllowedUsers:Landroid/util/ArraySet;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mCrossTaskNavigationAllowedByDefault:Z

.field public final mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

.field public mCurrentWindowFlags:I

.field public final mCustomHomeComponent:Landroid/content/ComponentName;

.field public final mDisplayCategories:Ljava/util/Set;

.field public mDisplayId:I

.field public final mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mGenericWindowPolicyControllerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public mIsMirrorDisplay:Z

.field public mIsSecureDisplay:Z

.field public final mRunningUidPackagePairs:Landroid/util/ArraySet;

.field public mShowTasksInHostDeviceRecents:Z


# direct methods
.method public static synthetic $r8$lambda$02U1odZ6o6YS3y0icH3ZN59VRfo(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$keepActivityOnWindowFlagsChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MoGhI0PAW9MH0MSB9FN2v6IWTfE(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onRunningAppsChanged$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q4-qR8hIE_MCMQoXPRM74QPKBFo(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/ComponentName;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onTopActivityChanged$2(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bbXS2KwiPC7_e4kKJzTVkNuGKnU(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/pm/ActivityInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$keepActivityOnWindowFlagsChanged$0(ILandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRGAzympNH5HtNL1frgFI8bS8J8(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/util/ArraySet;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onRunningAppsChanged$3(ILandroid/util/ArraySet;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;Ljava/util/Set;ZLandroid/content/ComponentName;)V
    .registers 15

    .line 180
    invoke-direct {p0}, Landroid/window/DisplayWindowPolicyController;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsSecureDisplay:Z

    .line 129
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 132
    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    .line 134
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 181
    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 182
    iput-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    .line 183
    iput-boolean p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 184
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 185
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    .line 186
    iput-boolean p6, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    .line 187
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 188
    iput-object p8, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    .line 189
    iput-object p9, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 190
    iput-boolean p10, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    .line 191
    iput-object p11, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static isAllowedByPolicy(ZLjava/util/Set;Landroid/content/ComponentName;)Z
    .registers 3

    .line 480
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final activityMatchesDisplayCategory(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    .line 445
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 446
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v1

    .line 448
    :cond_10
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 449
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v2

    :cond_1d
    return v1
.end method

.method public addActivityPolicyExemption(Landroid/content/ComponentName;)V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addActivityPolicyExemption(Ljava/lang/String;)V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    .line 284
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {v1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->shouldInterceptIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 285
    const-string p1, "Virtual device intercepting intent"

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    .line 288
    :cond_11
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result p2

    if-nez p2, :cond_1e

    if-eqz p6, :cond_1a

    const/4 p7, 0x0

    .line 293
    :cond_1a
    invoke-virtual {p0, p1, p7}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V

    return v0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z
    .registers 10

    .line 304
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 305
    const-string p1, "Mirror virtual displays cannot contain activities."

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    .line 308
    :cond_d
    iget-boolean p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsSecureDisplay:Z

    if-nez p2, :cond_1e

    iget p2, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr p2, v1

    if-nez p2, :cond_1e

    .line 309
    const-string p1, "Display requires android:canDisplayOnRemoteDevices=true"

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    .line 312
    :cond_1e
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 313
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 314
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    const-string v2, "Activity launch disallowed from user "

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    .line 318
    :cond_49
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 319
    sget-object v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5d

    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_5d

    return v4

    .line 323
    :cond_5d
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-nez v3, :cond_7e

    iget-object v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    .line 327
    :cond_7e
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->activityMatchesDisplayCategory(Landroid/content/pm/ActivityInfo;)Z

    move-result p2

    if-nez p2, :cond_a5

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The activity\'s required display category \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found on virtual display with the following categories: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    .line 334
    :cond_a5
    invoke-virtual {p0, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->isAllowedByPolicy(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_c0

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity launch disallowed by policy: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    :cond_c0
    if-eqz p4, :cond_e3

    if-eqz p3, :cond_e3

    .line 339
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 340
    invoke-static {p1, p2, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->isAllowedByPolicy(ZLjava/util/Set;Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_e3

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cross task navigation disallowed by policy: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v0

    :cond_e3
    return v4
.end method

.method public canShowTasksInHostDeviceRecents()Z
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 422
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public containsUid(I)Z
    .registers 6

    .line 434
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 435
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 436
    iget-object v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_24

    const/4 p0, 0x1

    .line 437
    monitor-exit v0

    return p0

    :catchall_22
    move-exception p0

    goto :goto_29

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 440
    :cond_27
    monitor-exit v0

    return v1

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_22

    throw p0
.end method

.method public getCustomHomeComponent()Landroid/content/ComponentName;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public isActivityLaunchAllowedByDefault()Z
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 242
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isAllowedByPolicy(Landroid/content/ComponentName;)Z
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    .line 469
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_1e

    .line 472
    :cond_18
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    goto :goto_24

    .line 470
    :cond_1e
    :goto_1e
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    .line 473
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1c

    throw p0
.end method

.method public keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .registers 8

    .line 359
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    and-int/lit16 v1, p2, 0x2000

    if-eqz v1, :cond_1b

    .line 364
    iget v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_1b

    .line 365
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/pm/ActivityInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    if-nez v1, :cond_2d

    .line 368
    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_2d

    .line 369
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    :cond_2d
    iput p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    .line 374
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 376
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const-wide/32 v2, 0xc05e3df

    .line 374
    invoke-static {v2, v3, v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_51

    and-int/lit16 p2, p2, 0x2000

    if-nez p2, :cond_4b

    const/high16 p2, 0x80000

    and-int/2addr p2, p3

    if-eqz p2, :cond_51

    :cond_4b
    const/4 p2, 0x0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V

    const/4 p0, 0x0

    return p0

    :cond_51
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$keepActivityOnWindowFlagsChanged$0(ILandroid/content/pm/ActivityInfo;)V
    .registers 3

    .line 366
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onSecureWindowShown(ILandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public final synthetic lambda$keepActivityOnWindowFlagsChanged$1(I)V
    .registers 2

    .line 369
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onSecureWindowHidden(I)V

    return-void
.end method

.method public final synthetic lambda$onRunningAppsChanged$3(ILandroid/util/ArraySet;)V
    .registers 3

    .line 411
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onRunningAppsChanged(ILandroid/util/ArraySet;)V

    return-void
.end method

.method public final synthetic lambda$onRunningAppsChanged$4(I)V
    .registers 2

    .line 413
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method public final synthetic lambda$onTopActivityChanged$2(ILandroid/content/ComponentName;I)V
    .registers 4

    .line 397
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method public final logActivityLaunchBlocked(Ljava/lang/String;)V
    .registers 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual device activity launch disallowed on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 351
    const-string p1, "GenericWindowPolicyController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V
    .registers 5

    .line 454
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v0

    .line 457
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 458
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    if-nez p2, :cond_13

    const/4 p2, 0x0

    goto :goto_19

    .line 459
    :cond_13
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/IntentSender;

    .line 458
    :goto_19
    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onActivityLaunchBlocked(ILandroid/content/pm/ActivityInfo;Landroid/content/IntentSender;)V

    .line 461
    :cond_1c
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 463
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 461
    const-string/jumbo p1, "virtual_devices.value_activity_blocked_count"

    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 6

    .line 403
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 405
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 408
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_36

    .line 410
    :cond_18
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/util/ArraySet;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUidPackagePairs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 413
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    :cond_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_16

    throw p0
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;II)V
    .registers 6

    .line 390
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result p2

    if-eqz p1, :cond_13

    const/4 v0, -0x1

    if-eq p2, v0, :cond_13

    .line 396
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public removeActivityPolicyExemption(Landroid/content/ComponentName;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeActivityPolicyExemption(Ljava/lang/String;)V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 276
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setActivityLaunchDefaultAllowed(Z)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    if-eq v1, p1, :cond_14

    .line 248
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 249
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 251
    :cond_14
    :goto_14
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 252
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public setDisplayId(IZZ)V
    .registers 4

    .line 198
    iput p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 199
    iput-boolean p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    .line 200
    iput-boolean p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsSecureDisplay:Z

    .line 201
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setShowInHostDeviceRecents(Z)V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    .line 236
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final waitAndGetDisplayId()I
    .registers 7

    .line 206
    const-string v0, "GenericWindowPolicyController"

    const/4 v1, -0x1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 207
    const-string p0, "Timed out while waiting for GWPC displayId to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_14} :catch_18

    return v1

    .line 214
    :cond_15
    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    return p0

    .line 211
    :catch_18
    const-string p0, "Interrupted while waiting for GWPC displayId to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final waitAndGetIsMirrorDisplay()Z
    .registers 7

    .line 219
    const-string v0, "GenericWindowPolicyController"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 220
    const-string p0, "Timed out while waiting for GWPC isMirrorDisplay to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_14} :catch_18

    return v1

    .line 227
    :cond_15
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    return p0

    .line 224
    :catch_18
    const-string p0, "Interrupted while waiting for GWPC isMirrorDisplay to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
