.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;,
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
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private greylist-max-o mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

.field private blacklist mAutofillOptions:Landroid/content/AutofillOptions;

.field private final greylist mBasePackageName:Ljava/lang/String;

.field private greylist-max-o mCacheDir:Ljava/io/File;

.field private greylist mClassLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o mCodeCacheDir:Ljava/io/File;

.field private blacklist mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

.field private final greylist mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private blacklist mContextType:I

.field private blacklist mCratesDir:Ljava/io/File;

.field private greylist-max-o mDatabasesDir:Ljava/io/File;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private greylist-max-o mFilesDir:Ljava/io/File;

.field private final greylist-max-p mFlags:I

.field private blacklist mForceDisplayOverrideInResources:Z

.field private blacklist mIsConfigurationBasedContext:Z

.field final greylist mMainThread:Landroid/app/ActivityThread;

.field private greylist-max-o mNoBackupFilesDir:Ljava/io/File;

.field private final greylist-max-p mOpPackageName:Ljava/lang/String;

.field private greylist mOuterContext:Landroid/content/Context;

.field private blacklist mOwnsToken:Z

.field final greylist mPackageInfo:Landroid/app/LoadedApk;

.field private greylist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mParams:Landroid/content/ContextParams;

.field private greylist mPreferencesDir:Ljava/io/File;

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

.field private final greylist-max-o mSync:Ljava/lang/Object;

.field private greylist mTheme:Landroid/content/res/Resources$Theme;

.field private greylist mThemeResource:I

.field private final blacklist mToken:Landroid/os/IBinder;

.field private final greylist-max-o mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 16
    .param p1, "container"    # Landroid/app/ContextImpl;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "packageInfo"    # Landroid/app/LoadedApk;
    .param p4, "params"    # Landroid/content/ContextParams;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "nextAttributionSource"    # Landroid/content/AttributionSource;
    .param p7, "splitName"    # Ljava/lang/String;
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "flags"    # I
    .param p11, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "overrideOpPackageName"    # Ljava/lang/String;

    .line 3173
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 268
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 271
    iput-object v1, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 273
    iput-object v1, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 276
    iput-object v1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 278
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 328
    iput-boolean v0, p0, Landroid/app/ContextImpl;->mOwnsToken:Z

    .line 347
    nop

    .line 348
    invoke-static {}, Landroid/app/SystemServiceRegistry;->createServiceCache()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 369
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 3174
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3178
    and-int/lit8 v0, p10, 0x18

    if-nez v0, :cond_49

    .line 3180
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 3181
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3182
    or-int/lit8 p10, p10, 0x10

    goto :goto_49

    .line 3183
    :cond_3d
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3184
    or-int/lit8 p10, p10, 0x8

    .line 3188
    .end local v0    # "dataDir":Ljava/io/File;
    :cond_49
    :goto_49
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 3189
    iput-object p8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 3190
    iput p10, p0, Landroid/app/ContextImpl;->mFlags:I

    .line 3192
    if-nez p9, :cond_55

    .line 3193
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p9

    .line 3195
    :cond_55
    iput-object p9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    .line 3197
    iput-object p3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3198
    iput-object p7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 3199
    iput-object p11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    .line 3200
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3204
    if-eqz p1, :cond_89

    .line 3205
    iget-object v0, p1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3206
    iget-object v0, p1, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3209
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v1, p1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Landroid/app/ContextImpl;->setResourcesWhenCreate(Landroid/content/res/Resources;)V

    .line 3210
    iget-object v1, p1, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 3211
    iget-boolean v1, p1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    iput-boolean v1, p0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3212
    iget-boolean v1, p1, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    iput-boolean v1, p0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3213
    iget v1, p1, Landroid/app/ContextImpl;->mContextType:I

    iput v1, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 3214
    iget-object v1, p1, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    iput-object v1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3215
    iget-object v1, p1, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    iput-object v1, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    goto :goto_a8

    .line 3217
    .end local v0    # "opPackageName":Ljava/lang/String;
    :cond_89
    iget-object v0, p3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3218
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3219
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a5

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_a5

    .line 3224
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .local v1, "opPackageName":Ljava/lang/String;
    goto :goto_a8

    .line 3226
    .end local v1    # "opPackageName":Ljava/lang/String;
    :cond_a5
    iget-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    move-object v0, v1

    .line 3230
    .local v0, "opPackageName":Ljava/lang/String;
    :goto_a8
    if-eqz p12, :cond_ac

    move-object v1, p12

    goto :goto_ad

    :cond_ac
    move-object v1, v0

    :goto_ad
    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3231
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContextParams;

    iput-object v1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    .line 3232
    nop

    .line 3233
    invoke-virtual {p4}, Landroid/content/ContextParams;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 3232
    invoke-direct {p0, p5, p6, v1}, Landroid/app/ContextImpl;->createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3234
    new-instance v1, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v1, p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 3235
    return-void
.end method

.method private blacklist bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z
    .registers 26
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "instanceName"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "user"    # Landroid/os/UserHandle;

    .line 2021
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    if-eqz v13, :cond_b8

    .line 2024
    if-eqz v14, :cond_1b

    if-nez v15, :cond_13

    goto :goto_1b

    .line 2025
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Handler and Executor both supplied"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2027
    :cond_1b
    :goto_1b
    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b0

    .line 2028
    if-eqz v15, :cond_2c

    .line 2029
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v13, v3, v15, v2}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;I)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object/from16 v16, v0

    .local v0, "sd":Landroid/app/IServiceConnection;
    goto :goto_36

    .line 2031
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v13, v3, v14, v2}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object/from16 v16, v0

    .line 2036
    .local v16, "sd":Landroid/app/IServiceConnection;
    :goto_36
    invoke-direct/range {p0 .. p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2038
    :try_start_39
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2039
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_56

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_56

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v3, :cond_56

    .line 2040
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4d} :catch_a8

    const/16 v4, 0xe

    if-ge v3, v4, :cond_56

    .line 2042
    or-int/lit8 v2, v2, 0x20

    move/from16 v17, v2

    .end local p3    # "flags":I
    .local v2, "flags":I
    goto :goto_58

    .line 2044
    .end local v2    # "flags":I
    .restart local p3    # "flags":I
    :cond_56
    move/from16 v17, v2

    .end local p3    # "flags":I
    .local v17, "flags":I
    :goto_58
    :try_start_58
    invoke-virtual {v12, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2045
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2046
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 2047
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 2048
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 2045
    move-object/from16 v5, p1

    move-object/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, p4

    invoke-interface/range {v2 .. v11}, Landroid/app/IActivityManager;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2049
    .local v2, "res":I
    if-ltz v2, :cond_8d

    .line 2053
    if-eqz v2, :cond_8b

    const/4 v3, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v3, 0x0

    :goto_8c
    return v3

    .line 2050
    :cond_8d
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v16    # "sd":Landroid/app/IServiceConnection;
    .end local v17    # "flags":I
    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p4    # "instanceName":Ljava/lang/String;
    .end local p5    # "handler":Landroid/os/Handler;
    .end local p6    # "executor":Ljava/util/concurrent/Executor;
    .end local p7    # "user":Landroid/os/UserHandle;
    throw v3
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_a6} :catch_a6

    .line 2054
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v2    # "res":I
    .restart local v16    # "sd":Landroid/app/IServiceConnection;
    .restart local v17    # "flags":I
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local p4    # "instanceName":Ljava/lang/String;
    .restart local p5    # "handler":Landroid/os/Handler;
    .restart local p6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p7    # "user":Landroid/os/UserHandle;
    :catch_a6
    move-exception v0

    goto :goto_ab

    .end local v17    # "flags":I
    .restart local p3    # "flags":I
    :catch_a8
    move-exception v0

    move/from16 v17, v2

    .line 2055
    .end local p3    # "flags":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "flags":I
    :goto_ab
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2034
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v16    # "sd":Landroid/app/IServiceConnection;
    .end local v17    # "flags":I
    .restart local p3    # "flags":I
    :cond_b0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Not supported in system context"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2022
    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "connection is null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3327
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_23

    .line 3328
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1b

    .line 3331
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_13

    goto :goto_23

    .line 3332
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODE_WORLD_WRITEABLE no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3329
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODE_WORLD_READABLE no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3335
    :cond_23
    :goto_23
    return-void
.end method

