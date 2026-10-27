.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation runtime Landroid/ravenwood/annotation/RavenwoodSupported$RavenwoodProvidingImplementation;
    target = Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;,
        Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;,
        Landroid/app/ContextImpl$ServiceInitializationState;,
        Landroid/app/ContextImpl$ContextType;
    }
.end annotation


# static fields
.field private static final blacklist CONTEXT_TYPE_ACTIVITY:I = 0x2

.field private static final blacklist CONTEXT_TYPE_DISPLAY_CONTEXT:I = 0x1

.field private static final blacklist CONTEXT_TYPE_NON_UI:I = 0x0

.field private static final blacklist CONTEXT_TYPE_SYSTEM_OR_SYSTEM_UI:I = 0x4

.field private static final blacklist CONTEXT_TYPE_WINDOW_CONTEXT:I = 0x3

.field private static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o STATE_INITIALIZING:I = 0x1

.field static final greylist-max-o STATE_NOT_FOUND:I = 0x3

.field static final greylist-max-o STATE_READY:I = 0x2

.field static final greylist-max-o STATE_UNINITIALIZED:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContextImpl"

.field private static final greylist-max-o XATTR_INODE_CACHE:Ljava/lang/String; = "user.inode_cache"

.field private static final greylist-max-o XATTR_INODE_CODE_CACHE:Ljava/lang/String; = "user.inode_code_cache"

.field private static greylist sSharedPrefsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private greylist-max-o mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

.field private blacklist mAutofillOptions:Landroid/content/AutofillOptions;

.field private final greylist mBasePackageName:Ljava/lang/String;

.field private greylist-max-o mCacheDir:Ljava/io/File;

.field private final blacklist mCacheDirLock:Ljava/lang/Object;

.field private greylist mClassLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o mCodeCacheDir:Ljava/io/File;

.field private final blacklist mCodeCacheDirLock:Ljava/lang/Object;

.field private blacklist mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

.field private final greylist mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private blacklist mContextType:I

.field private blacklist mCratesDir:Ljava/io/File;

.field private final blacklist mCratesDirLock:Ljava/lang/Object;

.field private greylist-max-o mDatabasesDir:Ljava/io/File;

.field private final blacklist mDatabasesDirLock:Ljava/lang/Object;

.field private blacklist mDeviceId:I

.field private blacklist mDeviceIdChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceIdListenerLock:Ljava/lang/Object;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private greylist-max-o mFilesDir:Ljava/io/File;

.field private final blacklist mFilesDirLock:Ljava/lang/Object;

.field private final greylist-max-p mFlags:I

.field private blacklist mForceDisplayOverrideInResources:Z

.field private blacklist mIsConfigurationBasedContext:Z

.field private blacklist mIsExplicitDeviceId:Z

.field final greylist mMainThread:Landroid/app/ActivityThread;

.field private final blacklist mMiscDirsLock:Ljava/lang/Object;

.field private greylist-max-o mNoBackupFilesDir:Ljava/io/File;

.field private final blacklist mNoBackupFilesDirLock:Ljava/lang/Object;

.field private final greylist-max-p mOpPackageName:Ljava/lang/String;

.field private greylist mOuterContext:Landroid/content/Context;

.field final greylist mPackageInfo:Landroid/app/LoadedApk;

.field private greylist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mParams:Landroid/content/ContextParams;

.field private greylist mPreferencesDir:Ljava/io/File;

.field private final blacklist mPreferencesDirLock:Ljava/lang/Object;

.field private greylist-max-o mReceiverRestrictedContext:Landroid/content/Context;

.field private greylist mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mResourcesManager:Landroid/app/ResourcesManager;

.field final greylist mServiceCache:[Ljava/lang/Object;

.field final greylist-max-o mServiceInitializationStateArray:[I

.field private greylist-max-p mSharedPrefsPaths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSplitName:Ljava/lang/String;

.field private greylist mTheme:Landroid/content/res/Resources$Theme;

.field private final blacklist mThemeLock:Ljava/lang/Object;

.field private greylist mThemeResource:I

.field private final blacklist mToken:Landroid/os/IBinder;

.field private final greylist-max-o mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V
    .registers 18

    .line 3686
    move/from16 v0, p14

    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 263
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 282
    iput-boolean v1, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 290
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    .line 291
    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 294
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 300
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 303
    iput-object v1, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 305
    iput-object v1, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 308
    iput-object v1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 353
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDirLock:Ljava/lang/Object;

    .line 357
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDirLock:Ljava/lang/Object;

    .line 362
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFilesDirLock:Ljava/lang/Object;

    .line 366
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCratesDirLock:Ljava/lang/Object;

    .line 370
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDirLock:Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCacheDirLock:Ljava/lang/Object;

    .line 378
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDirLock:Ljava/lang/Object;

    .line 382
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    .line 385
    nop

    .line 386
    invoke-static {}, Landroid/app/SystemServiceRegistry;->createServiceCache()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 410
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    .line 3687
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3690
    and-int/lit8 v1, p10, 0x18

    if-nez v1, :cond_8f

    .line 3692
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v1

    .line 3693
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 3694
    or-int/lit8 v1, p10, 0x10

    goto :goto_90

    .line 3695
    :cond_82
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 3696
    or-int/lit8 v1, p10, 0x8

    goto :goto_90

    .line 3700
    :cond_8f
    move v1, p10

    :goto_90
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 3701
    iput-object p8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 3702
    iput v1, p0, Landroid/app/ContextImpl;->mFlags:I

    .line 3704
    if-nez p9, :cond_9c

    .line 3705
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p9

    .line 3707
    :cond_9c
    iput-object p9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    .line 3709
    iput-object p3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3710
    iput-object p7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 3711
    iput-object p11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    .line 3712
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object p7

    iput-object p7, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3716
    move/from16 p7, p13

    iput p7, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3717
    iput-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 3719
    if-eqz p1, :cond_e0

    .line 3720
    iget-object p3, p1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3721
    iget-object p3, p1, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3722
    iget-object p7, p1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p7}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3723
    iget-object p7, p1, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iput-object p7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 3724
    if-nez v0, :cond_cb

    .line 3725
    iget-boolean p7, p1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    iput-boolean p7, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 3726
    iget p7, p1, Landroid/app/ContextImpl;->mDeviceId:I

    iput p7, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3728
    :cond_cb
    iget-boolean p7, p1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    iput-boolean p7, p0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3729
    iget-boolean p7, p1, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    iput-boolean p7, p0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3730
    iget p7, p1, Landroid/app/ContextImpl;->mContextType:I

    iput p7, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 3731
    iget-object p7, p1, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    iput-object p7, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3732
    iget-object p1, p1, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    goto :goto_fd

    .line 3734
    :cond_e0
    iget-object p1, p3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3735
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 3736
    iget p3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 p7, 0x3e8

    if-ne p3, p7, :cond_fb

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    if-eq p1, p3, :cond_fb

    .line 3741
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object p3

    goto :goto_fd

    .line 3743
    :cond_fb
    iget-object p3, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3747
    :goto_fd
    if-eqz p12, :cond_100

    move-object p3, p12

    :cond_100
    iput-object p3, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3748
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContextParams;

    iput-object p1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    .line 3749
    nop

    .line 3750
    invoke-virtual {p4}, Landroid/content/ContextParams;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p4}, Landroid/content/ContextParams;->shouldRegisterAttributionSource()Z

    move-result p3

    iget p4, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3749
    move-object p7, p0

    move-object p10, p1

    move p11, p3

    move p12, p4

    move-object p8, p5

    move-object p9, p6

    invoke-direct/range {p7 .. p12}, Landroid/app/ContextImpl;->createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;ZI)Landroid/content/AttributionSource;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3751
    invoke-static {p0, p2}, Landroid/app/ContextImpl;->newApplicationContentResolver(Landroid/content/Context;Landroid/app/ActivityThread;)Landroid/app/ContextImpl$ApplicationContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 3752
    return-void
.end method

