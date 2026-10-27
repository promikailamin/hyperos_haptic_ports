.class public Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# instance fields
.field public final mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field public final mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mContext:Landroid/content/Context;

.field public final mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

.field public final mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

.field public final mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

.field public final mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;

.field public mPackageManager:Lcom/android/server/pm/PackageManagerService;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemPartitions:Ljava/util/List;

.field public final mSystemWrapper:Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

.field public final mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageAbiHelper;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V
    .registers 39

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 202
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 203
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 204
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 205
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 206
    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 207
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    .line 208
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 210
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p9}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 212
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p10}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 213
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p11}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 214
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p12}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 215
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p13}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 216
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p14}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 218
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p15}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 219
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p16

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 220
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p17

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 222
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p18

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 223
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p19

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 225
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p20

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 227
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p21

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p22

    .line 229
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    move-object/from16 p1, p23

    .line 230
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    move-object/from16 p1, p24

    .line 231
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 232
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;

    move-object/from16 p2, p25

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;

    move-object/from16 p1, p26

    .line 234
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

    .line 235
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p27

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 237
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p28

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p31

    .line 239
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-object/from16 p1, p32

    .line 240
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    move-object/from16 p1, p33

    .line 241
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 242
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p29

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 245
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p30

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 246
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p34

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 247
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p35

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 248
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p36

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 250
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p37

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 251
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p38

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    return-void
.end method


# virtual methods
.method public bootstrap(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    return-object p0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 418
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getApexManager()Lcom/android/server/pm/ApexManager;
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ApexManager;

    return-object p0
.end method

.method public getAppOpsManagerInternal()Landroid/app/AppOpsManagerInternal;
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManagerInternal;

    return-object p0
.end method

.method public getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/AppsFilterImpl;

    return-object p0
.end method

.method public getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/ArtManagerService;

    return-object p0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCompatibility()Lcom/android/server/compat/PlatformCompat;
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    return-object p0
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/resolution/ComponentResolver;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCrossProfileIntentFilterHelper()Lcom/android/server/pm/CrossProfileIntentFilterHelper;
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    return-object p0
.end method

.method public getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;
    .registers 3

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    return-object p0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public getIBackupManager()Landroid/app/backup/IBackupManager;
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/backup/IBackupManager;

    return-object p0
.end method

.method public getIncrementalManager()Landroid/os/incremental/IncrementalManager;
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0
.end method

.method public getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public getInstaller()Lcom/android/server/pm/Installer;
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/InstantAppResolverConnection;

    return-object p0
.end method

.method public getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    return-object p0
.end method

.method public getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 355
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLock()Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ModuleInfoProvider;

    return-object p0
.end method

.method public getPackageInstallerService(Landroid/content/ComponentName;)Lcom/android/server/pm/PackageInstallerService;
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    return-object p0
.end method

.method public getPackageMonitorCallbackHelper()Lcom/android/server/pm/PackageMonitorCallbackHelper;
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    return-object p0
.end method

.method public getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public getScanningCachingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public getScanningPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public getSettings()Lcom/android/server/pm/Settings;
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings;

    return-object p0
.end method

.method public getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedLibrariesImpl;

    return-object p0
.end method

.method public getSystemConfig()Lcom/android/server/SystemConfig;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/SystemConfig;

    return-object p0
.end method

.method public getSystemPartitions()Ljava/util/List;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    return-object p0
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    return-object p0
.end method

.method public getUpdateOwnershipHelper()Lcom/android/server/pm/UpdateOwnershipHelper;
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UpdateOwnershipHelper;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 263
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getInternalForInjectorOnly()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public getUserManagerService()Lcom/android/server/pm/UserManagerService;
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method