.method static greylist-max-r createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;
    .registers 36
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "displayId"    # I
    .param p5, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 3110
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    if-eqz v14, :cond_df

    .line 3112
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v1

    .line 3113
    .local v1, "splitDirs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3115
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3116
    const-wide/16 v3, 0x2000

    const-string v0, "SplitDependencies"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3118
    :try_start_1f
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v0

    .line 3119
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2c} :catch_35
    .catchall {:try_start_1f .. :try_end_2c} :catchall_33

    move-object v1, v0

    .line 3124
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3125
    move-object/from16 v28, v2

    goto :goto_43

    .line 3124
    :catchall_33
    move-exception v0

    goto :goto_3c

    .line 3120
    :catch_35
    move-exception v0

    .line 3122
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_36
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "splitDirs":[Ljava/lang/String;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "mainThread":Landroid/app/ActivityThread;
    .end local p1    # "packageInfo":Landroid/app/LoadedApk;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p3    # "activityToken":Landroid/os/IBinder;
    .end local p4    # "displayId":I
    .end local p5    # "overrideConfiguration":Landroid/content/res/Configuration;
    throw v5
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_33

    .line 3124
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "splitDirs":[Ljava/lang/String;
    .restart local v2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "mainThread":Landroid/app/ActivityThread;
    .restart local p1    # "packageInfo":Landroid/app/LoadedApk;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "activityToken":Landroid/os/IBinder;
    .restart local p4    # "displayId":I
    .restart local p5    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_3c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3125
    throw v0

    .line 3115
    :cond_40
    move-object v0, v1

    move-object/from16 v28, v2

    .line 3129
    .end local v1    # "splitDirs":[Ljava/lang/String;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .local v0, "splitDirs":[Ljava/lang/String;
    .local v28, "classLoader":Ljava/lang/ClassLoader;
    :goto_43
    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v1, :cond_55

    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_55

    .line 3130
    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v1, v1, v16

    move-object/from16 v29, v1

    .local v1, "attributionTag":Ljava/lang/String;
    goto :goto_58

    .line 3132
    .end local v1    # "attributionTag":Ljava/lang/String;
    :cond_55
    const/4 v1, 0x0

    move-object/from16 v29, v1

    .line 3135
    .local v29, "attributionTag":Ljava/lang/String;
    :goto_58
    new-instance v17, Landroid/app/ContextImpl;

    const/4 v2, 0x0

    sget-object v5, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v7, 0x0

    iget-object v8, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, v17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, v29

    move-object/from16 v9, p3

    move-object/from16 v12, v28

    invoke-direct/range {v1 .. v13}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3138
    .local v1, "context":Landroid/app/ContextImpl;
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/ContextImpl;->mContextType:I

    .line 3139
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3142
    const/4 v2, -0x1

    move/from16 v3, p4

    if-eq v3, v2, :cond_7f

    move/from16 v16, v3

    :cond_7f
    move/from16 v2, v16

    .line 3144
    .end local p4    # "displayId":I
    .local v2, "displayId":I
    if-nez v2, :cond_8a

    .line 3145
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_8e

    .line 3146
    :cond_8a
    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v25, v3

    :goto_8e
    nop

    .line 3148
    .local v25, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 3152
    .local v3, "resourcesManager":Landroid/app/ResourcesManager;
    nop

    .line 3153
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v18

    .line 3155
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v20

    .line 3156
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v21

    .line 3157
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3162
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v5

    if-nez v5, :cond_b0

    const/4 v5, 0x0

    move-object/from16 v27, v5

    goto :goto_be

    .line 3163
    :cond_b0
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v5

    move-object/from16 v27, v5

    .line 3152
    :goto_be
    move-object/from16 v16, v3

    move-object/from16 v17, p3

    move-object/from16 v19, v0

    move-object/from16 v22, v4

    move/from16 v23, v2

    move-object/from16 v24, p5

    move-object/from16 v26, v28

    invoke-virtual/range {v16 .. v27}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3164
    nop

    .line 3165
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3164
    invoke-virtual {v3, v2, v4}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 3166
    return-object v1

    .line 3110
    .end local v0    # "splitDirs":[Ljava/lang/String;
    .end local v1    # "context":Landroid/app/ContextImpl;
    .end local v2    # "displayId":I
    .end local v3    # "resourcesManager":Landroid/app/ResourcesManager;
    .end local v25    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v28    # "classLoader":Ljava/lang/ClassLoader;
    .end local v29    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :cond_df
    move/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .registers 3
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;

    .line 3092
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method static blacklist createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;
    .registers 17
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3097
    if-eqz p1, :cond_29

    .line 3098
    new-instance v13, Landroid/app/ContextImpl;

    const/4 v1, 0x0

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3100
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3101
    invoke-static {v0}, Landroid/app/ContextImpl;->isSystemOrSystemUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x4

    goto :goto_26

    .line 3102
    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3103
    return-object v0

    .line 3097
    .end local v0    # "context":Landroid/app/ContextImpl;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)Landroid/content/AttributionSource;
    .registers 11
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "nextAttributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/AttributionSource;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource;"
        }
    .end annotation

    .line 3240
    .local p3, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/content/AttributionSource;)V

    .line 3244
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz p2, :cond_1d

    .line 3245
    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager;

    .line 3246
    invoke-virtual {v1, v0}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 3248
    :cond_1d
    return-object v0
.end method