.method private blacklist applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 1255
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1257
    return-object p1

    .line 1261
    :cond_7
    if-eqz p1, :cond_14

    .line 1262
    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1263
    invoke-static {v0}, Landroid/app/ActivityOptions;->hasLaunchTargetContainer(Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1265
    return-object p1

    .line 1268
    :cond_14
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1270
    :cond_18
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAssociatedDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private blacklist bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z
    .registers 20

    .line 2267
    if-eqz p2, :cond_b4

    .line 2270
    if-eqz p6, :cond_f

    if-nez p7, :cond_7

    goto :goto_f

    .line 2271
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Handler and Executor both supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2273
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_ac

    .line 2274
    if-eqz p7, :cond_25

    .line 2275
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p2

    move-wide v5, p3

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;J)Landroid/app/IServiceConnection;

    move-result-object p2

    move-object v5, p2

    goto :goto_34

    .line 2277
    :cond_25
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p2

    move-wide v4, p3

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object p2

    move-object v5, p2

    .line 2282
    :goto_34
    invoke-direct/range {p0 .. p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2284
    :try_start_37
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object p2

    .line 2285
    if-nez p2, :cond_5b

    const-wide/16 v0, 0x1

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_5b

    iget-object p2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz p2, :cond_5b

    iget-object p2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2286
    invoke-virtual {p2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xe

    if-ge p2, v0, :cond_5b

    .line 2288
    const-wide/16 v0, 0x20

    or-long/2addr p3, v0

    move-wide v6, p3

    goto :goto_5c

    .line 2290
    :cond_5b
    move-wide v6, p3

    :goto_5c
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2291
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2292
    invoke-virtual {p2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2293
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 2294
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 2291
    move-object v3, p1

    move-object/from16 v8, p5

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 2295
    if-ltz p2, :cond_8c

    .line 2299
    if-eqz p2, :cond_8a

    const/4 p1, 0x1

    goto :goto_8b

    :cond_8a
    const/4 p1, 0x0

    :goto_8b
    return p1

    .line 2296
    :cond_8c
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not allowed to bind to service "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_a5} :catch_a5

    .line 2300
    :catch_a5
    move-exception v0

    move-object p1, v0

    .line 2301
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2280
    :cond_ac
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not supported in system context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2268
    :cond_b4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connection is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkMode(I)V
    .registers 4

    .line 3867
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_23

    .line 3868
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1b

    .line 3871
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_13

    goto :goto_23

    .line 3872
    :cond_13
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "MODE_WORLD_WRITEABLE no longer supported"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3869
    :cond_1b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "MODE_WORLD_READABLE no longer supported"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3875
    :cond_23
    :goto_23
    return-void
.end method

.method static greylist-max-r createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;
    .registers 24

    .line 3621
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    if-eqz v3, :cond_c8

    .line 3623
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v1

    .line 3624
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3626
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3627
    const-string v1, "SplitDependencies"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3629
    :try_start_1f
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3630
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2b} :catch_33
    .catchall {:try_start_1f .. :try_end_2b} :catchall_31

    .line 3635
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3636
    move-object v15, v1

    move-object v11, v2

    goto :goto_40

    .line 3635
    :catchall_31
    move-exception v0

    goto :goto_3a

    .line 3631
    :catch_33
    move-exception v0

    .line 3633
    :try_start_34
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    .line 3635
    :goto_3a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3636
    throw v0

    .line 3626
    :cond_3e
    move-object v15, v1

    move-object v11, v2

    .line 3640
    :goto_40
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v1, :cond_53

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_53

    .line 3641
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v1, v1, v16

    move-object v5, v1

    goto :goto_55

    .line 3643
    :cond_53
    move-object/from16 v5, v17

    .line 3646
    :goto_55
    new-instance v1, Landroid/app/ContextImpl;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3649
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3650
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3653
    const/4 v1, -0x1

    move/from16 v2, p4

    if-eq v2, v1, :cond_77

    move v13, v2

    goto :goto_79

    :cond_77
    move/from16 v13, v16

    .line 3655
    :goto_79
    if-nez v13, :cond_80

    .line 3656
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    goto :goto_82

    .line 3657
    :cond_80
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 3659
    :goto_82
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v6

    .line 3663
    nop

    .line 3664
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v8

    .line 3666
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v10

    .line 3667
    move-object/from16 v16, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v11

    .line 3668
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3673
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-nez v2, :cond_a2

    goto :goto_ae

    .line 3674
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v17

    .line 3663
    :goto_ae
    move-object/from16 v7, p3

    move-object/from16 v14, p5

    move-object v9, v15

    move-object v15, v1

    invoke-virtual/range {v6 .. v17}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3675
    nop

    .line 3676
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3675
    invoke-virtual {v6, v13, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3677
    return-object v0

    .line 3621
    :cond_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .registers 3

    .line 3601
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;
    .registers 18

    .line 3607
    if-eqz p1, :cond_2b

    .line 3608
    new-instance v0, Landroid/app/ContextImpl;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3611
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3612
    invoke-static {v0}, Landroid/app/ContextImpl;->isSystemOrSystemUI(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x4

    goto :goto_28

    .line 3613
    :cond_27
    const/4 p0, 0x0

    :goto_28
    iput p0, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3614
    return-object v0

    .line 3607
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "packageInfo"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist createApplicationContextAsUser(Landroid/content/pm/ApplicationInfo;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2869
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    or-int v3, p2, v3

    invoke-virtual {v0, v15, v2, v3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v3

    .line 2871
    if-eqz v3, :cond_61

    .line 2872
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2873
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2877
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v2

    .line 2878
    iget-boolean v4, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v4, :cond_45

    .line 2879
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    move-object v7, v4

    .line 2881
    iget-object v4, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 2882
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    .line 2881
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-static/range {v4 .. v10}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2883
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_61

    .line 2884
    return-object v0

    .line 2888
    :cond_61
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;ZI)Landroid/content/AttributionSource;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/AttributionSource;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Landroid/content/AttributionSource;"
        }
    .end annotation

    .line 3759
    new-instance v0, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3760
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3761
    if-eqz p3, :cond_18

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    goto :goto_19

    :cond_18
    const/4 p3, 0x0

    :goto_19
    move-object v5, p3

    move-object v4, p1

    move-object v7, p2

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 3765
    invoke-direct {p0, v0, p4}, Landroid/app/ContextImpl;->registerAttributionSourceIfNeeded(Landroid/content/AttributionSource;Z)Landroid/content/AttributionSource;

    move-result-object p1

    return-object p1
.end method

.method private blacklist createAttributionSourceWithDeviceId(Landroid/content/AttributionSource;I)Landroid/content/AttributionSource;
    .registers 4

    .line 3770
    nop

    .line 3771
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->shouldRegisterAttributionSource()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3772
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0}, Landroid/content/ContextParams;->shouldRegisterAttributionSource()Z

    move-result v0

    goto :goto_f

    .line 3771
    :cond_e
    const/4 v0, 0x0

    .line 3774
    :goto_f
    invoke-virtual {p1, p2}, Landroid/content/AttributionSource;->withDeviceId(I)Landroid/content/AttributionSource;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->registerAttributionSourceIfNeeded(Landroid/content/AttributionSource;Z)Landroid/content/AttributionSource;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/app/LoadedApk;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 2842
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2843
    invoke-virtual/range {p1 .. p2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_2c

    .line 2846
    nop

    .line 2847
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    .line 2848
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v2

    .line 2850
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v4

    .line 2851
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v5

    .line 2852
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2847
    move-object v1, p0

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 2844
    :catch_2c
    move-exception v0

    move-object p0, v0

    .line 2845
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static greylist createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .registers 2

    .line 3558
    new-instance v0, Landroid/app/LoadedApk;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    .line 3559
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createSystemContextInner(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createSystemContextInner(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .registers 17

    .line 3564
    new-instance v0, Landroid/app/ContextImpl;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3567
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3568
    iget-object p0, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3569
    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3568
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3570
    const/4 p0, 0x4

    iput p0, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3571
    return-object v0
.end method

.method static blacklist createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/content/Context;
    .registers 5

    .line 3583
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 3584
    invoke-virtual {p0, v0, p1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object p0

    .line 3588
    new-instance v1, Landroid/window/SystemUiContext;

    invoke-direct {v1, p0}, Landroid/window/SystemUiContext;-><init>(Landroid/content/Context;)V

    .line 3589
    invoke-virtual {p0, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3590
    invoke-virtual {v0, v1}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 3593
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/window/WindowTokenClientController;->attachToDisplayContent(Landroid/window/WindowTokenClient;I)Z

    .line 3594
    const/4 p1, 0x4

    iput p1, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 3595
    return-object v1
.end method

.method private blacklist createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 6

    .line 3130
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 3134
    nop

    .line 3135
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 3134
    invoke-virtual {p0, v0, p1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object p1

    .line 3140
    new-instance v1, Landroid/window/WindowContext;

    invoke-direct {v1, p1, p2, p3}, Landroid/window/WindowContext;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 3141
    invoke-virtual {p1, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3146
    invoke-virtual {v0, v1}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 3149
    invoke-virtual {v1}, Landroid/window/WindowContext;->attachToDisplayArea()V

    .line 3151
    return-object v1
.end method

.method private static blacklist createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;
    .registers 14

    .line 3203
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3204
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 3205
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    .line 3207
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    .line 3208
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v4

    .line 3209
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    .line 3210
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    .line 3211
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3212
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v8

    .line 3213
    if-nez v8, :cond_2c

    .line 3214
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    move-object v10, v0

    goto :goto_2f

    .line 3215
    :cond_2c
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v10, v0

    .line 3216
    :goto_2f
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v12

    .line 3218
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 8

    .line 2553
    if-eqz p2, :cond_71

    .line 2554
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2555
    if-eqz p5, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v1, ": "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_21

    :cond_1f
    const-string p5, ""

    :goto_21
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    .line 2556
    if-eqz p3, :cond_41

    .line 2557
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Neither user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " nor current process has "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_5b

    .line 2558
    :cond_41
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " does not have "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_5b
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2562
    :cond_71
    return-void
.end method

.method private greylist-max-o enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .registers 9

    .line 2771
    if-eqz p2, :cond_7e

    .line 2772
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2773
    if-eqz p6, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, ": "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_21

    :cond_1f
    const-string p6, ""

    :goto_21
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    .line 2774
    if-eqz p3, :cond_41

    .line 2775
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Neither user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " nor current process has "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_5a

    .line 2776
    :cond_41
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " does not have "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_5a
    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2777
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " permission on "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2782
    :cond_7e
    return-void
.end method

.method private blacklist ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;
    .registers 10

    .line 3920
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3921
    array-length v1, p1

    new-array v1, v1, [Ljava/io/File;

    .line 3922
    const/4 v2, 0x0

    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_53

    .line 3923
    aget-object v3, p1, v2

    .line 3924
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_43

    .line 3926
    if-eqz p2, :cond_1f

    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3928
    :cond_1f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3931
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->mkdirs(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    .line 3937
    :cond_28
    goto :goto_43

    .line 3934
    :catch_29
    move-exception v4

    .line 3935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to ensure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ContextImpl"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3936
    const/4 v3, 0x0

    .line 3939
    :cond_43
    :goto_43
    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 3944
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->fixupAppDir(Ljava/io/File;)V

    .line 3946
    :cond_4e
    aput-object v3, v1, v2

    .line 3922
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3948
    :cond_53
    return-object v1
.end method

.method private static greylist-max-o ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 845
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v0

    .line 846
    const/16 v1, 0x5f9

    invoke-static {p0, v1, v0, p1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 840
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x1f9

    invoke-static {p0, v2, v0, v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;
    .registers 8

    .line 851
    const-string v0, "ContextImpl"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_72

    .line 852
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 854
    :try_start_c
    invoke-static {v1, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 855
    invoke-static {v1, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 856
    const/4 p1, -0x1

    if-eq p2, p1, :cond_18

    .line 857
    invoke-static {v1, p1, p2}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_18} :catch_19

    .line 865
    :cond_18
    goto :goto_37

    .line 859
    :catch_19
    move-exception p1

    .line 860
    iget p2, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EEXIST:I

    if-ne p2, v1, :cond_21

    goto :goto_37

    .line 863
    :cond_21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to ensure "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    :goto_37
    if-eqz p3, :cond_72

    .line 869
    :try_start_39
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p1

    .line 870
    const/16 p2, 0x8

    new-array p2, p2, [B

    .line 871
    iget-wide v1, p1, Landroid/system/StructStat;->st_ino:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v2, p1}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 872
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p2, v3}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_5a
    .catch Landroid/system/ErrnoException; {:try_start_39 .. :try_end_5a} :catch_5b

    .line 875
    goto :goto_72

    .line 873
    :catch_5b
    move-exception p1

    .line 874
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    :cond_72
    :goto_72
    return-object p0
.end method

.method static blacklist getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 982
    new-instance v0, Ljava/io/File;

    const-string v1, "code_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o getDatabasesDir()Ljava/io/File;
    .registers 5

    .line 1109
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_2a

    .line 1111
    const-string v1, "android"

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1112
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    goto :goto_2a

    .line 1114
    :cond_1d
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1117
    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1118
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private blacklist getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    .registers 6

    .line 3434
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3435
    return-object v1

    .line 3437
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 3438
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    .line 3439
    iget-object v3, v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mListener:Ljava/util/function/IntConsumer;

    if-ne v3, p1, :cond_1c

    .line 3440
    return-object v2

    .line 3437
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3443
    :cond_1f
    return-object v1
.end method

.method static greylist getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .registers 2

    .line 431
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 432
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 433
    move-object p0, v0

    goto :goto_1

    .line 435
    :cond_10
    check-cast p0, Landroid/app/ContextImpl;

    return-object p0
.end method

.method private blacklist getPackageManagerInner()Landroid/content/pm/PackageManager;
    .registers 3

    .line 464
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_c

    .line 466
    new-instance v1, Landroid/app/ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    return-object v1

    .line 468
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist getPreferencesDir()Ljava/io/File;
    .registers 5

    .line 788
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 790
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 792
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 793
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private greylist-max-o getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;"
        }
    .end annotation

    .line 679
    sget-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 680
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    .line 683
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 684
    sget-object v1, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 685
    if-nez v1, :cond_23

    .line 686
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 687
    sget-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_23
    return-object v1
.end method

.method private greylist-max-o getWallpaperManager()Landroid/app/WallpaperManager;
    .registers 2

    .line 1164
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private greylist-max-o initializeTheme()V
    .registers 4

    .line 531
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_c

    .line 532
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 534
    :cond_c
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 535
    return-void
.end method

.method private blacklist isAssociatedWithDisplay()Z
    .registers 2

    .line 3297
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 3305
    const/4 v0, 0x0

    return v0

    .line 3303
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist isSystemOrSystemUI(Landroid/content/Context;)Z
    .registers 4

    .line 2473
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2475
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2473
    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method static synthetic blacklist lambda$notifyOnDeviceChangedListeners$0(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V
    .registers 2

    .line 3451
    iget-object p0, p0, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mListener:Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private greylist-max-o makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 3899
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_15

    .line 3900
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3903
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/ContextImpl;->onPathAccess(Ljava/lang/String;)V

    .line 3904
    return-object v0

    .line 3906
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " contains a path separator"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    .registers 10

    .line 720
    new-instance v0, Landroid/app/ContextImpl$1;

    invoke-direct {v0, p2}, Landroid/app/ContextImpl$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 727
    nop

    .line 728
    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v0, p2, :cond_82

    aget-object v2, p0, v0

    .line 729
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ContextImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, -0x1

    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 733
    invoke-static {v2, v3}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 734
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 737
    if-eq v1, v4, :cond_4d

    .line 738
    add-int/lit8 v1, v1, 0x1

    .line 743
    :cond_4d
    goto :goto_7f

    .line 735
    :cond_4e
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clean up "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_67} :catch_67

    .line 740
    :catch_67
    move-exception v1

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to migrate "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    move v1, v4

    .line 728
    :goto_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 745
    :cond_82
    return v1
.end method

.method private static blacklist newApplicationContentResolver(Landroid/content/Context;Landroid/app/ActivityThread;)Landroid/app/ContextImpl$ApplicationContentResolver;
    .registers 3

    .line 3977
    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v0, p0, p1}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    return-object v0
.end method

.method private blacklist notifyOnDeviceChangedListeners(I)V
    .registers 7

    .line 3447
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3448
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    .line 3449
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    .line 3450
    iget-object v3, v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3452
    goto :goto_d

    .line 3454
    :cond_24
    monitor-exit v0

    .line 3455
    return-void

    .line 3454
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method private static blacklist onPathAccess(Ljava/lang/String;)V
    .registers 2

    .line 3912
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p0}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 3913
    return-void
.end method

.method private blacklist registerAttributionSourceIfNeeded(Landroid/content/AttributionSource;Z)Landroid/content/AttributionSource;
    .registers 3

    .line 3780
    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_a

    .line 3784
    :cond_9
    return-object p1

    .line 3781
    :cond_a
    :goto_a
    const-class p2, Landroid/permission/PermissionManager;

    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/permission/PermissionManager;

    .line 3782
    invoke-virtual {p2, p1}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 3781
    return-object p1
.end method

.method private blacklist registerAttributionSourceIfNeeded$ravenwood(Landroid/content/AttributionSource;Z)Landroid/content/AttributionSource;
    .registers 3

    .line 3789
    return-object p1
.end method

.method private greylist-max-o registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;
    .registers 19

    .line 1966
    nop

    .line 1967
    if-eqz p1, :cond_49

    .line 1968
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_27

    if-eqz p6, :cond_27

    .line 1969
    if-nez p5, :cond_13

    .line 1970
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    move-object v4, v0

    goto :goto_15

    .line 1969
    :cond_13
    move-object/from16 v4, p5

    .line 1972
    :goto_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1974
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    .line 1972
    const/4 v6, 0x1

    move-object v2, p1

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v6, v0

    goto :goto_4b

    .line 1976
    :cond_27
    if-nez p5, :cond_31

    .line 1977
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    move-object v5, v0

    goto :goto_33

    .line 1976
    :cond_31
    move-object/from16 v5, p5

    .line 1979
    :goto_33
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1980
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v6, v0

    goto :goto_4b

    .line 1967
    :cond_49
    const/4 v0, 0x0

    move-object v6, v0

    .line 1985
    :goto_4b
    if-nez p1, :cond_69

    :try_start_4d
    invoke-static {p3}, Landroid/app/BroadcastStickyCache;->useCache(Landroid/content/IntentFilter;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1986
    iget-object p1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1987
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 1989
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1986
    move v5, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/app/BroadcastStickyCache;->getIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    goto :goto_86

    .line 1995
    :cond_69
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1996
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1997
    invoke-static {p1}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1995
    move v9, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    .line 2001
    :goto_86
    if-eqz p1, :cond_9a

    .line 2002
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2005
    invoke-static {p1}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result p2

    .line 2006
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p3

    .line 2005
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_9a} :catch_9b

    .line 2008
    :cond_9a
    return-object p1

    .line 2009
    :catch_9b
    move-exception v0

    move-object p1, v0

    .line 2010
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist-max-o resolveUserId(Landroid/net/Uri;)I
    .registers 3

    .line 2682
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method private blacklist sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 29

    .line 1632
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1633
    if-eqz p7, :cond_50

    .line 1634
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_2b

    .line 1635
    if-nez p8, :cond_14

    .line 1636
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v7, v1

    goto :goto_16

    .line 1635
    :cond_14
    move-object/from16 v7, p8

    .line 1638
    :goto_16
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1639
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1640
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v8

    .line 1638
    const/4 v9, 0x0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object v5, v1

    goto :goto_52

    .line 1642
    :cond_2b
    if-nez p8, :cond_35

    .line 1643
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v8, v1

    goto :goto_37

    .line 1642
    :cond_35
    move-object/from16 v8, p8

    .line 1645
    :goto_37
    new-instance v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    .line 1646
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p7

    invoke-direct/range {v4 .. v10}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1647
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object v5, v1

    goto :goto_52

    .line 1633
    :cond_50
    const/4 v1, 0x0

    move-object v5, v1

    .line 1650
    :goto_52
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1652
    :try_start_5a
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1653
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1654
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1653
    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_87} :catch_89

    .line 1660
    nop

    .line 1661
    return-void

    .line 1658
    :catch_89
    move-exception v0

    .line 1659
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist setDisplay(Landroid/view/Display;)V
    .registers 2

    .line 3058
    iput-object p1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 3059
    if-eqz p1, :cond_b

    .line 3060
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->updateDeviceIdIfChanged(I)V

    .line 3062
    :cond_b
    invoke-direct {p0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 3063
    return-void
.end method

.method static greylist-max-o setFilePermissionsFromMode(Ljava/lang/String;II)V
    .registers 4

    .line 3881
    or-int/lit16 p2, p2, 0x1b0

    .line 3884
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_8

    .line 3885
    or-int/lit8 p2, p2, 0x4

    .line 3887
    :cond_8
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_e

    .line 3888
    or-int/lit8 p2, p2, 0x2

    .line 3894
    :cond_e
    const/4 p1, -0x1

    invoke-static {p0, p2, p1, p1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3895
    return-void
.end method

.method private greylist-max-o startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 12

    .line 2092
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2093
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2094
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2095
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2096
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 2097
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 2094
    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1

    .line 2098
    if-eqz p1, :cond_c1

    .line 2099
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "!"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_e2

    const-string p3, "Not allowed to start service "

    if-nez p2, :cond_9c

    .line 2103
    :try_start_3a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "!!"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_e2

    const-string v0, ": "

    if-nez p2, :cond_77

    .line 2107
    :try_start_48
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_55

    goto :goto_c1

    .line 2108
    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2109
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2108
    invoke-static {v4, p1}, Landroid/app/ServiceStartNotAllowedException;->newInstance(ZLjava/lang/String;)Landroid/app/ServiceStartNotAllowedException;

    move-result-object p1

    throw p1

    .line 2104
    :cond_77
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start service "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2106
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2100
    :cond_9c
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " without permission "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2102
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2113
    :cond_c1
    :goto_c1
    if-eqz p1, :cond_e1

    if-eqz v4, :cond_e1

    .line 2114
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e1

    .line 2115
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroid/app/StackTrace;

    const-string v0, "Last startServiceCommon() call for this service was made here"

    invoke-direct {p3, v0}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Landroid/app/Service;->setStartForegroundServiceStackTrace(Ljava/lang/String;Landroid/app/StackTrace;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_e1} :catch_e2

    .line 2120
    :cond_e1
    return-object p1

    .line 2121
    :catch_e2
    move-exception v0

    move-object p1, v0

    .line 2122
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist-max-o stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 6

    .line 2134
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2135
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2136
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2137
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2138
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 2136
    invoke-interface {v0, v1, p1, v2, p2}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p2

    .line 2139
    if-ltz p2, :cond_28

    .line 2143
    if-eqz p2, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1

    .line 2140
    :cond_28
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to stop service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_41} :catch_41

    .line 2144
    :catch_41
    move-exception p1

    .line 2145
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist updateDeviceIdIfChanged(I)V
    .registers 3

    .line 3342
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    if-eqz v0, :cond_5

    .line 3343
    return-void

    .line 3346
    :cond_5
    if-eqz p1, :cond_a

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    :cond_a
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-nez v0, :cond_f

    .line 3350
    return-void

    .line 3353
    :cond_f
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 3354
    if-eqz v0, :cond_32

    .line 3355
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result p1

    .line 3356
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-eq p1, v0, :cond_32

    .line 3357
    iput p1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3358
    iget-object p1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3359
    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->createAttributionSourceWithDeviceId(Landroid/content/AttributionSource;I)Landroid/content/AttributionSource;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3360
    iget p1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->notifyOnDeviceChangedListeners(I)V

    .line 3363
    :cond_32
    return-void
.end method

.method private blacklist updateResourceOverlayConstraints()V
    .registers 4

    .line 3067
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1d

    .line 3071
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3072
    :goto_10
    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->setOverlayConstraints(II)V

    .line 3074
    :cond_1d
    return-void
.end method

.method private greylist-max-o uriModeFlagToString(I)Ljava/lang/String;
    .registers 5

    .line 2746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2747
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    .line 2748
    const-string/jumbo v1, "read and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    :cond_f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_19

    .line 2751
    const-string/jumbo v1, "write and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    :cond_19
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_23

    .line 2754
    const-string/jumbo v1, "persistable and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    :cond_23
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_2d

    .line 2757
    const-string/jumbo v1, "prefix and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_41

    .line 2761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2762
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2764
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission mode flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateServiceIntent(Landroid/content/Intent;)V
    .registers 5

    .line 2048
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_58

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    .line 2049
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3f

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implicit intents with startService are not safe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2055
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2054
    const-string v0, "ContextImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 2050
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Intent must be explicit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2052
    throw v0

    .line 2058
    :cond_58
    :goto_58
    return-void
.end method

.method private greylist-max-o warnIfCallingFromSystemProcess()V
    .registers 3

    .line 2830
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_25

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling a method in the system process without a qualified user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2832
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2831
    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_25
    return-void
.end method


# virtual methods
.method public whitelist bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 15

    .line 2181
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2182
    if-eqz p3, :cond_18

    .line 2185
    invoke-static {p2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    .line 2186
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2185
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2183
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null instanceName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindIsolatedService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 15

    .line 2192
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2193
    if-eqz p3, :cond_18

    .line 2196
    invoke-virtual {p2}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    .line 2197
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2196
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2194
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null instanceName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 14

    .line 2167
    invoke-static {p2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    .line 2168
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2167
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 14

    .line 2174
    invoke-virtual {p2}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    .line 2175
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2174
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 13

    .line 2151
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2152
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    iget-object p3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2153
    invoke-virtual {p3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2152
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)Z
    .registers 13

    .line 2159
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2160
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    iget-object p3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {p3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 2161
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2160
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 15

    .line 2218
    if-eqz p4, :cond_12

    .line 2221
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2219
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 14

    .line 2203
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    iget-object p3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2204
    invoke-virtual {p3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 2203
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public blacklist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 15

    .line 2228
    if-eqz p4, :cond_12

    .line 2231
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2229
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z
    .registers 14

    .line 2210
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    iget-object p3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2211
    invoke-virtual {p3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 2210
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o canLoadUnsafeResources()Z
    .registers 3

    .line 3277
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 3278
    return v1

    .line 3280
    :cond_10
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public whitelist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 4

    .line 2529
    if-eqz p1, :cond_f

    .line 2533
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2533
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 2530
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 5

    .line 2709
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2709
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p1

    return p1
.end method

.method public whitelist checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object p1

    return-object p1
.end method

.method public whitelist checkCallingPermission(Ljava/lang/String;)I
    .registers 4

    .line 2516
    if-eqz p1, :cond_17

    .line 2520
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2521
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 2522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 2524
    :cond_15
    const/4 p1, -0x1

    return p1

    .line 2517
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 5

    .line 2687
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2688
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 2689
    nop

    .line 2690
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2689
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p1

    return p1

    .line 2692
    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist checkCallingUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2698
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2699
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 2700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object p1

    return-object p1

    .line 2702
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 2703
    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 2704
    return-object p1
.end method

.method public whitelist checkContentUriPermissionFull(Landroid/net/Uri;III)I
    .registers 11

    .line 2649
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2650
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2651
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2649
    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkContentUriPermissionFull(Landroid/net/Uri;IIII)I

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return p1

    .line 2652
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 2653
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist checkPermission(Ljava/lang/String;II)I
    .registers 5

    .line 2481
    if-eqz p1, :cond_43

    .line 2484
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2485
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p3, v0, :cond_36

    .line 2486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Treating renounced permission "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " as denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 p1, -0x1

    return p1

    .line 2489
    :cond_36
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 2491
    invoke-static {p1, p2, p3, v0}, Landroid/permission/PermissionManager;->checkPermission(Ljava/lang/String;III)I

    move-result p1

    return p1

    .line 2482
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "permission is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .registers 5

    .line 2497
    if-eqz p1, :cond_3b

    .line 2500
    iget-object p4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {p4, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_36

    .line 2501
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p4

    if-ne p2, p4, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p4

    if-ne p3, p4, :cond_36

    .line 2502
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Treating renounced permission "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " as denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const/4 p1, -0x1

    return p1

    .line 2505
    :cond_36
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 2498
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "permission is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkSelfPermission(Ljava/lang/String;)I
    .registers 4

    .line 2539
    if-eqz p1, :cond_37

    .line 2542
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContextImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    const/4 p1, -0x1

    return p1

    .line 2547
    :cond_2a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 2540
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;III)I
    .registers 12

    .line 2638
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2639
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2640
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2638
    const/4 v6, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 2641
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 2642
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .registers 13

    .line 2673
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2674
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2675
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2673
    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 2676
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 2677
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 9

    .line 2727
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2728
    if-eqz p2, :cond_d

    .line 2729
    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_e

    .line 2731
    :cond_d
    return v1

    .line 2734
    :cond_e
    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1b

    .line 2735
    if-eqz p3, :cond_1a

    .line 2736
    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_1b

    .line 2738
    :cond_1a
    return v1

    .line 2741
    :cond_1b
    if-eqz p1, :cond_22

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p1

    goto :goto_23

    .line 2742
    :cond_22
    const/4 p1, -0x1

    .line 2741
    :goto_23
    return p1
.end method

.method public whitelist checkUriPermissions(Ljava/util/List;III)[I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;III)[I"
        }
    .end annotation

    .line 2662
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2663
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    .line 2662
    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    .line 2664
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 2665
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist clearWallpaper()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1160
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 1161
    return-void
.end method

.method public blacklist closeSystemDialogs()V
    .registers 4

    .line 3961
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3962
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 3963
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3964
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3965
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3966
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3967
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3968
    return-void
.end method

.method public greylist-max-o createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2863
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2864
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createApplicationContextAsUser(Landroid/content/pm/ApplicationInfo;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4

    .line 3234
    new-instance v0, Landroid/content/ContextParams$Builder;

    iget-object v1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-direct {v0, v1}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 3235
    invoke-virtual {v0, p1}, Landroid/content/ContextParams$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object p1

    .line 3234
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 19

    .line 2992
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_7c

    .line 2996
    iget-boolean v2, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    const/4 v15, 0x1

    if-eqz v2, :cond_25

    .line 2999
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 3000
    iget-object v3, v1, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/high16 v4, 0x20000000

    invoke-virtual {v2, v3, v4, v15}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 3002
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3003
    move-object/from16 v16, v2

    goto :goto_27

    .line 2996
    :cond_25
    move-object/from16 v16, v0

    .line 3006
    :goto_27
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3007
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v1, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v1, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3010
    iput-boolean v15, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3012
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v2

    .line 3013
    iget-boolean v3, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v3, :cond_5c

    .line 3014
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    :goto_5d
    move-object v8, v3

    .line 3015
    iget-object v5, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v6, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v7, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 3016
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    iget-object v1, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3017
    invoke-virtual {v1}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v11

    .line 3015
    move-object/from16 v9, v16

    invoke-static/range {v5 .. v11}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3018
    return-object v0

    .line 2993
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "overrideConfiguration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 17

    .line 3226
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3227
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContextParams;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3226
    return-object v0
.end method

.method public whitelist createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;
    .registers 5

    .line 2954
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 2955
    :catch_9
    move-exception p2

    .line 2956
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Own package not found for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2957
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": package="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist createContextForSdkInSandbox(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2895
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2899
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ltz v0, :cond_16

    .line 2900
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_1a

    :cond_16
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2901
    :goto_1a
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createApplicationContextAsUser(Landroid/content/pm/ApplicationInfo;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/ContextImpl;

    .line 2904
    iget-object p2, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 2907
    return-object p1

    .line 2896
    :cond_28
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "API can only be called from SdkSandbox process"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2963
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2965
    return-object v1

    .line 2968
    :cond_11
    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v7}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v11

    .line 2969
    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v7}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2971
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2972
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v1, Landroid/app/ContextImpl;->mFlags:I

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2975
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    move-object v3, v2

    iget-object v2, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v4, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2977
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2979
    invoke-virtual {v5}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2980
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2981
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2982
    iget-boolean v8, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v8, :cond_6d

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6e

    :cond_6d
    const/4 v8, 0x0

    :goto_6e
    iget-object v9, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2984
    invoke-virtual {v9}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    iget-object v1, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2986
    invoke-virtual {v1}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v12

    .line 2975
    const/4 v9, 0x0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v15

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2987
    return-object v0
.end method

.method public whitelist createCredentialProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 3249
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v10, v0, 0x10

    .line 3251
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3252
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3251
    return-object v0
.end method

.method public whitelist createDeviceContext(I)Landroid/content/Context;
    .registers 17

    .line 3078
    move/from16 v13, p1

    if-eqz v13, :cond_2e

    .line 3079
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 3080
    if-eqz v0, :cond_15

    invoke-virtual {v0, v13}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2e

    .line 3081
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid ID of the default device or any virtual device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3086
    :cond_2e
    :goto_2e
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3087
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3089
    invoke-direct {v0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 3090
    return-object v0
.end method

.method public whitelist createDeviceProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 3240
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    or-int/lit8 v10, v0, 0x8

    .line 3242
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3243
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3242
    return-object v0
.end method

.method public whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 18

    .line 3023
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    if-eqz v15, :cond_74

    .line 3027
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3028
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v1, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v1, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3031
    invoke-virtual {v15}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 3034
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 3035
    invoke-virtual {v15}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/high16 v4, 0x20000000

    const/4 v10, 0x1

    invoke-virtual {v7, v3, v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 3038
    iget-object v3, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v4, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3039
    invoke-virtual {v15}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    iget-object v2, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3040
    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v9

    .line 3038
    invoke-static/range {v3 .. v9}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3041
    invoke-direct {v0, v15}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3044
    iget v1, v1, Landroid/app/ContextImpl;->mContextType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6b

    .line 3045
    goto :goto_6c

    :cond_6b
    move v2, v10

    :goto_6c
    iput v2, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3049
    iput-boolean v10, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3053
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3054
    return-object v0

    .line 3024
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2913
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2919
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const-string/jumbo v0, "system"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "android"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_97

    .line 2927
    :cond_17
    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    or-int v3, p2, v3

    .line 2928
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2927
    invoke-virtual {v0, v15, v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v3

    .line 2929
    if-eqz v3, :cond_78

    .line 2930
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2931
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2934
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v2

    .line 2935
    iget-boolean v4, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v4, :cond_5c

    .line 2936
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5d

    :cond_5c
    const/4 v4, 0x0

    :goto_5d
    move-object v8, v4

    .line 2938
    iget-object v5, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 2939
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 2938
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    invoke-static/range {v5 .. v11}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2940
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_78

    .line 2941
    return-object v0

    .line 2946
    :cond_78
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2922
    :cond_97
    :goto_97
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2923
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2922
    return-object v0
.end method

.method public blacklist createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;
    .registers 3

    .line 3157
    if-eqz p2, :cond_b

    .line 3160
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object p1

    return-object p1

    .line 3158
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Display must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 4

    .line 3097
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3103
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1

    .line 3098
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please call this API with context associated with a display instance, such as Activity or context created via Context#createDisplayContext(Display), or try to invoke Context#createWindowContext(Display, int, Bundle)"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 4

    .line 3110
    if-eqz p1, :cond_7

    .line 3113
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1

    .line 3111
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Display must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;
    .registers 18

    .line 3175
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3176
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3180
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3181
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3183
    invoke-static {v0}, Landroid/app/ContextImpl;->createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3184
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3187
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3190
    return-object v0
.end method

.method public whitelist databaseList()[Ljava/lang/String;
    .registers 2

    .line 1105
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist deleteDatabase(Ljava/lang/String;)Z
    .registers 2

    .line 1072
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1073
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1074
    :catch_9
    move-exception p1

    .line 1076
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist deleteFile(Ljava/lang/String;)Z
    .registers 3

    .line 831
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 832
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public whitelist deleteSharedPreferences(Ljava/lang/String;)Z
    .registers 5

    .line 770
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 771
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 772
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 775
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v2

    .line 776
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 779
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 782
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_26

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    monitor-exit v0

    return p1

    .line 783
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist destroy()V
    .registers 3

    .line 3956
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3957
    return-void
.end method

.method public whitelist enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2586
    nop

    .line 2587
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 2589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2586
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2591
    return-void
.end method

.method public whitelist enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11

    .line 2804
    nop

    .line 2806
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    .line 2807
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2804
    const/4 v3, 0x1

    move-object v0, p0

    move-object v5, p1

    move v1, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2808
    return-void
.end method

.method public whitelist enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2576
    nop

    .line 2577
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 2579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2576
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2581
    return-void
.end method

.method public whitelist enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11

    .line 2795
    nop

    .line 2796
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    .line 2798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2795
    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    move v1, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2799
    return-void
.end method

.method public whitelist enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11

    .line 2567
    nop

    .line 2568
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 2567
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2572
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 13

    .line 2787
    nop

    .line 2788
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    .line 2787
    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    move v4, p3

    move v1, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2790
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 8

    .line 2814
    nop

    .line 2815
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result p3

    .line 2814
    move p2, p6

    const/4 p4, 0x0

    move-object p6, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2822
    return-void
.end method

.method public whitelist fileList()[Ljava/lang/String;
    .registers 2

    .line 1034
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getActivityToken()Landroid/os/IBinder;
    .registers 3

    .line 3851
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public whitelist getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 491
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 492
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 491
    :goto_11
    return-object v0
.end method

.method public whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 590
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 591
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 593
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 441
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAssociatedDisplayId()I
    .registers 2

    .line 3314
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 584
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 572
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 3522
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    return-object v0
.end method

.method public blacklist getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 3534
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    return-object v0
.end method

.method public greylist-max-o getBasePackageName()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist getCacheDir()Ljava/io/File;
    .registers 5

    .line 957
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 959
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 961
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 962
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 540
    iget-object v0, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_16

    :cond_7
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_16

    :cond_12
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public whitelist getCodeCacheDir()Ljava/io/File;
    .registers 4

    .line 968
    iget-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 969
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    if-nez v1, :cond_11

    .line 970
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    .line 972
    :cond_11
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_code_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 973
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 3546
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    return-object v0
.end method

.method public whitelist getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 473
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public blacklist getCrateDir(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 894
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "invalidated crateId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 895
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "crates"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 896
    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 897
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p1

    .line 899
    iget-object v1, p0, Landroid/app/ContextImpl;->mCratesDirLock:Ljava/lang/Object;

    monitor-enter v1

    .line 900
    :try_start_26
    iget-object v2, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    if-nez v2, :cond_30

    .line 901
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    .line 903
    :cond_30
    iget-object v0, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    .line 904
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3f

    .line 906
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    .line 907
    invoke-static {p1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 904
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public whitelist getDataDir()Ljava/io/File;
    .registers 5

    .line 3465
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_74

    .line 3466
    nop

    .line 3467
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3468
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 3469
    :cond_12
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3470
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 3472
    :cond_1f
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 3475
    :goto_25
    if-eqz v0, :cond_57

    .line 3476
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_56

    .line 3477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data directory doesn\'t exist for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "ContextImpl"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3480
    :cond_56
    return-object v0

    .line 3482
    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data directory found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3483
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3486
    :cond_74
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package details found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3487
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 1084
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_3e

    .line 1085
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1086
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1087
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1088
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1091
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1095
    :cond_3d
    goto :goto_46

    .line 1096
    :cond_3e
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    .line 1097
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1100
    :goto_46
    return-object v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 3396
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    return v0
.end method

.method public whitelist getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 3494
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 3495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3496
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3497
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_30

    .line 3498
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 3499
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 3502
    :cond_30
    return-object p1
.end method

.method public whitelist getDisplay()Landroid/view/Display;
    .registers 3

    .line 3285
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3293
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3286
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tried to obtain display from a Context not associated with one. Only visual Contexts (such as Activity or one created with Context#createWindowContext) or ones created with Context#createDisplayContext are associated with displays. Other types of Contexts are typically related to background entities and may return an arbitrary display."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .registers 2

    .line 3459
    iget-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 3329
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 3330
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist getDisplayNoVerify()Landroid/view/Display;
    .registers 4

    .line 3319
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_e

    .line 3320
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3324
    :cond_e
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getExternalCacheDir()Ljava/io/File;
    .registers 3

    .line 988
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getExternalCacheDirs()[Ljava/io/File;
    .registers 4

    .line 994
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 999
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1000
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 924
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    .line 925
    if-eqz p1, :cond_d

    array-length v0, p1

    if-lez v0, :cond_d

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public whitelist getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 4

    .line 930
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 932
    if-eqz p1, :cond_15

    .line 933
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 935
    :cond_15
    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 936
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public whitelist getExternalMediaDirs()[Ljava/io/File;
    .registers 4

    .line 1005
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 1007
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1008
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 1023
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getFilesDir()Ljava/io/File;
    .registers 5

    .line 884
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 886
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 888
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 889
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o getIApplicationThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 2245
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 485
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 479
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMainThreadHandler()Landroid/os/Handler;
    .registers 2

    .line 2259
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNoBackupFilesDir()Ljava/io/File;
    .registers 5

    .line 913
    iget-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 915
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "no_backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    .line 917
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 918
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist getObbDir()Ljava/io/File;
    .registers 3

    .line 942
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getObbDirs()[Ljava/io/File;
    .registers 4

    .line 948
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 950
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 951
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 565
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final greylist getOuterContext()Landroid/content/Context;
    .registers 2

    .line 3845
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPackageCodePath()Ljava/lang/String;
    .registers 3

    .line 607
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 608
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 610
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0

    .line 458
    :cond_7
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPackageManagerInner()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 459
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 546
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 547
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :cond_b
    const-string v0, "android"

    return-object v0
.end method

.method public whitelist getPackageResourcePath()Ljava/lang/String;
    .registers 3

    .line 599
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 600
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getParams()Landroid/content/ContextParams;
    .registers 2

    .line 578
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    return-object v0
.end method

.method public blacklist getPermissionRequestState(Ljava/lang/String;)I
    .registers 5

    .line 2596
    const-string v0, "Permission name can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2597
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 2598
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2599
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v2

    .line 2598
    invoke-virtual {v0, v1, p1, v2}, Landroid/permission/PermissionManager;->getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist getPreloadsFileCache()Ljava/io/File;
    .registers 2

    .line 1017
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProcessToken()Landroid/os/IBinder;
    .registers 2

    .line 2252
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final greylist getReceiverRestrictedContext()Landroid/content/Context;
    .registers 3

    .line 3830
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 3831
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    return-object v0

    .line 3833
    :cond_7
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getRegisteredIntentFilters(Landroid/content/BroadcastReceiver;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/BroadcastReceiver;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_24

    .line 2033
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2034
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 2033
    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->findRegisteredReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;)Landroid/content/IIntentReceiver;

    move-result-object p1

    .line 2036
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2037
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;

    move-result-object p1

    .line 2038
    if-nez p1, :cond_1d

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    :cond_1d
    return-object p1

    .line 2039
    :catch_1e
    move-exception p1

    .line 2040
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2043
    :cond_24
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported in system context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 447
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public blacklist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;
    .registers 11

    .line 2239
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
    .registers 7

    .line 642
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 643
    :try_start_3
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v1

    .line 644
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SharedPreferencesImpl;

    .line 645
    if-nez v2, :cond_6c

    .line 646
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 647
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_62

    .line 648
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 649
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 650
    if-eqz v2, :cond_5a

    .line 655
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_62

    .line 656
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedPreferences in credential encrypted storage are not available until after user (id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 658
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ") is unlocked"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 651
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SharedPreferences cannot be accessed if UserManager is not available. (e.g. from inside an isolated process)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :cond_62
    :goto_62
    new-instance v2, Landroid/app/SharedPreferencesImpl;

    invoke-direct {v2, p1, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    .line 663
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    monitor-exit v0

    return-object v2

    .line 666
    :cond_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_7f

    .line 667
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_7b

    .line 668
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0xb

    if-ge p1, p2, :cond_7e

    .line 672
    :cond_7b
    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 674
    :cond_7e
    return-object v2

    .line 666
    :catchall_7f
    move-exception p1

    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p1
.end method

.method public whitelist getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 6

    .line 618
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_11

    .line 620
    if-nez p1, :cond_11

    .line 621
    const-string/jumbo p1, "null"

    .line 626
    :cond_11
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 627
    :try_start_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    if-nez v1, :cond_1f

    .line 628
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    .line 630
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 631
    if-nez v1, :cond_32

    .line 632
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 633
    iget-object v2, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_38

    .line 636
    invoke-virtual {p0, v1, p2}, Landroid/app/ContextImpl;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    .line 635
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public blacklist getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1029
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 2419
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2421
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Landroid/app/ContextImpl;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_60

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access visual service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2423
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a non-visual Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2424
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2429
    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2430
    const-string v2, "WindowManager should be accessed from Activity or other visual Context. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    invoke-static {v2, v1}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContextImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2434
    :cond_60
    invoke-static {p0, p1}, Landroid/app/SystemServiceRegistry;->getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2440
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    .line 516
    iget-object v0, p0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_b

    .line 518
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    monitor-exit v0

    return-object v1

    .line 521
    :cond_b
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 522
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 521
    invoke-static {v1, v2}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v1

    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 523
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 525
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    monitor-exit v0

    return-object v1

    .line 526
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public greylist-max-o getThemeResId()I
    .registers 3

    .line 508
    iget-object v0, p0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    monitor-exit v0

    return v1

    .line 510
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 3509
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 3516
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1124
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperDesiredMinimumHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1142
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaperDesiredMinimumWidth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1136
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 3856
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 3861
    const/4 v0, 0x0

    return-object v0

    .line 3859
    :pswitch_7
    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    return-object v0

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 10

    .line 2605
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2606
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2607
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2605
    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2610
    nop

    .line 2611
    return-void

    .line 2608
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 2609
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 3811
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p1, p2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3812
    return-void
.end method

.method public blacklist isConfigurationContext()Z
    .registers 2

    .line 2463
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist isCredentialProtectedStorage()Z
    .registers 2

    .line 3271
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isDeviceProtectedStorage()Z
    .registers 2

    .line 3265
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 3259
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isUiContext()Z
    .registers 3

    .line 2446
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_a

    .line 2456
    return v1

    .line 2450
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 2453
    :pswitch_9
    return v1

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1061
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 1062
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1063
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 1064
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 1065
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-static {v1, p2, p1}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    monitor-exit v0

    return p1

    .line 1066
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public whitelist moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .line 750
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 751
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 752
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 754
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 755
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-static {v1, v2, v3}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result v1

    .line 756
    if-lez v1, :cond_28

    .line 759
    nop

    .line 760
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v2

    .line 761
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_28
    const/4 p1, -0x1

    if-eq v1, p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    monitor-exit v0

    return p1

    .line 765
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 801
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public whitelist openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 807
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 808
    const v0, 0x8000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    .line 809
    :goto_d
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 811
    :try_start_15
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 812
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_21} :catch_22

    .line 813
    return-object v2

    .line 814
    :catch_22
    move-exception v2

    .line 817
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 818
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 819
    nop

    .line 820
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 819
    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 823
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 824
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 825
    return-object v2
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    .line 1039
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7

    .line 1045
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 1046
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1047
    nop

    .line 1048
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_f

    .line 1049
    const/high16 v0, 0x30000000

    goto :goto_11

    .line 1048
    :cond_f
    const/high16 v0, 0x10000000

    .line 1051
    :goto_11
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_17

    .line 1052
    or-int/lit8 v0, v0, 0x10

    .line 1054
    :cond_17
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 1055
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-static {p1, p2, p4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 1056
    return-object p3
.end method

.method public whitelist peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1130
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3821
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    iget p1, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_19

    iget-object p1, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    instance-of p1, p1, Landroid/window/WindowTokenClient;

    if-eqz p1, :cond_19

    .line 3824
    iget-object p1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {p1, p0}, Landroid/app/ActivityThread;->onSystemUiContextCleanup(Landroid/app/ContextImpl;)V

    .line 3826
    :cond_19
    return-void
.end method

.method public blacklist rebindService(Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)V
    .registers 5

    .line 2377
    if-eqz p1, :cond_5f

    .line 2380
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_57

    .line 2383
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2384
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 2383
    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2385
    if-eqz v0, :cond_3e

    .line 2388
    new-instance p1, Landroid/app/BindUpdateInfo;

    invoke-direct {p1}, Landroid/app/BindUpdateInfo;-><init>()V

    .line 2389
    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Landroid/app/BindUpdateInfo;->connection:Landroid/os/IBinder;

    .line 2390
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/BindUpdateInfo;->unbind:Z

    .line 2391
    invoke-virtual {p2}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/app/BindUpdateInfo;->flags:J

    .line 2392
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2393
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2395
    :try_start_2f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/app/IActivityManager;->updateServiceBindings(Ljava/util/List;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_38

    .line 2398
    nop

    .line 2399
    return-void

    .line 2396
    :catch_38
    move-exception p1

    .line 2397
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2386
    :cond_3e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceConnection not currently bound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2381
    :cond_57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not supported in system context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2378
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ServiceConnection is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerDeviceIdChangeListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6

    .line 3402
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3403
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3405
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3406
    :try_start_e
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 3412
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1f

    .line 3413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    .line 3415
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    invoke-direct {v2, p2, p1}, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;-><init>(Ljava/util/function/IntConsumer;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3416
    monitor-exit v0

    .line 3417
    return-void

    .line 3407
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to call registerDeviceIdChangeListener() on a previously registered listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3416
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_33

    throw p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4

    .line 1912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .registers 10

    .line 1918
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 13

    .line 1924
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1925
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1924
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 14

    .line 1931
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1932
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1931
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 14

    .line 1952
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1953
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1952
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 15

    .line 1959
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1960
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1959
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11

    .line 1938
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 13

    .line 1945
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o reloadSharedPreferences()V
    .registers 7

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    const-class v1, Landroid/app/ContextImpl;

    monitor-enter v1

    .line 698
    :try_start_8
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v2

    .line 699
    const/4 v3, 0x0

    move v4, v3

    :goto_e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    .line 700
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SharedPreferencesImpl;

    .line 701
    if-eqz v5, :cond_1f

    .line 702
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 705
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_37

    .line 708
    nop

    :goto_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_36

    .line 709
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v1}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 708
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 711
    :cond_36
    return-void

    .line 705
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public whitelist removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1812
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1813
    if-eqz v0, :cond_17

    .line 1814
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1815
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v1

    .line 1818
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1819
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1820
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1819
    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1823
    nop

    .line 1824
    return-void

    .line 1821
    :catch_2d
    move-exception p1

    .line 1822
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1896
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1897
    if-eqz v0, :cond_17

    .line 1898
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1899
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v1

    .line 1902
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1903
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1904
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 1903
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1907
    nop

    .line 1908
    return-void

    .line 1905
    :catch_2d
    move-exception p1

    .line 1906
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist revokeSelfPermissionsOnKill(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2510
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 2511
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2510
    invoke-virtual {v0, v1, v2}, Landroid/permission/PermissionControllerManager;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;)V

    .line 2512
    return-void
.end method

.method public whitelist revokeUriPermission(Landroid/net/Uri;I)V
    .registers 9

    .line 2616
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2617
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2618
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2616
    const/4 v2, 0x0

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2621
    nop

    .line 2622
    return-void

    .line 2619
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 2620
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 10

    .line 2627
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2628
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2629
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2627
    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2632
    nop

    .line 2633
    return-void

    .line 2630
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 2631
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method final greylist scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3816
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    return-void
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;)V
    .registers 19

    .line 1308
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1309
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1311
    :try_start_f
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1312
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1313
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1312
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_34} :catch_36

    .line 1318
    nop

    .line 1319
    return-void

    .line 1316
    :catch_36
    move-exception v0

    .line 1317
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 20

    .line 1323
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1324
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1325
    if-nez p2, :cond_14

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_1b

    .line 1326
    :cond_14
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v9, v1

    :goto_1b
    nop

    .line 1328
    :try_start_1c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1329
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1330
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1333
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1329
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_40} :catch_42

    .line 1336
    nop

    .line 1337
    return-void

    .line 1334
    :catch_42
    move-exception v0

    .line 1335
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 21

    .line 1435
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1436
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1437
    if-nez p2, :cond_14

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_1b

    .line 1438
    :cond_14
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v9, v1

    :goto_1b
    nop

    .line 1440
    :try_start_1c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1441
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1442
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1444
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1441
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v12, p3

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_41} :catch_43

    .line 1447
    nop

    .line 1448
    return-void

    .line 1445
    :catch_43
    move-exception v0

    .line 1446
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21

    .line 1407
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1408
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1409
    const/4 v1, 0x0

    if-nez p2, :cond_16

    move-object v2, v1

    goto :goto_1c

    .line 1410
    :cond_16
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v2, v5

    .line 1411
    :goto_1c
    nop

    .line 1412
    if-eqz v13, :cond_31

    .line 1413
    const-string v1, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1415
    if-eqz v1, :cond_28

    .line 1416
    move-object v2, v1

    .line 1418
    :cond_28
    const-string v1, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v9, v2

    goto :goto_33

    .line 1412
    :cond_31
    move-object v10, v1

    move-object v9, v2

    .line 1422
    :goto_33
    :try_start_33
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1423
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1424
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1427
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1423
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_55} :catch_57

    .line 1430
    nop

    .line 1431
    return-void

    .line 1428
    :catch_57
    move-exception v0

    .line 1429
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 21

    .line 1540
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1542
    :try_start_c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1543
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1544
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1543
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v17

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_35} :catch_37

    .line 1549
    nop

    .line 1550
    return-void

    .line 1547
    :catch_37
    move-exception v0

    .line 1548
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5

    .line 1555
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1556
    return-void
.end method

.method public greylist-max-o sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 22

    .line 1579
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1580
    if-nez p3, :cond_11

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_18

    .line 1581
    :cond_11
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    move-object v9, v1

    :goto_18
    nop

    .line 1583
    :try_start_19
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1584
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1585
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1584
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v12

    move/from16 v12, p4

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_40} :catch_42

    .line 1591
    nop

    .line 1592
    return-void

    .line 1589
    :catch_42
    move-exception v0

    .line 1590
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 22

    .line 1561
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1562
    if-nez p3, :cond_11

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_18

    .line 1563
    :cond_11
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    move-object v9, v1

    :goto_18
    nop

    .line 1565
    :try_start_19
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1566
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1567
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1566
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v13

    move-object/from16 v13, p4

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_40} :catch_42

    .line 1573
    nop

    .line 1574
    return-void

    .line 1571
    :catch_42
    move-exception v0

    .line 1572
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 21

    .line 1375
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1377
    :try_start_c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1378
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1379
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1378
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    move-object/from16 v9, p3

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_34} :catch_36

    .line 1385
    nop

    .line 1386
    return-void

    .line 1383
    :catch_36
    move-exception v0

    .line 1384
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 20

    .line 1341
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1342
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1344
    :try_start_f
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1345
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1346
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1349
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1345
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p2

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_37

    .line 1352
    nop

    .line 1353
    return-void

    .line 1350
    :catch_37
    move-exception v0

    .line 1351
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1359
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1361
    :try_start_f
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1362
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1363
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1366
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1362
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_36} :catch_38

    .line 1369
    nop

    .line 1370
    return-void

    .line 1367
    :catch_38
    move-exception v0

    .line 1368
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 23

    .line 1391
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1392
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1394
    :try_start_f
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1395
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1396
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1399
    if-nez p5, :cond_26

    const/4 v5, 0x0

    goto :goto_2a

    :cond_26
    invoke-virtual/range {p5 .. p5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    :goto_2a
    move-object v13, v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1395
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3f} :catch_41

    .line 1402
    nop

    .line 1403
    return-void

    .line 1400
    :catch_41
    move-exception v0

    .line 1401
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 22

    .line 1708
    nop

    .line 1709
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1710
    invoke-static/range {p4 .. p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_f

    .line 1709
    :cond_d
    const/4 v0, -0x1

    move v5, v0

    .line 1712
    :goto_f
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v9, p2

    move-object v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v11}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1714
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 1453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1454
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    .line 1497
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1499
    return-void
.end method

.method greylist-max-o sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 27

    .line 1505
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1506
    nop

    .line 1507
    const/4 v1, 0x0

    if-eqz p4, :cond_55

    .line 1508
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_30

    .line 1509
    if-nez p5, :cond_19

    .line 1510
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v7, v2

    goto :goto_1b

    .line 1509
    :cond_19
    move-object/from16 v7, p5

    .line 1512
    :goto_1b
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1513
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1514
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v8

    .line 1512
    const/4 v9, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v4 .. v9}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v2

    move-object v5, v2

    goto :goto_56

    .line 1516
    :cond_30
    if-nez p5, :cond_3a

    .line 1517
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    goto :goto_3c

    .line 1516
    :cond_3a
    move-object/from16 v8, p5

    .line 1519
    :goto_3c
    new-instance v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    .line 1520
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    invoke-direct/range {v4 .. v10}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1521
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    move-object v5, v2

    goto :goto_56

    .line 1507
    :cond_55
    move-object v5, v1

    .line 1524
    :goto_56
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1525
    if-nez p2, :cond_62

    move-object v9, v1

    goto :goto_69

    .line 1526
    :cond_62
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v9, v1

    :goto_69
    nop

    .line 1528
    :try_start_6a
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1529
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1530
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1532
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1529
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v12, p3

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v13, p9

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_92} :catch_94

    .line 1535
    nop

    .line 1536
    return-void

    .line 1533
    :catch_94
    move-exception v0

    .line 1534
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18

    .line 1479
    const/4 v3, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1481
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21

    .line 1458
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1459
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1460
    if-nez p2, :cond_14

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_1b

    .line 1461
    :cond_14
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v9, v1

    :goto_1b
    nop

    .line 1463
    :try_start_1c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1464
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1465
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1464
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v13, p3

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_41} :catch_43

    .line 1471
    nop

    .line 1472
    return-void

    .line 1469
    :catch_43
    move-exception v0

    .line 1470
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    .line 1488
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1490
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    .line 1667
    nop

    .line 1668
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1669
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p3

    move v4, p3

    goto :goto_f

    .line 1668
    :cond_d
    const/4 p3, -0x1

    move v4, p3

    .line 1671
    :goto_f
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1674
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 21

    .line 1606
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1608
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 24

    .line 1614
    if-nez p3, :cond_5

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_c

    .line 1615
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    move-object v5, v0

    .line 1616
    :goto_c
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1618
    return-void
.end method

.method public whitelist sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20

    .line 1598
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1600
    return-void
.end method

.method public blacklist sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 23

    .line 1624
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1626
    return-void
.end method

.method public blacklist sendOrderedBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 21

    .line 1681
    nop

    .line 1682
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1683
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p3

    move v4, p3

    goto :goto_f

    .line 1682
    :cond_d
    const/4 p3, -0x1

    move v4, p3

    .line 1685
    :goto_f
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1688
    return-void
.end method

.method public blacklist sendOrderedBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 24

    .line 1695
    nop

    .line 1696
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1697
    invoke-static/range {p4 .. p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    goto :goto_f

    .line 1696
    :cond_d
    const/4 v0, -0x1

    move v6, v0

    .line 1699
    :goto_f
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v12}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1702
    return-void
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1719
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1720
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1722
    :try_start_f
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1723
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1724
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1726
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1723
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_34} :catch_36

    .line 1729
    nop

    .line 1730
    return-void

    .line 1727
    :catch_36
    move-exception v0

    .line 1728
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1758
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1759
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1761
    :try_start_f
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1762
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1763
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1765
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1762
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v13, p2

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_37

    .line 1768
    nop

    .line 1769
    return-void

    .line 1766
    :catch_37
    move-exception v0

    .line 1767
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1829
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1831
    :try_start_c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1832
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1833
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1835
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1832
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v17, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v17

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_35} :catch_37

    .line 1838
    nop

    .line 1839
    return-void

    .line 1836
    :catch_37
    move-exception v0

    .line 1837
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1844
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1846
    :try_start_c
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1847
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1848
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1847
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v13, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v13

    move-object/from16 v13, p3

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_34} :catch_36

    .line 1853
    nop

    .line 1854
    return-void

    .line 1851
    :catch_36
    move-exception v0

    .line 1852
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1777
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1778
    nop

    .line 1779
    if-eqz p2, :cond_54

    .line 1780
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_2f

    .line 1781
    if-nez p3, :cond_18

    .line 1782
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v7, v1

    goto :goto_1a

    .line 1781
    :cond_18
    move-object/from16 v7, p3

    .line 1784
    :goto_1a
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1785
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1786
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v8

    .line 1784
    const/4 v9, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object v5, v1

    goto :goto_56

    .line 1788
    :cond_2f
    if-nez p3, :cond_39

    .line 1789
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v8, v1

    goto :goto_3b

    .line 1788
    :cond_39
    move-object/from16 v8, p3

    .line 1791
    :goto_3b
    new-instance v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    .line 1792
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1793
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object v5, v1

    goto :goto_56

    .line 1779
    :cond_54
    const/4 v1, 0x0

    move-object v5, v1

    .line 1796
    :goto_56
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1798
    :try_start_5e
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1799
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1800
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1803
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v16

    .line 1799
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_85} :catch_87

    .line 1806
    nop

    .line 1807
    return-void

    .line 1804
    :catch_87
    move-exception v0

    .line 1805
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1862
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1863
    if-eqz p3, :cond_50

    .line 1864
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_2b

    .line 1865
    if-nez p4, :cond_14

    .line 1866
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v7, v1

    goto :goto_16

    .line 1865
    :cond_14
    move-object/from16 v7, p4

    .line 1868
    :goto_16
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1869
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1870
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v8

    .line 1868
    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object v5, v1

    goto :goto_52

    .line 1872
    :cond_2b
    if-nez p4, :cond_35

    .line 1873
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v8, v1

    goto :goto_37

    .line 1872
    :cond_35
    move-object/from16 v8, p4

    .line 1875
    :goto_37
    new-instance v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    .line 1876
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p3

    invoke-direct/range {v4 .. v10}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1877
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v1

    move-object v5, v1

    goto :goto_52

    .line 1863
    :cond_50
    const/4 v1, 0x0

    move-object v5, v1

    .line 1880
    :goto_52
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1882
    :try_start_5a
    invoke-virtual {v3, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1883
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1884
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1883
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_83} :catch_85

    .line 1890
    nop

    .line 1891
    return-void

    .line 1888
    :catch_85
    move-exception v0

    .line 1889
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V
    .registers 2

    .line 3528
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 3529
    return-void
.end method

.method public blacklist setAutofillOptions(Landroid/content/AutofillOptions;)V
    .registers 2

    .line 3540
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    .line 3541
    return-void
.end method

.method public blacklist setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .registers 2

    .line 3552
    iput-object p1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3553
    return-void
.end method

.method final greylist setOuterContext(Landroid/content/Context;)V
    .registers 2

    .line 3839
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3840
    return-void
.end method

.method greylist-max-o setResources(Landroid/content/res/Resources;)V
    .registers 3

    .line 3794
    instance-of v0, p1, Landroid/content/res/CompatResources;

    if-eqz v0, :cond_a

    .line 3795
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatResources;

    invoke-virtual {v0, p0}, Landroid/content/res/CompatResources;->setContext(Landroid/content/Context;)V

    .line 3797
    :cond_a
    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3799
    if-eqz p1, :cond_2c

    .line 3801
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->defaultLocale()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3802
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2c

    .line 3803
    invoke-static {p0}, Landroid/app/LocaleConfig;->fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;

    move-result-object p1

    .line 3804
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->setLocaleConfig(Landroid/app/LocaleConfig;)V

    .line 3807
    :cond_2c
    invoke-direct {p0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 3808
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 4

    .line 498
    iget-object v0, p0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    if-eq v1, p1, :cond_c

    .line 500
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 501
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 503
    :cond_c
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1148
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1149
    return-void
.end method

.method public whitelist setWallpaper(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1154
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1155
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .registers 3

    .line 1221
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1223
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 11

    .line 1242
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1243
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 1249
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1250
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1251
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1249
    const/4 v4, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1252
    return-void

    .line 1244
    :cond_2d
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Calling startActivities() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 13

    .line 1228
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2f

    .line 1234
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1235
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1236
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1237
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1234
    const/4 v4, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    move-result p1

    return p1

    .line 1229
    :cond_2f
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Calling startActivities() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 1169
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1171
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 12

    .line 1181
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1187
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1189
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_30

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_30

    :cond_1a
    if-eqz p2, :cond_28

    .line 1193
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    goto :goto_30

    .line 1194
    :cond_28
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "Calling startActivity() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1199
    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1200
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1201
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1199
    const/4 v4, 0x0

    const/4 v7, -0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 1202
    return-void
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 17

    .line 1208
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 1209
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1210
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1211
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 1213
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 1209
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_31

    .line 1216
    nop

    .line 1217
    return-void

    .line 1214
    :catch_31
    move-exception v0

    move-object p1, v0

    .line 1215
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    .line 1176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1177
    return-void
.end method

.method public whitelist startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4

    .line 2068
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2069
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4

    .line 2085
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public whitelist startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 13

    .line 2405
    if-eqz p3, :cond_6

    .line 2406
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 2408
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2409
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v7

    .line 2408
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1a

    return p1

    .line 2411
    :catch_1a
    move-exception v0

    move-object p1, v0

    .line 2412
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1277
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1278
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1285
    nop

    .line 1286
    const/4 v0, 0x0

    if-eqz p2, :cond_14

    .line 1287
    :try_start_4
    invoke-virtual {p2, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1288
    invoke-virtual {p2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1289
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_15

    .line 1286
    :cond_14
    move-object v6, v0

    .line 1291
    :goto_15
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1292
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 1293
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    goto :goto_27

    :cond_26
    move-object v3, v0

    .line 1294
    :goto_27
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object p1

    move-object v4, p1

    goto :goto_30

    :cond_2f
    move-object v4, v0

    .line 1292
    :goto_30
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result p1

    .line 1297
    const/16 p2, -0x60

    if-eq p1, p2, :cond_47

    .line 1300
    invoke-static {p1, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 1303
    nop

    .line 1304
    return-void

    .line 1298
    :cond_47
    new-instance p1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {p1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw p1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4d} :catch_4d

    .line 1301
    :catch_4d
    move-exception v0

    move-object p1, v0

    .line 1302
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4

    .line 2062
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2063
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4

    .line 2080
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public whitelist stopService(Landroid/content/Intent;)Z
    .registers 3

    .line 2074
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2075
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 3

    .line 2128
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist unbindService(Landroid/content/ServiceConnection;)V
    .registers 4

    .line 2359
    if-eqz p1, :cond_28

    .line 2362
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_20

    .line 2363
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2364
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 2363
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object p1

    .line 2366
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_1a

    .line 2369
    nop

    .line 2370
    nop

    .line 2373
    return-void

    .line 2367
    :catch_1a
    move-exception p1

    .line 2368
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2371
    :cond_20
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported in system context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2360
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterDeviceIdChangeListener(Ljava/util/function/IntConsumer;)V
    .registers 4

    .line 3421
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3422
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3423
    :try_start_9
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    move-result-object p1

    .line 3424
    if-eqz p1, :cond_14

    .line 3425
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3427
    :cond_14
    monitor-exit v0

    .line 3428
    return-void

    .line 3427
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 4

    .line 2016
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1e

    .line 2017
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2018
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 2017
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object p1

    .line 2020
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18

    .line 2023
    nop

    .line 2024
    nop

    .line 2027
    return-void

    .line 2021
    :catch_18
    move-exception p1

    .line 2022
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2025
    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported in system context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist updateDeviceId(I)V
    .registers 5

    .line 3367
    if-eqz p1, :cond_45

    .line 3368
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 3369
    if-eqz v0, :cond_2c

    .line 3374
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_45

    .line 3375
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid ID of the default device or any virtual device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3370
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VDM is not enabled when updating to non-default device id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3380
    :cond_45
    :goto_45
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    if-nez v0, :cond_60

    .line 3385
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-eq v0, p1, :cond_5f

    .line 3386
    iput p1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3387
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    iget v1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->createAttributionSourceWithDeviceId(Landroid/content/AttributionSource;I)Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3388
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->notifyOnDeviceChangedListeners(I)V

    .line 3389
    invoke-direct {p0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 3391
    :cond_5f
    return-void

    .line 3381
    :cond_60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot update device ID on a Context created with createDeviceContext()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o updateDisplay(I)V
    .registers 4

    .line 3335
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3336
    iget p1, p0, Landroid/app/ContextImpl;->mContextType:I

    if-nez p1, :cond_12

    .line 3337
    const/4 p1, 0x1

    iput p1, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 3339
    :cond_12
    return-void
.end method

.method public blacklist updateServiceBindings(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Context$UpdateBindingParams;",
            ">;)V"
        }
    .end annotation

    .line 2328
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2329
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_7f

    .line 2330
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context$UpdateBindingParams;

    .line 2331
    invoke-virtual {v3}, Landroid/content/Context$UpdateBindingParams;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v4

    .line 2332
    if-eqz v4, :cond_77

    .line 2335
    iget-object v5, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v5, :cond_6f

    .line 2338
    iget-object v5, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2339
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 2338
    invoke-virtual {v5, v4, v6}, Landroid/app/LoadedApk;->lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 2340
    if-eqz v5, :cond_56

    .line 2344
    new-instance v4, Landroid/app/BindUpdateInfo;

    invoke-direct {v4}, Landroid/app/BindUpdateInfo;-><init>()V

    .line 2345
    invoke-interface {v5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/app/BindUpdateInfo;->connection:Landroid/os/IBinder;

    .line 2346
    invoke-virtual {v3}, Landroid/content/Context$UpdateBindingParams;->isUnbind()Z

    move-result v5

    iput-boolean v5, v4, Landroid/app/BindUpdateInfo;->unbind:Z

    .line 2347
    invoke-virtual {v3}, Landroid/content/Context$UpdateBindingParams;->getFlags()Landroid/content/Context$BindServiceFlags;

    move-result-object v5

    if-eqz v5, :cond_4c

    invoke-virtual {v3}, Landroid/content/Context$UpdateBindingParams;->getFlags()Landroid/content/Context$BindServiceFlags;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v5

    goto :goto_4e

    :cond_4c
    const-wide/16 v5, 0x0

    :goto_4e
    iput-wide v5, v4, Landroid/app/BindUpdateInfo;->flags:J

    .line 2348
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2341
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceConnection not currently bound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2336
    :cond_6f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported in system context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2333
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2351
    :cond_7f
    :try_start_7f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->updateServiceBindings(Ljava/util/List;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_86} :catch_88

    .line 2354
    nop

    .line 2355
    return-void

    .line 2352
    :catch_88
    move-exception p1

    .line 2353
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .registers 6

    .line 2307
    if-eqz p1, :cond_43

    .line 2310
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_3b

    .line 2311
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2312
    if-eqz v0, :cond_22

    .line 2317
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, v0, p2, p3}, Landroid/app/IActivityManager;->updateServiceGroup(Landroid/app/IServiceConnection;II)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1c

    .line 2320
    nop

    .line 2321
    nop

    .line 2324
    return-void

    .line 2318
    :catch_1c
    move-exception p1

    .line 2319
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2313
    :cond_22
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ServiceConnection not currently bound: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2322
    :cond_3b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not supported in system context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2308
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connection is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