.method private static blacklist createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 20
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "pi"    # Landroid/app/LoadedApk;
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
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

    .line 2514
    .local p6, "resourcesLoader":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2515
    .local v4, "splitResDirs":[Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v11
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_2d

    .line 2518
    .local v11, "classLoader":Ljava/lang/ClassLoader;
    nop

    .line 2519
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    .line 2520
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    .line 2522
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    .line 2523
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    .line 2524
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2519
    move-object v2, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 2516
    .end local v4    # "splitResDirs":[Ljava/lang/String;
    .end local v11    # "classLoader":Ljava/lang/ClassLoader;
    :catch_2d
    move-exception v0

    .line 2517
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static greylist createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .registers 15
    .param p0, "mainThread"    # Landroid/app/ActivityThread;

    .line 3062
    new-instance v3, Landroid/app/LoadedApk;

    invoke-direct {v3, p0}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    .line 3063
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    new-instance v13, Landroid/app/ContextImpl;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object v2, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3065
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3066
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v4, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3067
    invoke-virtual {v4}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 3066
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3068
    const/4 v1, 0x4

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3069
    return-object v0
.end method

.method static blacklist createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/app/ContextImpl;
    .registers 5
    .param p0, "systemContext"    # Landroid/app/ContextImpl;
    .param p1, "displayId"    # I

    .line 3080
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 3081
    .local v0, "token":Landroid/window/WindowTokenClient;
    invoke-virtual {p0, v0, p1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v1

    .line 3082
    .local v1, "context":Landroid/app/ContextImpl;
    invoke-virtual {v0, v1}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 3083
    invoke-virtual {v0, p1}, Landroid/window/WindowTokenClient;->attachToDisplayContent(I)Z

    .line 3084
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/ContextImpl;->mContextType:I

    .line 3085
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ContextImpl;->mOwnsToken:Z

    .line 3087
    return-object v1
.end method

.method private blacklist createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2745
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 2749
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    nop

    .line 2750
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 2749
    invoke-virtual {p0, v0, v1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v1

    .line 2755
    .local v1, "windowContextBase":Landroid/app/ContextImpl;
    new-instance v2, Landroid/window/WindowContext;

    invoke-direct {v2, v1, p2, p3}, Landroid/window/WindowContext;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 2756
    .local v2, "windowContext":Landroid/window/WindowContext;
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2761
    invoke-virtual {v0, v2}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 2764
    invoke-virtual {v2}, Landroid/window/WindowContext;->attachToDisplayArea()V

    .line 2766
    return-object v2
.end method

.method private static blacklist createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;
    .registers 24
    .param p0, "windowContextBase"    # Landroid/app/ContextImpl;

    .line 2819
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2820
    .local v1, "packageInfo":Landroid/app/LoadedApk;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 2821
    .local v14, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v15

    .line 2823
    .local v15, "token":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v16

    .line 2824
    .local v16, "resDir":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v17

    .line 2825
    .local v17, "splitResDirs":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v18

    .line 2826
    .local v18, "legacyOverlayDirs":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v19

    .line 2827
    .local v19, "overlayPaths":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2828
    .local v13, "libDirs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v20

    .line 2829
    .local v20, "displayId":I
    if-nez v20, :cond_2e

    .line 2830
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object v11, v2

    goto :goto_31

    .line 2831
    :cond_2e
    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v11, v2

    :goto_31
    nop

    .line 2832
    .local v11, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v21

    .line 2834
    .local v21, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v10, 0x0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object v8, v13

    move/from16 v9, v20

    move-object v12, v14

    move-object/from16 v22, v13

    .end local v13    # "libDirs":[Ljava/lang/String;
    .local v22, "libDirs":[Ljava/lang/String;
    move-object/from16 v13, v21

    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 2245
    if-eqz p2, :cond_71

    .line 2246
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2247
    if-eqz p5, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2248
    if-eqz p3, :cond_41

    .line 2249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    .line 2250
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2254
    :cond_71
    return-void
.end method

.method private greylist-max-o enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p1, "modeFlags"    # I
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "message"    # Ljava/lang/String;

    .line 2443
    if-eqz p2, :cond_7e

    .line 2444
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2445
    if-eqz p6, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2446
    if-eqz p3, :cond_41

    .line 2447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5a

    .line 2448
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2449
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2454
    :cond_7e
    return-void
.end method

.method private blacklist ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;
    .registers 10
    .param p1, "dirs"    # [Ljava/io/File;
    .param p2, "tryCreateInProcess"    # Z

    .line 3373
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3374
    .local v0, "sm":Landroid/os/storage/StorageManager;
    array-length v1, p1

    new-array v1, v1, [Ljava/io/File;

    .line 3375
    .local v1, "result":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_5d

    .line 3376
    aget-object v3, p1, v2

    .line 3377
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3379
    if-eqz p2, :cond_1f

    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3381
    :cond_1f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3384
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->mkdirs(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    .line 3390
    :cond_28
    goto :goto_4d

    .line 3387
    :catch_29
    move-exception v4

    .line 3388
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to ensure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContextImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    const/4 v3, 0x0

    .line 3392
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_58

    .line 3397
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->fixupAppDir(Ljava/io/File;)V

    .line 3399
    :cond_58
    aput-object v3, v1, v2

    .line 3375
    .end local v3    # "dir":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3401
    .end local v2    # "i":I
    :cond_5d
    return-object v1
.end method

.method private static greylist-max-o ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "xattr"    # Ljava/lang/String;

    .line 764
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v0

    .line 765
    .local v0, "gid":I
    const/16 v1, 0x5f9

    invoke-static {p0, v1, v0, p1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 760
    const/16 v0, 0x1f9

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;
    .registers 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "gid"    # I
    .param p3, "xattr"    # Ljava/lang/String;

    .line 769
    const-string v0, ": "

    const-string v1, "ContextImpl"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 770
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "path":Ljava/lang/String;
    :try_start_e
    invoke-static {v2, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 773
    invoke-static {v2, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 774
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1a

    .line 775
    invoke-static {v2, v3, p2}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 783
    :cond_1a
    goto :goto_45

    .line 777
    :catch_1b
    move-exception v3

    .line 778
    .local v3, "e":Landroid/system/ErrnoException;
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EEXIST:I

    if-ne v4, v5, :cond_23

    goto :goto_45

    .line 781
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to ensure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_45
    if-eqz p3, :cond_8c

    .line 787
    :try_start_47
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    .line 788
    .local v3, "stat":Landroid/system/StructStat;
    const/16 v4, 0x8

    new-array v4, v4, [B

    .line 789
    .local v4, "value":[B
    iget-wide v5, v3, Landroid/system/StructStat;->st_ino:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v6, v7}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 790
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v4, v8}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_68
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_68} :catch_69

    .line 793
    .end local v3    # "stat":Landroid/system/StructStat;
    .end local v4    # "value":[B
    goto :goto_8c

    .line 791
    :catch_69
    move-exception v3

    .line 792
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "e":Landroid/system/ErrnoException;
    :cond_8c
    :goto_8c
    return-object p0
.end method

.method static blacklist getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "dataDir"    # Ljava/io/File;

    .line 896
    new-instance v0, Ljava/io/File;

    const-string v1, "code_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o getDatabasesDir()Ljava/io/File;
    .registers 5

    .line 1021
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_2a

    .line 1023
    const-string v1, "android"

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1024
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    goto :goto_2a

    .line 1026
    :cond_1d
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1029
    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1030
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method static greylist getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 375
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 376
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_10

    .line 377
    move-object p0, v1

    goto :goto_0

    .line 379
    .end local v1    # "nextContext":Landroid/content/Context;
    :cond_10
    move-object v0, p0

    check-cast v0, Landroid/app/ContextImpl;

    return-object v0
.end method

.method private greylist getPreferencesDir()Ljava/io/File;
    .registers 5

    .line 712
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 714
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 716
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 717
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

    .line 603
    sget-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 604
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    .line 607
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 609
    .local v1, "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    if-nez v1, :cond_24

    .line 610
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 611
    sget-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_24
    return-object v1
.end method

.method private greylist-max-o getWallpaperManager()Landroid/app/WallpaperManager;
    .registers 2

    .line 1076
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private greylist-max-o initializeTheme()V
    .registers 4

    .line 471
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_c

    .line 472
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 474
    :cond_c
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 475
    return-void
.end method

.method private blacklist isAssociatedWithDisplay()Z
    .registers 2

    .line 2910
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 2918
    const/4 v0, 0x0

    return v0

    .line 2916
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
    .param p0, "context"    # Landroid/content/Context;

    .line 2167
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2167
    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private greylist-max-o makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 3357
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_19

    .line 3358
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3361
    .local v0, "res":Ljava/io/File;
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 3362
    return-object v0

    .line 3364
    .end local v0    # "res":Ljava/io/File;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    .registers 13
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 644
    new-instance v0, Landroid/app/ContextImpl$1;

    invoke-direct {v0, p2}, Landroid/app/ContextImpl$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 651
    .local v0, "sourceFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .line 652
    .local v1, "res":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_8b

    aget-object v4, v0, v3

    .line 653
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    .local v5, "targetFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ContextImpl"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :try_start_3b
    invoke-static {v4, v5}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 657
    invoke-static {v4, v5}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 658
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 661
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4c

    .line 662
    add-int/lit8 v1, v1, 0x1

    .line 667
    :cond_4c
    goto :goto_88

    .line 659
    :cond_4d
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clean up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sourceFiles":[Ljava/io/File;
    .end local v1    # "res":I
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local p0    # "sourceDir":Ljava/io/File;
    .end local p1    # "targetDir":Ljava/io/File;
    .end local p2    # "prefix":Ljava/lang/String;
    throw v6
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_66} :catch_66

    .line 664
    .restart local v0    # "sourceFiles":[Ljava/io/File;
    .restart local v1    # "res":I
    .restart local v4    # "sourceFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    .restart local p0    # "sourceDir":Ljava/io/File;
    .restart local p1    # "targetDir":Ljava/io/File;
    .restart local p2    # "prefix":Ljava/lang/String;
    :catch_66
    move-exception v6

    .line 665
    .local v6, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to migrate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v1, -0x1

    .line 652
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 669
    :cond_8b
    return v1
.end method

.method private greylist-max-o registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;
    .registers 27
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "userId"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "flags"    # I

    .line 1802
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1803
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_4a

    .line 1804
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_2b

    if-eqz p6, :cond_2b

    .line 1805
    if-nez p5, :cond_15

    .line 1806
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1805
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v8, p5

    .line 1808
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1810
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x1

    .line 1808
    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v2, v0

    goto :goto_4d

    .line 1812
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_2b
    if-nez p5, :cond_35

    .line 1813
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_37

    .line 1812
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_35
    move-object/from16 v8, p5

    .line 1815
    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v8    # "scheduler":Landroid/os/Handler;
    :goto_37
    new-instance v9, Landroid/app/LoadedApk$ReceiverDispatcher;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1816
    invoke-virtual {v9}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v2, v0

    goto :goto_4d

    .line 1803
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_4a
    move-object/from16 v8, p5

    move-object v2, v0

    .line 1820
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "rd":Landroid/content/IIntentReceiver;
    .restart local v8    # "scheduler":Landroid/os/Handler;
    :goto_4d
    :try_start_4d
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1821
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    .line 1822
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    invoke-virtual {v3}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v4
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_59} :catch_9c

    if-eqz v4, :cond_62

    and-int/lit8 v4, p7, 0x4

    if-nez v4, :cond_62

    .line 1824
    or-int/lit8 v4, p7, 0x2

    .end local p7    # "flags":I
    .local v4, "flags":I
    goto :goto_64

    .line 1826
    .end local v4    # "flags":I
    .restart local p7    # "flags":I
    :cond_62
    move/from16 v4, p7

    .end local p7    # "flags":I
    .restart local v4    # "flags":I
    :goto_64
    :try_start_64
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v5, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1827
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v10

    iget-object v11, v1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v12

    .line 1828
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1826
    move-object v14, v2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p2

    move/from16 v18, v4

    invoke-interface/range {v9 .. v18}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v5

    .line 1830
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_99

    .line 1831
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1834
    invoke-static {v5}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v6

    .line 1835
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 1834
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_99} :catch_9a

    .line 1837
    :cond_99
    return-object v5

    .line 1838
    .end local v0    # "thread":Landroid/app/ActivityThread;
    .end local v3    # "instrumentation":Landroid/app/Instrumentation;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_9a
    move-exception v0

    goto :goto_9f

    .end local v4    # "flags":I
    .restart local p7    # "flags":I
    :catch_9c
    move-exception v0

    move/from16 v4, p7

    .line 1839
    .end local p7    # "flags":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "flags":I
    :goto_9f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private greylist-max-o resolveUserId(Landroid/net/Uri;)I
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2354
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method static greylist-max-o setFilePermissionsFromMode(Ljava/lang/String;II)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    .line 3340
    or-int/lit16 v0, p2, 0x1b0

    .line 3343
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    .line 3344
    or-int/lit8 v0, v0, 0x4

    .line 3346
    :cond_8
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_e

    .line 3347
    or-int/lit8 v0, v0, 0x2

    .line 3353
    :cond_e
    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3354
    return-void
.end method

.method private greylist-max-o startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "requireForeground"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1902
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1903
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1904
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1905
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 1906
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1907
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1904
    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1908
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_c1

    .line 1909
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_e2

    const-string v2, "Not allowed to start service "

    if-nez v1, :cond_9c

    .line 1913
    :try_start_3a
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "!!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_e2

    const-string v3, ": "

    if-nez v1, :cond_77

    .line 1917
    :try_start_48
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto :goto_c1

    .line 1918
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1919
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1918
    invoke-static {p2, v1}, Landroid/app/ServiceStartNotAllowedException;->newInstance(ZLjava/lang/String;)Landroid/app/ServiceStartNotAllowedException;

    move-result-object v1

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "requireForeground":Z
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 1914
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "requireForeground":Z
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_77
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1916
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "requireForeground":Z
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 1910
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "requireForeground":Z
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_9c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1912
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "requireForeground":Z
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 1923
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "requireForeground":Z
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_c1
    :goto_c1
    if-eqz v0, :cond_e1

    if-eqz p2, :cond_e1

    .line 1924
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1925
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/StackTrace;

    const-string v3, "Last startServiceCommon() call for this service was made here"

    invoke-direct {v2, v3}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/app/Service;->setStartForegroundServiceStackTrace(Ljava/lang/String;Landroid/app/StackTrace;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_e1} :catch_e2

    .line 1930
    :cond_e1
    return-object v0

    .line 1931
    .end local v0    # "cn":Landroid/content/ComponentName;
    :catch_e2
    move-exception v0

    .line 1932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1943
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1944
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1945
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1946
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 1947
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1945
    invoke-interface {v0, v1, p1, v2, v3}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 1948
    .local v0, "res":I
    if-ltz v0, :cond_28

    .line 1952
    if-eqz v0, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1

    .line 1949
    :cond_28
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to stop service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "user":Landroid/os/UserHandle;
    throw v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_41} :catch_41

    .line 1953
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :catch_41
    move-exception v0

    .line 1954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o uriModeFlagToString(I)Ljava/lang/String;
    .registers 6
    .param p1, "uriModeFlags"    # I

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2419
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    .line 2420
    const-string/jumbo v1, "read and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    :cond_f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_19

    .line 2423
    const-string/jumbo v1, "write and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    :cond_19
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_23

    .line 2426
    const-string/jumbo v1, "persistable and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    :cond_23
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_2d

    .line 2429
    const-string/jumbo v1, "prefix and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_41

    .line 2433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2436
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission mode flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o validateServiceIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "service"    # Landroid/content/Intent;

    .line 1859
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_58

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    .line 1860
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3f

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implicit intents with startService are not safe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 1866
    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1865
    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1861
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Intent must be explicit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1869
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_58
    :goto_58
    return-void
.end method

.method private greylist-max-o warnIfCallingFromSystemProcess()V
    .registers 3

    .line 2502
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_25

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling a method in the system process without a qualified user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 2504
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2503
    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    :cond_25
    return-void
.end method


# virtual methods
.method public whitelist bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 1974
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1975
    if-eqz p3, :cond_15

    .line 1978
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 1976
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null instanceName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 1968
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 1960
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1961
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 1962
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 1961
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 1991
    if-eqz p4, :cond_f

    .line 1994
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 1992
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 1984
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o canLoadUnsafeResources()Z
    .registers 3

    .line 2890
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 2891
    return v1

    .line 2893
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
    .param p1, "permission"    # Ljava/lang/String;

    .line 2221
    if-eqz p1, :cond_f

    .line 2225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2225
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2222
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2381
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2381
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public whitelist checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2388
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist checkCallingPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2208
    if-eqz p1, :cond_17

    .line 2212
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2213
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 2214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 2216
    :cond_15
    const/4 v1, -0x1

    return v1

    .line 2209
    .end local v0    # "pid":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2359
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2360
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 2361
    nop

    .line 2362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2361
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    return v1

    .line 2364
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist checkCallingUriPermissions(Ljava/util/List;I)[I
    .registers 6
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2370
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2371
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 2372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object v1

    return-object v1

    .line 2374
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2375
    .local v1, "res":[I
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2376
    return-object v1
.end method

.method public whitelist checkPermission(Ljava/lang/String;II)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 2175
    if-eqz p1, :cond_3b

    .line 2178
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2179
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p3, v0, :cond_36

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    const/4 v0, -0x1

    return v0

    .line 2183
    :cond_36
    invoke-static {p1, p2, p3}, Landroid/permission/PermissionManager;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2176
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;

    .line 2189
    if-eqz p1, :cond_3b

    .line 2192
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2193
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p3, v0, :cond_36

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    const/4 v0, -0x1

    return v0

    .line 2197
    :cond_36
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2190
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkSelfPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2231
    if-eqz p1, :cond_37

    .line 2234
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    const/4 v0, -0x1

    return v0

    .line 2239
    :cond_2a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2232
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;III)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 2321
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2322
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2323
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x0

    .line 2321
    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 2324
    :catch_15
    move-exception v0

    .line 2325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "callerToken"    # Landroid/os/IBinder;

    .line 2345
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2346
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2347
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2345
    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 2348
    :catch_15
    move-exception v0

    .line 2349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .line 2399
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2400
    if-eqz p2, :cond_d

    .line 2401
    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_e

    .line 2403
    :cond_d
    return v1

    .line 2406
    :cond_e
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1b

    .line 2407
    if-eqz p3, :cond_1a

    .line 2408
    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1b

    .line 2410
    :cond_1a
    return v1

    .line 2413
    :cond_1b
    if-eqz p1, :cond_22

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_23

    .line 2414
    :cond_22
    const/4 v0, -0x1

    .line 2413
    :goto_23
    return v0
.end method

.method public whitelist checkUriPermissions(Ljava/util/List;III)[I
    .registers 12
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;III)[I"
        }
    .end annotation

    .line 2334
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2335
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 2334
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 2336
    :catch_12
    move-exception v0

    .line 2337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
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

    .line 1072
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 1073
    return-void
.end method

.method public greylist-max-o createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 20
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2535
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    or-int v2, p2, v2

    invoke-virtual {v0, v14, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v15

    .line 2537
    .local v15, "pi":Landroid/app/LoadedApk;
    if-eqz v15, :cond_6b

    .line 2538
    new-instance v16, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2539
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2540
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    new-instance v9, Landroid/os/UserHandle;

    iget v0, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2541
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v3, v15

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2544
    .local v0, "c":Landroid/app/ContextImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v1

    .line 2545
    .local v1, "displayId":I
    iget-boolean v2, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v2, :cond_4f

    .line 2546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    move-object v6, v2

    .line 2548
    .local v6, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v3, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2549
    invoke-virtual {v13, v1}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    const/4 v9, 0x0

    .line 2548
    move-object v4, v15

    invoke-static/range {v3 .. v9}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2550
    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_6b

    .line 2551
    return-object v0

    .line 2555
    .end local v0    # "c":Landroid/app/ContextImpl;
    .end local v1    # "displayId":I
    .end local v6    # "overrideDisplayId":Ljava/lang/Integer;
    :cond_6b
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

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

.method public whitelist createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 2849
    new-instance v0, Landroid/content/ContextParams$Builder;

    iget-object v1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-direct {v0, v1}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 2850
    invoke-virtual {v0, p1}, Landroid/content/ContextParams$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v0

    .line 2849
    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 19
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 2642
    move-object/from16 v13, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_7a

    .line 2646
    iget-boolean v1, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    const/4 v14, 0x1

    if-eqz v1, :cond_25

    .line 2649
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 2650
    .local v1, "displayAdjustedConfig":Landroid/content/res/Configuration;
    iget-object v2, v13, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v2, v3, v14}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 2652
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 2653
    move-object v0, v1

    move-object v15, v0

    .end local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    .local v0, "overrideConfiguration":Landroid/content/res/Configuration;
    goto :goto_26

    .line 2646
    .end local v0    # "overrideConfiguration":Landroid/content/res/Configuration;
    .end local v1    # "displayAdjustedConfig":Landroid/content/res/Configuration;
    .restart local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_25
    move-object v15, v0

    .line 2656
    .end local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    .local v15, "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_26
    new-instance v16, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2657
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2658
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v13, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v13, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v13, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2660
    .local v0, "context":Landroid/app/ContextImpl;
    iput-boolean v14, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 2662
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v1

    .line 2663
    .local v1, "displayId":I
    iget-boolean v2, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v2, :cond_5b

    .line 2664
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    move-object v5, v2

    .line 2665
    .local v5, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v2, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 2666
    invoke-virtual {v13, v1}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    iget-object v6, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2667
    invoke-virtual {v6}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v8

    .line 2665
    move-object v6, v15

    invoke-static/range {v2 .. v8}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2668
    return-object v0

    .line 2643
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v1    # "displayId":I
    .end local v5    # "overrideDisplayId":Ljava/lang/Integer;
    .end local v15    # "overrideConfiguration":Landroid/content/res/Configuration;
    .restart local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_7a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "overrideConfiguration must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 16
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 2842
    new-instance v13, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2843
    invoke-virtual {p1}, Landroid/content/ContextParams;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2842
    return-object v13
.end method

.method public whitelist createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "flags"    # I

    .line 2604
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2605
    :catch_9
    move-exception v0

    .line 2606
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Own package not found: package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .registers 20
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2612
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2614
    return-object v13

    .line 2617
    :cond_11
    iget-object v0, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v14}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v15

    .line 2618
    .local v15, "classLoader":Ljava/lang/ClassLoader;
    iget-object v0, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v14}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2620
    .local v16, "paths":[Ljava/lang/String;
    new-instance v17, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2621
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2622
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v13, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v13, Landroid/app/ContextImpl;->mFlags:I

    const/4 v12, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object v11, v15

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2625
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iget-object v2, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2627
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2629
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2630
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2631
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2632
    iget-boolean v4, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v4, :cond_6f

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :goto_70
    move-object v8, v4

    const/4 v9, 0x0

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2634
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    iget-object v4, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2636
    invoke-virtual {v4}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v12

    .line 2625
    move-object/from16 v4, v16

    move-object v11, v15

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2637
    return-object v0
.end method

.method public whitelist createCredentialProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 2865
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x10

    .line 2867
    .local v0, "flags":I
    new-instance v14, Landroid/app/ContextImpl;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2868
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2869
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v12, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v13, 0x0

    move-object v1, v14

    move-object v2, p0

    move v11, v0

    invoke-direct/range {v1 .. v13}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2867
    return-object v14
.end method

.method public whitelist createDeviceProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 2855
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    or-int/lit8 v0, v0, 0x8

    .line 2857
    .local v0, "flags":I
    new-instance v14, Landroid/app/ContextImpl;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2858
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2859
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v12, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v13, 0x0

    move-object v1, v14

    move-object v2, p0

    move v11, v0

    invoke-direct/range {v1 .. v13}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2857
    return-object v14
.end method

.method public whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 16
    .param p1, "display"    # Landroid/view/Display;

    .line 2673
    if-eqz p1, :cond_6e

    .line 2677
    new-instance v13, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2678
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2679
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2682
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 2685
    .local v1, "displayId":I
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 2686
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/high16 v4, 0x20000000

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 2689
    iget-object v3, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2690
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    iget-object v7, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2691
    invoke-virtual {v7}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v9

    .line 2689
    move-object v7, v2

    invoke-static/range {v3 .. v9}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2692
    iput-object p1, v0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 2695
    iget v3, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_65

    .line 2696
    goto :goto_66

    :cond_65
    move v4, v10

    :goto_66
    iput v4, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 2700
    iput-boolean v10, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 2704
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 2705
    return-object v0

    .line 2674
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v1    # "displayId":I
    .end local v2    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2562
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2568
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const-string/jumbo v0, "system"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "android"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_98

    .line 2577
    :cond_17
    iget-object v0, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    or-int v2, p2, v2

    .line 2578
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2577
    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v15

    .line 2579
    .local v15, "pi":Landroid/app/LoadedApk;
    if-eqz v15, :cond_79

    .line 2580
    new-instance v16, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2581
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2582
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v9, p3

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2585
    .local v0, "c":Landroid/app/ContextImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v1

    .line 2586
    .local v1, "displayId":I
    iget-boolean v2, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v2, :cond_5d

    .line 2587
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    move-object v7, v2

    .line 2589
    .local v7, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v4, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2590
    invoke-virtual {v13, v1}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    const/4 v10, 0x0

    .line 2589
    move-object v5, v15

    invoke-static/range {v4 .. v10}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2591
    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_79

    .line 2592
    return-object v0

    .line 2597
    .end local v0    # "c":Landroid/app/ContextImpl;
    .end local v1    # "displayId":I
    .end local v7    # "overrideDisplayId":Ljava/lang/Integer;
    :cond_79
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2571
    .end local v15    # "pi":Landroid/app/LoadedApk;
    :cond_98
    :goto_98
    new-instance v15, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2572
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2573
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2571
    return-object v15
.end method

.method public blacklist createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "display"    # Landroid/view/Display;

    .line 2772
    if-eqz p2, :cond_b

    .line 2775
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0

    .line 2773
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 3

    .line 192
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 4

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 5
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 2712
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2718
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object v0

    return-object v0

    .line 2713
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please call this API with context associated with a display instance, such as Activity or context created via Context#createDisplayContext(Display), or try to invoke Context#createWindowContext(Display, int, Bundle)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2725
    if-eqz p1, :cond_7

    .line 2728
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object v0

    return-object v0

    .line 2726
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;
    .registers 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 2790
    move-object v13, p0

    new-instance v14, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2791
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2792
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, v13, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v13, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v13, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2796
    .local v0, "baseContext":Landroid/app/ContextImpl;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 2797
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 2799
    invoke-static {v0}, Landroid/app/ContextImpl;->createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2800
    .local v1, "windowContextResources":Landroid/content/res/Resources;
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2803
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 2806
    return-object v0
.end method

.method public whitelist databaseList()[Ljava/lang/String;
    .registers 2

    .line 1017
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist deleteDatabase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 984
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 985
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v1

    .line 986
    .end local v0    # "f":Ljava/io/File;
    :catch_9
    move-exception v0

    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist deleteFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 752
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 753
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public whitelist deleteSharedPreferences(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 694
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 695
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 696
    .local v1, "prefs":Ljava/io/File;
    invoke-static {v1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 699
    .local v2, "prefsBackup":Ljava/io/File;
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v3

    .line 700
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 703
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 706
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    monitor-exit v0

    return v4

    .line 707
    .end local v1    # "prefs":Ljava/io/File;
    .end local v2    # "prefsBackup":Ljava/io/File;
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist destroy()V
    .registers 3

    .line 3409
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

    .line 3410
    return-void
.end method

.method public whitelist enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 2278
    nop

    .line 2279
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 2281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2278
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2283
    return-void
.end method

.method public whitelist enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 2476
    nop

    .line 2478
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    .line 2479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2476
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2480
    return-void
.end method

.method public whitelist enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 2268
    nop

    .line 2269
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 2271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2268
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2273
    return-void
.end method

.method public whitelist enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 2467
    nop

    .line 2468
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    .line 2470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2467
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2471
    return-void
.end method

.method public whitelist enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 2259
    nop

    .line 2260
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 2259
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2264
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 2459
    nop

    .line 2460
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    .line 2459
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2462
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .line 2486
    nop

    .line 2487
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    .line 2486
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2494
    return-void
.end method

.method public whitelist fileList()[Ljava/lang/String;
    .registers 2

    .line 946
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3054
    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    instance-of v1, v0, Landroid/window/WindowTokenClient;

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroid/app/ContextImpl;->mOwnsToken:Z

    if-eqz v1, :cond_f

    .line 3055
    check-cast v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->detachFromWindowContainerIfNeeded()V

    .line 3057
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3058
    return-void
.end method

.method public greylist getActivityToken()Landroid/os/IBinder;
    .registers 3

    .line 3312
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

    .line 434
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 435
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 434
    :goto_f
    return-object v0
.end method

.method public whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 522
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 523
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 525
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 384
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAssociatedDisplayId()I
    .registers 2

    .line 2927
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

    .line 517
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 507
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 3015
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    return-object v0
.end method

.method public blacklist getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 3027
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    return-object v0
.end method

.method public greylist-max-o getBasePackageName()Ljava/lang/String;
    .registers 2

    .line 495
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public whitelist getCacheDir()Ljava/io/File;
    .registers 5

    .line 872
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 874
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 876
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 877
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 479
    iget-object v0, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_5

    goto :goto_12

    :cond_5
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public whitelist getCodeCacheDir()Ljava/io/File;
    .registers 4

    .line 882
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    if-nez v1, :cond_11

    .line 884
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    .line 886
    :cond_11
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_code_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 887
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 3039
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    return-object v0
.end method

.method public whitelist getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public blacklist getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 419
    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-direct {v0, p0, v1, p1}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public blacklist getCrateDir(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "crateId"    # Ljava/lang/String;

    .line 811
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "invalidated crateId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 812
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "crates"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 813
    .local v0, "cratesRootPath":Ljava/nio/file/Path;
    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 814
    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    .line 816
    .local v1, "absoluteNormalizedCratePath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 817
    :try_start_26
    iget-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    if-nez v3, :cond_30

    .line 818
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    .line 820
    :cond_30
    iget-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    invoke-static {v3}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    .line 821
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3f

    .line 823
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 824
    .local v2, "cratedDir":Ljava/io/File;
    invoke-static {v2}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3

    .line 821
    .end local v2    # "cratedDir":Ljava/io/File;
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public whitelist getDataDir()Ljava/io/File;
    .registers 5

    .line 2961
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_74

    .line 2962
    const/4 v0, 0x0

    .line 2963
    .local v0, "res":Ljava/io/File;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2964
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 2965
    :cond_12
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2966
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 2968
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 2971
    :goto_25
    if-eqz v0, :cond_57

    .line 2972
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_56

    .line 2973
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

    .line 2976
    :cond_56
    return-object v0

    .line 2978
    :cond_57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data directory found for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2979
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2982
    .end local v0    # "res":Ljava/io/File;
    :cond_74
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package details found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2983
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
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 996
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_3e

    .line 997
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    .local v1, "dir":Ljava/io/File;
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1000
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1002
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1003
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1007
    .end local v0    # "dirPath":Ljava/lang/String;
    :cond_3d
    goto :goto_46

    .line 1008
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_3e
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    .line 1009
    .restart local v1    # "dir":Ljava/io/File;
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1012
    .restart local v2    # "f":Ljava/io/File;
    :goto_46
    return-object v2
.end method

.method public whitelist getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 2989
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 2990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2991
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2992
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    .line 2993
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2994
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 2997
    :cond_30
    return-object v0
.end method

.method public whitelist getDisplay()Landroid/view/Display;
    .registers 3

    .line 2898
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2906
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 2899
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tried to obtain display from a Context not associated with one. Only visual Contexts (such as Activity or one created with Context#createWindowContext) or ones created with Context#createDisplayContext are associated with displays. Other types of Contexts are typically related to background entities and may return an arbitrary display."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .registers 3
    .param p1, "displayId"    # I

    .line 2956
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 3

    .line 2942
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 2943
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public blacklist getDisplayNoVerify()Landroid/view/Display;
    .registers 4

    .line 2932
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_e

    .line 2933
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 2937
    :cond_e
    return-object v0
.end method

.method public whitelist getExternalCacheDir()Ljava/io/File;
    .registers 3

    .line 902
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    .line 903
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public whitelist getExternalCacheDirs()[Ljava/io/File;
    .registers 4

    .line 908
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 913
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 914
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 840
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 841
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public whitelist getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;

    .line 846
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 848
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x1

    if-eqz p1, :cond_18

    .line 849
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    .line 851
    :cond_18
    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 852
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist getExternalMediaDirs()[Ljava/io/File;
    .registers 4

    .line 919
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 921
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 922
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 936
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFilesDir()Ljava/io/File;
    .registers 5

    .line 801
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 803
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 805
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 806
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o getIApplicationThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 2007
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 429
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 424
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMainThreadHandler()Landroid/os/Handler;
    .registers 2

    .line 2013
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNoBackupFilesDir()Ljava/io/File;
    .registers 5

    .line 829
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 831
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "no_backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    .line 833
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 834
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist getObbDir()Ljava/io/File;
    .registers 3

    .line 858
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    .line 859
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public whitelist getObbDirs()[Ljava/io/File;
    .registers 4

    .line 864
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 866
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 867
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 501
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final greylist getOuterContext()Landroid/content/Context;
    .registers 2

    .line 3306
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPackageCodePath()Ljava/lang/String;
    .registers 3

    .line 538
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 539
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 541
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 3

    .line 394
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_5

    .line 395
    return-object v0

    .line 398
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 399
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_13

    .line 401
    new-instance v1, Landroid/app/ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v1

    .line 404
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 484
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 485
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 489
    :cond_9
    const-string v0, "android"

    return-object v0
.end method

.method public whitelist getPackageResourcePath()Ljava/lang/String;
    .registers 3

    .line 530
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 531
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 533
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getParams()Landroid/content/ContextParams;
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    return-object v0
.end method

.method public whitelist getPreloadsFileCache()Ljava/io/File;
    .registers 2

    .line 931
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method final greylist getReceiverRestrictedContext()Landroid/content/Context;
    .registers 3

    .line 3293
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 3294
    return-object v0

    .line 3296
    :cond_5
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public greylist-max-o getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .registers 6
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # I

    .line 2001
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 573
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 574
    :try_start_3
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v1

    .line 575
    .local v1, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SharedPreferencesImpl;

    .line 576
    .local v2, "sp":Landroid/app/SharedPreferencesImpl;
    if-nez v2, :cond_48

    .line 577
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 578
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3d

    .line 579
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v3

    if-eqz v3, :cond_3d

    const-class v3, Landroid/os/UserManager;

    .line 580
    invoke-virtual {p0, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 581
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_3d

    .line 582
    :cond_35
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SharedPreferences in credential encrypted storage are not available until after user is unlocked"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "mode":I
    throw v3

    .line 586
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "mode":I
    :cond_3d
    :goto_3d
    new-instance v3, Landroid/app/SharedPreferencesImpl;

    invoke-direct {v3, p1, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    move-object v2, v3

    .line 587
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    monitor-exit v0

    return-object v2

    .line 590
    .end local v1    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :cond_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_5b

    .line 591
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_57

    .line 592
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_5a

    .line 596
    :cond_57
    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 598
    :cond_5a
    return-object v2

    .line 590
    .end local v2    # "sp":Landroid/app/SharedPreferencesImpl;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public whitelist getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 549
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_11

    .line 551
    if-nez p1, :cond_11

    .line 552
    const-string/jumbo p1, "null"

    .line 557
    :cond_11
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 558
    :try_start_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    if-nez v1, :cond_1f

    .line 559
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    .line 561
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 562
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_33

    .line 563
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 564
    iget-object v2, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_39

    .line 567
    invoke-virtual {p0, v1, p2}, Landroid/app/ContextImpl;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 566
    .end local v1    # "file":Ljava/io/File;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public blacklist getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 941
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 2115
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2117
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Landroid/app/ContextImpl;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 2118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access visual service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2119
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a non-visual Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2120
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2121
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "WindowManager should be accessed from Activity or other visual Context. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    .line 2125
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2126
    .local v2, "exception":Ljava/lang/Exception;
    const-string v3, "WindowManager should be accessed from Activity or other visual Context. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    invoke-static {v3, v2}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContextImpl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2130
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_62
    invoke-static {p0, p1}, Landroid/app/SystemServiceRegistry;->getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2135
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    .line 457
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_9

    .line 459
    monitor-exit v0

    return-object v1

    .line 462
    :cond_9
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 463
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 462
    invoke-static {v1, v2}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v1

    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 464
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 466
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    monitor-exit v0

    return-object v1

    .line 467
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public greylist-max-o getThemeResId()I
    .registers 3

    .line 450
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    monitor-exit v0

    return v1

    .line 452
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 3003
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 3009
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1036
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

    .line 1054
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

    .line 1048
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 3317
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 3322
    const/4 v0, 0x0

    return-object v0

    .line 3320
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
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2288
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2289
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2290
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2288
    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2293
    nop

    .line 2294
    return-void

    .line 2291
    :catch_19
    move-exception v0

    .line 2292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 3274
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p1, p2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3275
    return-void
.end method

.method public blacklist isConfigurationContext()Z
    .registers 2

    .line 2158
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

    .line 2885
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

    .line 2880
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

    .line 2875
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

    .line 2141
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_a

    .line 2151
    return v1

    .line 2145
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 2148
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
    .registers 9
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 973
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 974
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 975
    .local v1, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 976
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 977
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 976
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    monitor-exit v0

    return v3

    .line 978
    .end local v1    # "source":Ljava/io/File;
    .end local v2    # "target":Ljava/io/File;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 674
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 675
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 676
    .local v1, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 678
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 679
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 678
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 680
    .local v3, "res":I
    if-lez v3, :cond_28

    .line 683
    nop

    .line 684
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v4

    .line 685
    .local v4, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .end local v4    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :cond_28
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    monitor-exit v0

    return v4

    .line 689
    .end local v1    # "source":Ljava/io/File;
    .end local v2    # "target":Ljava/io/File;
    .end local v3    # "res":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 724
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public whitelist openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 729
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 730
    const v0, 0x8000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    .line 731
    .local v0, "append":Z
    :goto_d
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 733
    .local v2, "f":Ljava/io/File;
    :try_start_15
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 734
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_21} :catch_22

    .line 735
    return-object v3

    .line 736
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_22
    move-exception v3

    .line 739
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 740
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 741
    nop

    .line 742
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    .line 741
    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 745
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 746
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 747
    return-object v4
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 951
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 957
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 958
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 959
    .local v0, "f":Ljava/io/File;
    const/high16 v1, 0x10000000

    .line 960
    .local v1, "flags":I
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_10

    .line 961
    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    .line 963
    :cond_10
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_16

    .line 964
    or-int/lit8 v1, v1, 0x10

    .line 966
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 967
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 968
    return-object v2
.end method

.method public whitelist peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1042
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 3284
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_19

    .line 3287
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->onSystemUiContextCleanup(Landroid/app/ContextImpl;)V

    .line 3289
    :cond_19
    return-void
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 1748
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .registers 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 1754
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 13
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 1760
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1761
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1760
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 14
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 1767
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1768
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1767
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 14
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 1788
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1789
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1788
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 15
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "flags"    # I

    .line 1795
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1796
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1795
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 1774
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 13
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 1781
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o reloadSharedPreferences()V
    .registers 6

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v0, "spImpls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SharedPreferencesImpl;>;"
    const-class v1, Landroid/app/ContextImpl;

    monitor-enter v1

    .line 622
    :try_start_8
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v2

    .line 623
    .local v2, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 624
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SharedPreferencesImpl;

    .line 625
    .local v4, "sp":Landroid/app/SharedPreferencesImpl;
    if-eqz v4, :cond_1e

    .line 626
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v4    # "sp":Landroid/app/SharedPreferencesImpl;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 629
    .end local v2    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    .end local v3    # "i":I
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_36

    .line 632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 633
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 635
    .end local v1    # "i":I
    :cond_35
    return-void

    .line 629
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public whitelist removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1649
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 1651
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 1652
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1656
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1657
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 1656
    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1660
    nop

    .line 1661
    return-void

    .line 1658
    :catch_2d
    move-exception v1

    .line 1659
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1732
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1733
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 1734
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 1735
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1739
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1740
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1739
    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1743
    nop

    .line 1744
    return-void

    .line 1741
    :catch_2d
    move-exception v1

    .line 1742
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
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

    .line 2202
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 2203
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2202
    invoke-virtual {v0, v1, v2}, Landroid/permission/PermissionControllerManager;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;)V

    .line 2204
    return-void
.end method

.method public whitelist revokeUriPermission(Landroid/net/Uri;I)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2299
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2300
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v2, 0x0

    .line 2301
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2299
    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2304
    nop

    .line 2305
    return-void

    .line 2302
    :catch_19
    move-exception v0

    .line 2303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2310
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2311
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2312
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2310
    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2315
    nop

    .line 2316
    return-void

    .line 2313
    :catch_19
    move-exception v0

    .line 2314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method final greylist scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 3279
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    return-void
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1199
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1200
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1202
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1203
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1204
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1206
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1203
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_39} :catch_3b

    .line 1209
    nop

    .line 1210
    return-void

    .line 1207
    :catch_3b
    move-exception v0

    .line 1208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 1214
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1215
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1216
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_1b

    .line 1217
    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_1b
    nop

    .line 1219
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1220
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1221
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1224
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1220
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_45} :catch_47

    .line 1227
    nop

    .line 1228
    return-void

    .line 1225
    :catch_47
    move-exception v0

    .line 1226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .line 1325
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1326
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1327
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_1b

    .line 1328
    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_1b
    nop

    .line 1330
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1331
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1332
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1334
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1331
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move/from16 v14, p3

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_46} :catch_48

    .line 1337
    nop

    .line 1338
    return-void

    .line 1335
    :catch_48
    move-exception v0

    .line 1336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1297
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p3

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1298
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1299
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_15

    const/4 v0, 0x0

    goto :goto_1b

    .line 1300
    :cond_15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    :goto_1b
    nop

    .line 1301
    .local v0, "receiverPermissions":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1302
    .local v2, "excludedPermissions":[Ljava/lang/String;
    if-eqz v14, :cond_33

    .line 1303
    const-string v3, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, "receiverPermissionsBundle":[Ljava/lang/String;
    if-eqz v3, :cond_28

    .line 1306
    move-object v0, v3

    .line 1308
    :cond_28
    const-string v4, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    goto :goto_37

    .line 1302
    .end local v3    # "receiverPermissionsBundle":[Ljava/lang/String;
    :cond_33
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    .line 1312
    .end local v0    # "receiverPermissions":[Ljava/lang/String;
    .end local v2    # "excludedPermissions":[Ljava/lang/String;
    .local v20, "receiverPermissions":[Ljava/lang/String;
    .local v21, "excludedPermissions":[Ljava/lang/String;
    :goto_37
    :try_start_37
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1313
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1314
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v0, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1317
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1313
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move v14, v0

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_64} :catch_66

    .line 1320
    nop

    .line 1321
    return-void

    .line 1318
    :catch_66
    move-exception v0

    .line 1319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1423
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1425
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1426
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1427
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1426
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_38

    .line 1432
    nop

    .line 1433
    return-void

    .line 1430
    :catch_38
    move-exception v0

    .line 1431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .line 1438
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1439
    return-void
.end method

.method public greylist-max-o sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .line 1462
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1463
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_11

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_18

    .line 1464
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    move-object v11, v0

    :goto_18
    nop

    .line 1466
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_19
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1467
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1468
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1471
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1467
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move/from16 v14, p4

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_43} :catch_45

    .line 1474
    nop

    .line 1475
    return-void

    .line 1472
    :catch_45
    move-exception v0

    .line 1473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1444
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1445
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_11

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_18

    .line 1446
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    move-object v11, v0

    :goto_18
    nop

    .line 1448
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_19
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1449
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1450
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1449
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v15, p4

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_42} :catch_44

    .line 1456
    nop

    .line 1457
    return-void

    .line 1454
    :catch_44
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermissions"    # [Ljava/lang/String;

    .line 1266
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1268
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1269
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1270
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1269
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p3

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_39

    .line 1276
    nop

    .line 1277
    return-void

    .line 1274
    :catch_39
    move-exception v0

    .line 1275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 1232
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1233
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1235
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1236
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1237
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1236
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p2

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3a} :catch_3c

    .line 1243
    nop

    .line 1244
    return-void

    .line 1241
    :catch_3c
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1249
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1250
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1252
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1253
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1254
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1253
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p2

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3a} :catch_3c

    .line 1260
    nop

    .line 1261
    return-void

    .line 1258
    :catch_3c
    move-exception v0

    .line 1259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;

    .line 1282
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1285
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1286
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1287
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1289
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1286
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3c} :catch_3e

    .line 1292
    nop

    .line 1293
    return-void

    .line 1290
    :catch_3e
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialCode"    # I
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "receiverAppOp"    # Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 1546
    const/4 v0, -0x1

    .line 1547
    .local v0, "intAppOp":I
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1548
    invoke-static/range {p4 .. p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    .line 1550
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, v0

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move v9, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1552
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 1342
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1343
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1344
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_1b

    .line 1345
    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_1b
    nop

    .line 1347
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1348
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1349
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1352
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1348
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_45} :catch_47

    .line 1355
    nop

    .line 1356
    return-void

    .line 1353
    :catch_47
    move-exception v0

    .line 1354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1381
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

    .line 1383
    return-void
.end method

.method greylist-max-o sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 32
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 1389
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1390
    const/4 v0, 0x0

    .line 1391
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_57

    .line 1392
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_33

    .line 1393
    if-nez p5, :cond_18

    .line 1394
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_1a

    .line 1393
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_18
    move-object/from16 v8, p5

    .line 1396
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_1a
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1397
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1398
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1396
    move-object/from16 v3, p4

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_5b

    .line 1400
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_33
    if-nez p5, :cond_3d

    .line 1401
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3f

    .line 1400
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_3d
    move-object/from16 v8, p5

    .line 1403
    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v8    # "scheduler":Landroid/os/Handler;
    :goto_3f
    new-instance v9, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1404
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object/from16 v3, p4

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    invoke-virtual {v9}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_5b

    .line 1391
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_57
    move-object/from16 v19, p5

    move-object/from16 v20, v0

    .line 1407
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_5b
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1408
    .local v21, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_68

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_6f

    .line 1409
    :cond_68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_6f
    nop

    .line 1411
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_70
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1412
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1413
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1415
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1412
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v14, p3

    move-object/from16 v15, p9

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_9e} :catch_a0

    .line 1418
    nop

    .line 1419
    return-void

    .line 1416
    :catch_a0
    move-exception v0

    .line 1417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .line 1363
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

    .line 1365
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1372
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1374
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1533
    const/4 v0, -0x1

    .line 1534
    .local v0, "intAppOp":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1535
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    .line 1537
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v0

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1540
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialCode"    # I
    .param p8, "initialData"    # Ljava/lang/String;
    .param p9, "initialExtras"    # Landroid/os/Bundle;

    .line 1489
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

    .line 1491
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 33
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "scheduler"    # Landroid/os/Handler;
    .param p8, "initialCode"    # I
    .param p9, "initialData"    # Ljava/lang/String;
    .param p10, "initialExtras"    # Landroid/os/Bundle;

    .line 1497
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 1498
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p6, :cond_54

    .line 1499
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_30

    .line 1500
    if-nez p7, :cond_15

    .line 1501
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1500
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v8, p7

    .line 1503
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1505
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1503
    move-object/from16 v3, p6

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_58

    .line 1507
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_30
    if-nez p7, :cond_3a

    .line 1508
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p7    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3c

    .line 1507
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_3a
    move-object/from16 v8, p7

    .line 1510
    .end local p7    # "scheduler":Landroid/os/Handler;
    .restart local v8    # "scheduler":Landroid/os/Handler;
    :goto_3c
    new-instance v9, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object/from16 v3, p6

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1511
    invoke-virtual {v9}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_58

    .line 1498
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_54
    move-object/from16 v19, p7

    move-object/from16 v20, v0

    .line 1514
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_58
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1515
    .local v21, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_65

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_6c

    .line 1516
    :cond_65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    move-object v11, v0

    :goto_6c
    nop

    .line 1518
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_6d
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1519
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1520
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1519
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_9b} :catch_9d

    .line 1526
    nop

    .line 1527
    return-void

    .line 1524
    :catch_9d
    move-exception v0

    .line 1525
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1481
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

    .line 1483
    return-void
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1557
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1560
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1561
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1562
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1561
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_39} :catch_3b

    .line 1567
    nop

    .line 1568
    return-void

    .line 1565
    :catch_3b
    move-exception v0

    .line 1566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1596
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1599
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1600
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1601
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1603
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1600
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v15, p2

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_39} :catch_3b

    .line 1606
    nop

    .line 1607
    return-void

    .line 1604
    :catch_3b
    move-exception v0

    .line 1605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1666
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1668
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1669
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1670
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1672
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1669
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_38

    .line 1675
    nop

    .line 1676
    return-void

    .line 1673
    :catch_38
    move-exception v0

    .line 1674
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1681
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1683
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1684
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1685
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1687
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1684
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_38

    .line 1690
    nop

    .line 1691
    return-void

    .line 1688
    :catch_38
    move-exception v0

    .line 1689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 29
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1615
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_57

    .line 1618
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_33

    .line 1619
    if-nez p3, :cond_18

    .line 1620
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_1a

    .line 1619
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_18
    move-object/from16 v8, p3

    .line 1622
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_1a
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1623
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1624
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1622
    move-object/from16 v3, p2

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_5b

    .line 1626
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_33
    if-nez p3, :cond_3d

    .line 1627
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p3    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3f

    .line 1626
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_3d
    move-object/from16 v8, p3

    .line 1629
    .end local p3    # "scheduler":Landroid/os/Handler;
    .restart local v8    # "scheduler":Landroid/os/Handler;
    :goto_3f
    new-instance v9, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1630
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object/from16 v3, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    invoke-virtual {v9}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_5b

    .line 1617
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_57
    move-object/from16 v19, p3

    move-object/from16 v20, v0

    .line 1633
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_5b
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1635
    .local v21, "resolvedType":Ljava/lang/String;
    :try_start_63
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1636
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1637
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1640
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1636
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_91} :catch_93

    .line 1643
    nop

    .line 1644
    return-void

    .line 1641
    :catch_93
    move-exception v0

    .line 1642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 30
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1699
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 1700
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_54

    .line 1701
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_30

    .line 1702
    if-nez p4, :cond_15

    .line 1703
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1702
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v8, p4

    .line 1705
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1706
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1707
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1705
    move-object/from16 v3, p3

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_58

    .line 1709
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_30
    if-nez p4, :cond_3a

    .line 1710
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p4    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3c

    .line 1709
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_3a
    move-object/from16 v8, p4

    .line 1712
    .end local p4    # "scheduler":Landroid/os/Handler;
    .restart local v8    # "scheduler":Landroid/os/Handler;
    :goto_3c
    new-instance v9, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1713
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object/from16 v3, p3

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    invoke-virtual {v9}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_58

    .line 1700
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_54
    move-object/from16 v19, p4

    move-object/from16 v20, v0

    .line 1716
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_58
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1718
    .local v21, "resolvedType":Ljava/lang/String;
    :try_start_60
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1719
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1720
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1719
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_8e} :catch_90

    .line 1726
    nop

    .line 1727
    return-void

    .line 1724
    :catch_90
    move-exception v0

    .line 1725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V
    .registers 2
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 3021
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 3022
    return-void
.end method

.method public blacklist setAutofillOptions(Landroid/content/AutofillOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/AutofillOptions;

    .line 3033
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    .line 3034
    return-void
.end method

.method public blacklist setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/ContentCaptureOptions;

    .line 3045
    iput-object p1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3046
    return-void
.end method

.method final greylist setOuterContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 3301
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3302
    return-void
.end method

.method greylist-max-o setResources(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 3252
    instance-of v0, p1, Landroid/content/res/CompatResources;

    if-eqz v0, :cond_a

    .line 3253
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatResources;

    invoke-virtual {v0, p0}, Landroid/content/res/CompatResources;->setContext(Landroid/content/Context;)V

    .line 3256
    :cond_a
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/content/res/ThemeManagerStub;->initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 3258
    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3259
    return-void
.end method

.method blacklist setResourcesWhenCreate(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 3267
    instance-of v0, p1, Landroid/content/res/CompatResources;

    if-eqz v0, :cond_a

    .line 3268
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatResources;

    invoke-virtual {v0, p0}, Landroid/content/res/CompatResources;->setContext(Landroid/content/Context;)V

    .line 3270
    :cond_a
    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3271
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 440
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    if-eq v1, p1, :cond_c

    .line 442
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 443
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 445
    :cond_c
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1061
    return-void
.end method

.method public whitelist setWallpaper(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1066
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1067
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 1132
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1134
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1152
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1153
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    .line 1159
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1160
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1159
    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1162
    return-void

    .line 1154
    :cond_2a
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 13
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 1139
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 1145
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1146
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1147
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1145
    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    move-result v0

    return v0

    .line 1140
    :cond_2c
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1081
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1083
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1093
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1099
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1101
    .local v0, "targetSdkVersion":I
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

    .line 1105
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    goto :goto_30

    .line 1106
    :cond_28
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1111
    :cond_30
    :goto_30
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 1112
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v6

    check-cast v1, Landroid/app/Activity;

    const/4 v8, -0x1

    .line 1111
    move-object v7, p1

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 1114
    return-void
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1120
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_35

    move-object/from16 v14, p0

    :try_start_6
    iget-object v0, v14, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1121
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1122
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_33

    move-object/from16 v15, p1

    :try_start_1a
    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    .line 1124
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 1120
    move-object/from16 v5, p1

    move-object/from16 v12, p2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2f} :catch_31

    .line 1127
    nop

    .line 1128
    return-void

    .line 1125
    :catch_31
    move-exception v0

    goto :goto_3a

    :catch_33
    move-exception v0

    goto :goto_38

    :catch_35
    move-exception v0

    move-object/from16 v14, p0

    :goto_38
    move-object/from16 v15, p1

    .line 1126
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1089
    return-void
.end method

.method public whitelist startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;

    .line 1879
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1880
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1896
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 14
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2102
    if-eqz p3, :cond_6

    .line 2103
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 2105
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2106
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8

    const/4 v9, 0x0

    .line 2105
    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1a

    return v0

    .line 2108
    :catch_1a
    move-exception v0

    .line 2109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1168
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1169
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p2

    .line 1176
    const/4 v0, 0x0

    .line 1177
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v14, :cond_16

    .line 1178
    :try_start_7
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1179
    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1182
    :cond_16
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1183
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 1184
    const/4 v15, 0x0

    if-eqz p1, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    goto :goto_29

    :cond_28
    move-object v4, v15

    .line 1185
    :goto_29
    if-eqz p1, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_31

    :cond_30
    move-object v5, v15

    :goto_31
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1183
    move-object/from16 v6, p2

    move-object v7, v0

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p6

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    .line 1188
    .local v2, "result":I
    const/16 v3, -0x60

    if-eq v2, v3, :cond_4a

    .line 1191
    invoke-static {v2, v15}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 1194
    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local v2    # "result":I
    nop

    .line 1195
    return-void

    .line 1189
    .restart local v0    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "result":I
    :cond_4a
    new-instance v3, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v3}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "fillInIntent":Landroid/content/Intent;
    .end local p3    # "flagsMask":I
    .end local p4    # "flagsValues":I
    .end local p5    # "extraFlags":I
    .end local p6    # "options":Landroid/os/Bundle;
    throw v3
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_50} :catch_50

    .line 1192
    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local v2    # "result":I
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "intent":Landroid/content/IntentSender;
    .restart local p2    # "fillInIntent":Landroid/content/Intent;
    .restart local p3    # "flagsMask":I
    .restart local p4    # "flagsValues":I
    .restart local p5    # "extraFlags":I
    .restart local p6    # "options":Landroid/os/Bundle;
    :catch_50
    move-exception v0

    .line 1193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;

    .line 1873
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1874
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1891
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist stopService(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "service"    # Landroid/content/Intent;

    .line 1885
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1886
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1938
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 2082
    if-eqz p1, :cond_27

    .line 2085
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1f

    .line 2086
    nop

    .line 2087
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 2086
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2089
    .local v0, "sd":Landroid/app/IServiceConnection;
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_19

    .line 2092
    nop

    .line 2093
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    nop

    .line 2096
    return-void

    .line 2090
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_19
    move-exception v1

    .line 2091
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2094
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2083
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 1845
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1d

    .line 1846
    nop

    .line 1847
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 1846
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1849
    .local v0, "rd":Landroid/content/IIntentReceiver;
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_17

    .line 1852
    nop

    .line 1853
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    nop

    .line 1856
    return-void

    .line 1850
    .restart local v0    # "rd":Landroid/content/IIntentReceiver;
    :catch_17
    move-exception v1

    .line 1851
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1854
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o updateDisplay(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2948
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 2949
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    if-nez v0, :cond_11

    .line 2950
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 2952
    :cond_11
    return-void
.end method

.method public whitelist updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .registers 8
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 2061
    if-eqz p1, :cond_41

    .line 2064
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_39

    .line 2065
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2066
    .local v0, "sd":Landroid/app/IServiceConnection;
    if-eqz v0, :cond_20

    .line 2071
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Landroid/app/IActivityManager;->updateServiceGroup(Landroid/app/IServiceConnection;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_1a

    .line 2074
    nop

    .line 2075
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    nop

    .line 2078
    return-void

    .line 2072
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_1a
    move-exception v1

    .line 2073
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2067
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceConnection not currently bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2076
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2062
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
