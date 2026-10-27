.class public Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
.super Lcom/android/server/pm/IPackageManagerBase;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IPackageManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 20
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 4776
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4777
    iget-object v2, v14, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmModuleInfoProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDomainVerificationConnection(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DomainVerificationConnection;

    move-result-object v8

    iget-object v9, v14, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;

    move-result-object v10

    iget-object v11, v14, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    iget-object v12, v14, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    iget-object v0, v14, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/android/server/pm/IPackageManagerBase;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/ModuleInfoProvider;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/pm/ResolveIntentHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DomainVerificationConnection;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageProperty;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4783
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceStub;->initIPackageManagerImpl(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)V

    .line 4784
    return-void
.end method

.method static synthetic lambda$clearApplicationUserData$0(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V
    .registers 5
    .param p0, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4826
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, p1, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 4829
    goto :goto_d

    .line 4827
    :catch_5
    move-exception v0

    .line 4828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method static synthetic lambda$queryProperty$6(Lcom/android/server/pm/Computer;IILjava/lang/String;)Z
    .registers 6
    .param p0, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5600
    nop

    .line 5601
    invoke-interface {p0, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5602
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$registerDexModule$7(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V
    .registers 6
    .param p0, "callback"    # Landroid/content/pm/IDexModuleRegisterCallback;
    .param p1, "dexModulePath"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    .line 5646
    :try_start_0
    iget-boolean v0, p2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->success:Z

    iget-object v1, p2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->message:Ljava/lang/String;

    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IDexModuleRegisterCallback;->onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 5651
    goto :goto_21

    .line 5648
    :catch_8
    move-exception v0

    .line 5649
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to callback after module registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5652
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method static synthetic lambda$setApplicationCategoryHint$8(ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2
    .param p0, "categoryHint"    # I
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 5728
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setCategoryOverride(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method static synthetic lambda$setApplicationHiddenSettingAsUser$10(IZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "hidden"    # Z
    .param p2, "packageState1"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 5829
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setHidden(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method static synthetic lambda$setHarmfulAppWarning$11(ILjava/lang/CharSequence;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "warning"    # Ljava/lang/CharSequence;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 5931
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    .line 5932
    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 5931
    return-void
.end method

.method static synthetic lambda$setInstallerPackageName$13(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2
    .param p0, "installerPackageName"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 6060
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setInstaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method static synthetic lambda$setInstallerPackageName$14(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2
    .param p0, "installerPackageName"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 6066
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setInstaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method static synthetic lambda$setMimeGroup$15(Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 3
    .param p0, "mimeGroup"    # Ljava/lang/String;
    .param p1, "mimeTypesSet"    # Landroid/util/ArraySet;
    .param p2, "packageStateWrite"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 6139
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 6140
    return-void
.end method

.method static synthetic lambda$setRequiredForSystemUser$17(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2
    .param p0, "requiredForSystemUser"    # Z
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 6191
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setRequiredForSystemUser(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method static synthetic lambda$setSplashScreenTheme$18(ILjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 6226
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method static synthetic lambda$setUpdateAvailable$19(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2
    .param p0, "updateAvailable"    # Z
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 6233
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setUpdateAvailable(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method


# virtual methods
.method public checkPackageStartable(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4788
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4789
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->checkPackageStartable(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 4790
    return-void
.end method

.method public clearApplicationProfileData(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4794
    const-string v0, "Only the system can clear all profile data"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4797
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 4798
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 4799
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "clearApplicationProfileData"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    .line 4800
    .local v2, "ignored":Lcom/android/server/pm/PackageFreezer;
    :try_start_17
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2f

    .line 4801
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 4802
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2c

    .line 4803
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 4804
    .end local v2    # "ignored":Lcom/android/server/pm/PackageFreezer;
    :cond_2b
    return-void

    .line 4802
    .restart local v2    # "ignored":Lcom/android/server/pm/PackageFreezer;
    :catchall_2c
    move-exception v4

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "ignored":Lcom/android/server/pm/PackageFreezer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_2e
    throw v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 4799
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "ignored":Lcom/android/server/pm/PackageFreezer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_2f
    move-exception v3

    if-eqz v2, :cond_3a

    :try_start_32
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw v3
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I

    .line 4809
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4812
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4814
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4815
    .local v1, "callingPid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearApplicationUserData packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 4819
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "clear application data"

    move-object v3, v2

    move v4, v0

    move v5, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4822
    invoke-interface {v2, p1, v0, p3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_6d

    .line 4823
    if-eqz p2, :cond_6c

    .line 4824
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v4, p2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda12;-><init>(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4832
    :cond_6c
    return-void

    .line 4834
    :cond_6d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v3, p3, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 4840
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;

    invoke-direct {v4, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4883
    return-void

    .line 4835
    :cond_84
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot clear data for a protected package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .registers 11
    .param p1, "sourceUserId"    # I
    .param p2, "ownerPackage"    # Ljava/lang/String;

    .line 4887
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4890
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 4891
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v1, p2, v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 4892
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const-string/jumbo v3, "no_debugging_features"

    invoke-static {v2, v3, v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 4894
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 4895
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4896
    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v3

    .line 4897
    .local v3, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    new-instance v4, Landroid/util/ArraySet;

    .line 4898
    invoke-virtual {v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4899
    .local v4, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4900
    .local v6, "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v6}, Lcom/android/server/pm/CrossProfileIntentFilter;->getOwnerPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 4901
    invoke-virtual {v3, v6}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 4903
    .end local v6    # "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_5a
    goto :goto_41

    .line 4904
    .end local v3    # "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v4    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_62

    .line 4905
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 4906
    return-void

    .line 4904
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v3
.end method

.method public final deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 4911
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4912
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 4913
    return-void
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 4918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 4919
    .local v7, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_DELETE_CACHE_FILES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 4923
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_CACHE_FILES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_45

    .line 4926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not have "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silently ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    return-void

    .line 4931
    :cond_45
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4934
    :cond_4d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 4935
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "delete application cache files"

    move-object v0, v8

    move v1, v7

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4937
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    .line 4941
    .local v9, "hasAccessInstantApps":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, v9

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4974
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 6303
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "PackageManager"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 6304
    :cond_11
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 6305
    .local v3, "snapshot":Lcom/android/server/pm/Computer;
    new-instance v0, Lcom/android/server/pm/KnownPackages;

    move-object v4, v0

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDefaultAppProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object/from16 v16, v2

    const-string v17, "com.android.companiondevicemanager"

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 v20, v2

    invoke-direct/range {v4 .. v20}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    .line 6323
    .local v11, "knownPackages":Lcom/android/server/pm/KnownPackages;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 6325
    :try_start_6d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$maddPermierFlagIfNeedForGlobalROM(Lcom/android/server/pm/PackageManagerService;)V

    .line 6327
    new-instance v13, Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 6328
    .local v13, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_6d .. :try_end_7e} :catchall_cc

    .line 6330
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v4

    .line 6331
    :try_start_83
    new-instance v14, Landroid/util/ArraySet;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-direct {v14, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 6332
    .local v14, "protectedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_c1

    .line 6333
    new-instance v0, Lcom/android/server/pm/DumpHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmStorageEventHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/StorageEventHelper;

    move-result-object v7

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v2, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6336
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v15

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Lcom/android/server/pm/DumpHelper;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;)V

    .line 6337
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/server/pm/DumpHelper;->doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6338
    return-void

    .line 6332
    .end local v14    # "protectedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_c1
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    :goto_c8
    :try_start_c8
    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_ca

    throw v0

    :catchall_ca
    move-exception v0

    goto :goto_c8

    .line 6328
    .end local v13    # "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    :catchall_cc
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    :goto_d3
    :try_start_d3
    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d5

    throw v0

    :catchall_d5
    move-exception v0

    goto :goto_d3
.end method

.method public dumpProfiles(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dumpClassesAndMethods"    # Z

    .line 4979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4980
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 4981
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 4982
    .local v2, "callerPackageNames":[Ljava/lang/String;
    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_23

    if-eqz v0, :cond_23

    .line 4984
    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_23

    .line 4985
    :cond_1b
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "dumpProfiles"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4988
    :cond_23
    :goto_23
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 4989
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_45

    .line 4993
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4994
    :try_start_2e
    const-string v5, "dump profiles"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4995
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v5, v3, p2}, Lcom/android/server/pm/dex/ArtManagerService;->dumpProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 4996
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 4997
    monitor-exit v4

    .line 4998
    return-void

    .line 4997
    :catchall_42
    move-exception v5

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_42

    throw v5

    .line 4990
    :cond_45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public enterSafeMode()V
    .registers 3

    .line 5002
    const-string v0, "Only the system can request entering safe mode"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 5005
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 5006
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fputmSafeMode(Lcom/android/server/pm/PackageManagerService;Z)V

    .line 5008
    :cond_13
    return-void
.end method

.method public extendVerificationTimeout(IIJ)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J

    .line 5013
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can extend verification timeouts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5018
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;

    move-object v3, v2

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, v0

    move-wide v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;IIIJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5040
    return-void
.end method

.method public flushPackageRestrictionsAsUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 5045
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5046
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5047
    .local v7, "callingUid":I
    invoke-interface {v0, v7}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 5048
    return-void

    .line 5050
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 5051
    return-void

    .line 5053
    :cond_1c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "flushPackageRestrictions"

    move-object v1, v0

    move v2, v7

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5056
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 5057
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 5058
    monitor-exit v1

    .line 5059
    return-void

    .line 5058
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v2
.end method

.method public freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 15
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "flags"    # I
    .param p5, "pi"    # Landroid/content/IntentSender;

    .line 5065
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const-string v2, "PackageManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda14;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/IntentSender;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5087
    return-void
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .registers 15
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "flags"    # I
    .param p5, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 5092
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5094
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5110
    return-void
.end method

.method public getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    .registers 11
    .param p1, "sequenceNumber"    # I
    .param p2, "userId"    # I

    .line 5114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5115
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 5116
    .local v7, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v7, v6}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 5117
    return-object v1

    .line 5119
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5120
    return-object v1

    .line 5122
    :cond_1d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getChangedPackages"

    move-object v0, v7

    move v1, v6

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5124
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ChangedPackagesTracker;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    .line 5127
    .local v0, "changedPackages":Landroid/content/pm/ChangedPackages;
    if-eqz v0, :cond_54

    .line 5128
    invoke-virtual {v0}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    move-result-object v1

    .line 5129
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_3b
    if-ltz v2, :cond_54

    .line 5131
    nop

    .line 5132
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5133
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7, v3, v6, p2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 5134
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5129
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    .line 5139
    .end local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "index":I
    :cond_54
    return-object v0
.end method

.method public getDomainVerificationBackup(I)[B
    .registers 7
    .param p1, "userId"    # I

    .line 5144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3f

    .line 5149
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_31

    .line 5150
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_d
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 5151
    .local v1, "serializer":Landroid/util/TypedXmlSerializer;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->writeSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlSerializer;ZI)V

    .line 5153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_27

    .line 5154
    :try_start_23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_31

    .line 5153
    return-object v2

    .line 5149
    .end local v1    # "serializer":Landroid/util/TypedXmlSerializer;
    :catchall_27
    move-exception v1

    :try_start_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    :try_start_2d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .end local p1    # "userId":I
    :goto_30
    throw v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_31

    .line 5155
    .end local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .restart local p1    # "userId":I
    :catch_31
    move-exception v0

    .line 5156
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_3d

    .line 5157
    const-string v1, "PackageManager"

    const-string v2, "Unable to write domain verification for backup"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5159
    :cond_3d
    const/4 v1, 0x0

    return-object v1

    .line 5145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call getDomainVerificationBackup()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldLockToken()Landroid/os/IBinder;
    .registers 4

    .line 5165
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2f

    .line 5169
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    const-string v2, "getHoldLockToken requires INJECT_EVENTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5173
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 5174
    .local v0, "token":Landroid/os/Binder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 5175
    return-object v0

    .line 5166
    .end local v0    # "token":Landroid/os/Binder;
    :cond_2f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getHoldLockToken requires a debuggable build"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5180
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_INSTANT_APPS"

    const-string v2, "getInstantAppAndroidId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5182
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5183
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getInstantAppAndroidId"

    move-object v1, v0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5187
    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 5188
    const/4 v1, 0x0

    return-object v1

    .line 5190
    :cond_26
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInstantAppCookie(Ljava/lang/String;I)[B
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5199
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5200
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getInstantAppCookie"

    move-object v1, v0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 5204
    return-object v2

    .line 5206
    :cond_1f
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5207
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_39

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_2c

    goto :goto_39

    .line 5210
    :cond_2c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)[B

    move-result-object v2

    return-object v2

    .line 5208
    :cond_39
    :goto_39
    return-object v2
.end method

.method public getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5219
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5220
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 5221
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    const-string v3, "getInstantAppIcon"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5224
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getInstantAppIcon"

    move-object v1, v0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5228
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getInstantApps(I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 5237
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5238
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 5239
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    const-string v3, "getEphemeralApplications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5242
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getEphemeralApplications"

    move-object v1, v0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5246
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApps(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object v1

    .line 5247
    .local v1, "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    if-eqz v1, :cond_38

    .line 5248
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2

    .line 5250
    :cond_38
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 5255
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/pm/PreferredActivityHelper;->getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5262
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ResolveIntentHelper;->getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object v0

    return-object v0
.end method

.method public getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5268
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5269
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 5270
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMoveStatus(I)I
    .registers 5
    .param p1, "moveId"    # I

    .line 5275
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5277
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget-object v0, v0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .registers 5

    .line 5282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5283
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5284
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 5285
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5284
    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 5286
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    return-object v2

    .line 5289
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PermissionController is not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRuntimePermissionsVersion(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 5295
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 5296
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "getRuntimePermissionVersion"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 5298
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getDefaultRuntimePermissionsVersion(I)I

    move-result v0

    return v0
.end method

.method public getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5303
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5304
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5304
    invoke-static {v1, v0, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5306
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_14

    const/4 v2, 0x0

    goto :goto_1c

    .line 5307
    :cond_14
    invoke-interface {v1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v2

    .line 5306
    :goto_1c
    return-object v2
.end method

.method public getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5313
    .local v0, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5314
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v2, v0, :cond_1b

    .line 5318
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v2

    .line 5319
    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v2

    .line 5318
    return-object v2

    .line 5315
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not belong to calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 5326
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 5328
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$maddPermierFlagIfNeedForGlobalROM(Lcom/android/server/pm/PackageManagerService;)V

    .line 5330
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5331
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5332
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_43

    .line 5333
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 5334
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    const-string/jumbo v2, "ro.opengles.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 5336
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5338
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2

    .line 5332
    .end local v0    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5343
    const-string/jumbo v0, "packageNames cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5344
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUSPEND_APPS"

    const-string v2, "getUnsuspendablePackagesForUser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5347
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_2c

    .line 5351
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5348
    :cond_2c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot query getUnsuspendablePackagesForUser for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5357
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can read the verifier device identity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5361
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5362
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getVerifierDeviceIdentityLPw(Lcom/android/server/pm/Computer;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5363
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 5403
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmTestUtilityService(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/TestUtilityService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/TestUtilityService;->verifyHoldLockToken(Landroid/os/IBinder;)V

    .line 5405
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5406
    int-to-long v1, p2

    :try_start_f
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 5407
    monitor-exit v0

    .line 5408
    return-void

    .line 5407
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installFlags"    # I
    .param p4, "installReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 5416
    .local p5, "whiteListedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    move-result v0

    return v0
.end method

.method public isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5422
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 5424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5422
    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 5425
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5431
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 5433
    .local v7, "callingAppId":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 5434
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "isPackageStateProtected"

    move-object v0, v8

    move v1, v6

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5437
    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_2f

    if-eqz v7, :cond_2f

    .line 5438
    const-string v0, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-interface {v8, v0, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_27

    goto :goto_2f

    .line 5440
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have the android.permission.MANAGE_DEVICE_ADMINS permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5444
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .registers 4
    .param p1, "actionName"    # Ljava/lang/String;

    .line 5449
    if-eqz p1, :cond_24

    .line 5451
    const-string v0, "android.net.netmon.lingerExpired"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.android.server.sip.SipWakeupTimer"

    .line 5452
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.android.internal.telephony.data-reconnect"

    .line 5453
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "android.net.netmon.launchCaptivePortalApp"

    .line 5454
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5455
    :cond_22
    const/4 v0, 0x1

    return v0

    .line 5459
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v0

    .line 5460
    :try_start_29
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5461
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw v1
.end method

.method synthetic lambda$deleteApplicationCacheFilesAsUser$1$com-android-server-pm-PackageManagerService$IPackageManagerImpl(Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "hasAccessInstantApps"    # I
    .param p4, "userId"    # I
    .param p5, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 4944
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 4945
    .local v0, "newSnapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 4946
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v2, 0x1

    .line 4947
    .local v2, "doClearData":Z
    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 4948
    nop

    .line 4949
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v4

    .line 4950
    .local v4, "targetIsInstantApp":Z
    if-eqz v4, :cond_22

    if-nez p3, :cond_20

    goto :goto_22

    :cond_20
    const/4 v5, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    move v5, v3

    :goto_23
    move v2, v5

    .line 4953
    .end local v4    # "targetIsInstantApp":Z
    :cond_24
    if-eqz v2, :cond_51

    .line 4954
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4955
    const/4 v5, 0x7

    .line 4957
    .local v5, "flags":I
    :try_start_2c
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 4960
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object v7

    const/16 v8, 0x17

    invoke-virtual {v7, v6, p4, v8}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 4962
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v6, p4, v8}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 4964
    .end local v5    # "flags":I
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    monitor-exit v4

    goto :goto_51

    :catchall_4e
    move-exception v3

    monitor-exit v4
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_4e

    throw v3

    .line 4966
    :cond_51
    :goto_51
    if-eqz p5, :cond_5f

    .line 4968
    :try_start_53
    invoke-interface {p5, p1, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    .line 4971
    goto :goto_5f

    .line 4969
    :catch_57
    move-exception v3

    .line 4970
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    return-void
.end method

.method synthetic lambda$extendVerificationTimeout$2$com-android-server-pm-PackageManagerService$IPackageManagerImpl(IIIJ)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "callingUid"    # I
    .param p4, "millisecondsToDelay"    # J

    .line 5019
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageVerificationState;

    .line 5020
    .local v0, "state":Lcom/android/server/pm/PackageVerificationState;
    new-instance v1, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v1, p2, p3}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 5023
    .local v1, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-wide v2, p4

    .line 5024
    .local v2, "delay":J
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-lez v4, :cond_1a

    .line 5025
    const-wide/32 v2, 0x36ee80

    .line 5027
    :cond_1a
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_22

    .line 5028
    const-wide/16 v2, 0x0

    .line 5031
    :cond_22
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    if-nez v4, :cond_42

    .line 5032
    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->extendTimeout()V

    .line 5034
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5035
    .local v4, "msg":Landroid/os/Message;
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 5036
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5037
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5039
    .end local v4    # "msg":Landroid/os/Message;
    :cond_42
    return-void
.end method

.method synthetic lambda$freeStorage$3$com-android-server-pm-PackageManagerService$IPackageManagerImpl(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 22
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "flags"    # I
    .param p5, "pi"    # Landroid/content/IntentSender;

    .line 5068
    const-string v1, "PackageManager"

    const/4 v2, 0x0

    .line 5070
    .local v2, "success":Z
    move-object/from16 v3, p0

    :try_start_5
    iget-object v0, v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_14

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    :try_start_d
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_12

    .line 5071
    const/4 v2, 0x1

    .line 5074
    goto :goto_1e

    .line 5072
    :catch_12
    move-exception v0

    goto :goto_1b

    :catch_14
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    .line 5073
    .local v0, "e":Ljava/io/IOException;
    :goto_1b
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5075
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1e
    if-eqz p5, :cond_3f

    .line 5077
    :try_start_20
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 5078
    .local v0, "options":Landroid/app/BroadcastOptions;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 5079
    const/4 v9, 0x0

    if-eqz v2, :cond_2c

    const/4 v8, 0x1

    :cond_2c
    move v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 5081
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    .line 5079
    move-object/from16 v8, p5

    invoke-virtual/range {v8 .. v15}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_20 .. :try_end_3a} :catch_3b

    .line 5084
    .end local v0    # "options":Landroid/app/BroadcastOptions;
    goto :goto_3f

    .line 5082
    :catch_3b
    move-exception v0

    .line 5083
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5086
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_3f
    :goto_3f
    return-void
.end method

.method synthetic lambda$freeStorageAndNotify$4$com-android-server-pm-PackageManagerService$IPackageManagerImpl(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .registers 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "flags"    # I
    .param p5, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 5095
    const-string v0, "PackageManager"

    const/4 v1, 0x0

    .line 5097
    .local v1, "success":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_a

    .line 5098
    const/4 v1, 0x1

    .line 5101
    goto :goto_e

    .line 5099
    :catch_a
    move-exception v2

    .line 5100
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5102
    .end local v2    # "e":Ljava/io/IOException;
    :goto_e
    if-eqz p5, :cond_19

    .line 5104
    const/4 v2, 0x0

    :try_start_11
    invoke-interface {p5, v2, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 5107
    goto :goto_19

    .line 5105
    :catch_15
    move-exception v2

    .line 5106
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5109
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method

.method synthetic lambda$movePackage$5$com-android-server-pm-PackageManagerService$IPackageManagerImpl(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "moveId"    # I
    .param p4, "callingUid"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 5492
    :try_start_0
    new-instance v0, Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/MovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 5494
    .local v0, "movePackageHelper":Lcom/android/server/pm/MovePackageHelper;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_f} :catch_10

    .line 5499
    .end local v0    # "movePackageHelper":Lcom/android/server/pm/MovePackageHelper;
    goto :goto_32

    .line 5496
    :catch_10
    move-exception v0

    .line 5497
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5498
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, p3, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 5500
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_32
    return-void
.end method

.method synthetic lambda$setApplicationCategoryHint$9$com-android-server-pm-PackageManagerService$IPackageManagerImpl(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 10
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "categoryHint"    # I
    .param p4, "initialState"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .param p5, "computer"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5707
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p5, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_89

    .line 5711
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 5712
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 5714
    nop

    .line 5715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5714
    invoke-interface {p5, p2, v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5716
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_70

    .line 5720
    nop

    .line 5721
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 5720
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 5726
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getCategoryOverride()I

    move-result v1

    if-eq v1, p3, :cond_4b

    .line 5727
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v1, p4, p2, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v1

    return-object v1

    .line 5730
    :cond_4b
    const/4 v1, 0x0

    return-object v1

    .line 5722
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not installer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5717
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown target package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5708
    .end local v0    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_89
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$setInstallerPackageName$12$com-android-server-pm-PackageManagerService$IPackageManagerImpl(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/Computer;)Ljava/lang/Boolean;
    .registers 25
    .param p1, "callingUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "callingUserId"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 5962
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-interface {v6, v2}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    .line 5963
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 5962
    if-eqz v0, :cond_18

    .line 5963
    return-object v8

    .line 5966
    :cond_18
    nop

    .line 5967
    invoke-interface {v6, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 5968
    .local v9, "targetPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v9, :cond_16b

    .line 5969
    invoke-interface {v6, v9, v2, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_16b

    .line 5974
    const/4 v0, 0x0

    .line 5975
    .local v0, "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v5, :cond_4f

    .line 5976
    invoke-interface {v6, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5977
    if-eqz v0, :cond_36

    .line 5978
    invoke-interface {v6, v0, v2, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v10

    if-nez v10, :cond_36

    move-object v10, v0

    goto :goto_50

    .line 5980
    :cond_36
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown installer package: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5975
    :cond_4f
    move-object v10, v0

    .line 5986
    .end local v0    # "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v10, "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_50
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 5987
    .local v11, "appId":I
    nop

    .line 5988
    invoke-interface {v6, v11}, Lcom/android/server/pm/Computer;->getPackageOrSharedUser(I)Landroid/util/Pair;

    move-result-object v12

    .line 5989
    .local v12, "either":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;>;"
    if-eqz v12, :cond_152

    .line 5990
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_6d

    .line 5991
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    move-object v13, v0

    .local v0, "callerSignature":[Landroid/content/pm/Signature;
    goto :goto_7a

    .line 5993
    .end local v0    # "callerSignature":[Landroid/content/pm/Signature;
    :cond_6d
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/SharedUserApi;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    move-object v13, v0

    .line 6001
    .local v13, "callerSignature":[Landroid/content/pm/Signature;
    :goto_7a
    if-eqz v10, :cond_a5

    .line 6002
    nop

    .line 6003
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 6002
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_a5

    .line 6005
    :cond_8c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller does not have same cert as new installer package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6013
    :cond_a5
    :goto_a5
    nop

    .line 6014
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v14, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 6015
    .local v14, "targetInstallerPackageName":Ljava/lang/String;
    if-nez v14, :cond_b0

    .line 6016
    const/4 v0, 0x0

    goto :goto_b4

    :cond_b0
    invoke-interface {v6, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    :goto_b4
    move-object v15, v0

    .line 6018
    .local v15, "targetInstallerPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v15, :cond_e1

    .line 6019
    nop

    .line 6020
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 6019
    invoke-static {v13, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v7

    if-nez v7, :cond_c8

    goto/16 :goto_14c

    .line 6022
    :cond_c8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller does not have same cert as old installer package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6026
    :cond_e1
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14c

    .line 6031
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v18, "150857253"

    const/16 v17, 0x0

    aput-object v18, v0, v17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v0, v16

    const/16 v16, 0x2

    const-string v17, ""

    aput-object v17, v0, v16

    const v4, 0x534e4554

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6033
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 6035
    .local v16, "binderToken":J
    :try_start_10e
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v4, 0x8fde625

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0
    :try_end_11d
    .catchall {:try_start_10e .. :try_end_11d} :catchall_147

    if-nez v0, :cond_124

    .line 6043
    nop

    .line 6046
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6043
    return-object v8

    .line 6038
    :cond_124
    :try_start_124
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Neither user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nor current process has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v9    # "targetPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "appId":I
    .end local v12    # "either":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;>;"
    .end local v13    # "callerSignature":[Landroid/content/pm/Signature;
    .end local v14    # "targetInstallerPackageName":Ljava/lang/String;
    .end local v15    # "targetInstallerPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .end local p1    # "callingUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "callingUserId":I
    .end local p4    # "installerPackageName":Ljava/lang/String;
    .end local p5    # "snapshot":Lcom/android/server/pm/Computer;
    throw v0
    :try_end_147
    .catchall {:try_start_124 .. :try_end_147} :catchall_147

    .line 6046
    .restart local v9    # "targetPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v11    # "appId":I
    .restart local v12    # "either":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;>;"
    .restart local v13    # "callerSignature":[Landroid/content/pm/Signature;
    .restart local v14    # "targetInstallerPackageName":Ljava/lang/String;
    .restart local v15    # "targetInstallerPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v16    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .restart local p1    # "callingUid":I
    .restart local p2    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "callingUserId":I
    .restart local p4    # "installerPackageName":Ljava/lang/String;
    .restart local p5    # "snapshot":Lcom/android/server/pm/Computer;
    :catchall_147
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6047
    throw v0

    .line 6050
    .end local v16    # "binderToken":J
    :cond_14c
    :goto_14c
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 5996
    .end local v13    # "callerSignature":[Landroid/content/pm/Signature;
    .end local v14    # "targetInstallerPackageName":Ljava/lang/String;
    .end local v15    # "targetInstallerPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_152
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown calling UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5971
    .end local v10    # "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "appId":I
    .end local v12    # "either":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;>;"
    :cond_16b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown target package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$setMimeGroup$16$com-android-server-pm-PackageManagerService$IPackageManagerImpl(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v1

    const/4 v2, -0x1

    move-object/from16 v10, p1

    invoke-virtual {v1, v10, v2}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    .line 6146
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 6147
    .local v1, "snapShot":Lcom/android/server/pm/Computer;
    new-instance v7, Ljava/util/ArrayList;

    .line 6148
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6149
    .local v7, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 6150
    .local v11, "appId":I
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v2

    .line 6151
    .local v2, "userIds":[I
    const-string v12, "The mimeGroup is changed"

    .line 6152
    .local v12, "reason":Ljava/lang/String;
    const/4 v3, 0x0

    move v13, v3

    .local v13, "i":I
    :goto_2b
    array-length v3, v2

    if-ge v13, v3, :cond_59

    .line 6153
    nop

    .line 6154
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v3

    aget v4, v2, v13

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 6155
    .local v14, "pkgUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v14, :cond_56

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 6156
    aget v3, v2, v13

    invoke-static {v3, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 6157
    .local v15, "packageUid":I
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x1

    const-string v9, "The mimeGroup is changed"

    move-object v4, v1

    move-object/from16 v5, p1

    move v8, v15

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 6152
    .end local v14    # "pkgUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v15    # "packageUid":I
    :cond_56
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    .line 6161
    .end local v13    # "i":I
    :cond_59
    return-void
.end method

.method public logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "apkFile"    # Ljava/lang/String;
    .param p6, "pid"    # I

    .line 5471
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5472
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 5473
    return-void

    .line 5475
    :cond_12
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_19

    .line 5476
    return-void

    .line 5478
    :cond_19
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 5479
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 5478
    move-object/from16 v6, p5

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/ProcessLoggingHandler;->logAppProcessStart(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 5481
    return-void
.end method

.method public makeProviderVisible(ILjava/lang/String;)V
    .registers 15
    .param p1, "recipientUid"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;

    .line 5368
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5369
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5370
    .local v9, "recipientUserId":I
    nop

    .line 5371
    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v10

    .line 5372
    .local v10, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v10, :cond_12

    .line 5373
    return-void

    .line 5375
    :cond_12
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5376
    .local v11, "visibleUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    .line 5377
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5376
    move-object v2, v0

    move v3, v9

    move v6, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    .line 5379
    return-void
.end method

.method public makeUidVisible(II)V
    .registers 15
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I

    .line 5383
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MAKE_UID_VISIBLE"

    const-string/jumbo v2, "makeUidVisible"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5386
    .local v0, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5387
    .local v9, "recipientUserId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 5388
    .local v10, "visibleUserId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    .line 5389
    .local v11, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "makeUidVisible"

    move-object v3, v11

    move v4, v0

    move v5, v9

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5391
    const-string/jumbo v8, "makeUidVisible"

    move v5, v10

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5393
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "makeUidVisible"

    move-object v1, v11

    move v2, p1

    move v3, v10

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5396
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5397
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 5396
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, v11

    move v3, v9

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    .line 5399
    return-void
.end method

.method public movePackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;

    .line 5485
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOVE_PACKAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5488
    .local v0, "callingUid":I
    new-instance v9, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v9, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5489
    .local v9, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmNextMoveId(Lcom/android/server/pm/PackageManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 5490
    .local v1, "moveId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v1

    move v8, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5501
    return v1
.end method

.method public movePrimaryStorage(Ljava/lang/String;)I
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5506
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOVE_PACKAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5508
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmNextMoveId(Lcom/android/server/pm/PackageManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 5509
    .local v0, "realMoveId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5510
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5511
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 5513
    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V

    .line 5525
    .local v2, "callback":Landroid/content/pm/IPackageMoveObserver;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 5526
    .local v3, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v3, p1, v2}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 5527
    return v0
.end method

.method public notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 14
    .param p1, "loadingPackageName"    # Ljava/lang/String;
    .param p3, "loaderIsa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5534
    .local p2, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5535
    .local v0, "callingUid":I
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PackageManager"

    if-eqz v1, :cond_29

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_29

    .line 5537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non System Server process reporting dex loads as system server. uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    return-void

    .line 5551
    :cond_29
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5552
    .local v1, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, p1, v4, v5, v1}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 5554
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v9, :cond_5a

    .line 5555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading a package that does not exist for the calling user. package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    return-void

    .line 5559
    :cond_5a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object v3

    .line 5560
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v8

    .line 5559
    move-object v4, v9

    move-object v5, p2

    move-object v6, p3

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V

    .line 5561
    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 5565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5566
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5567
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 5569
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v2, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 5570
    invoke-interface {v2, p1, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    .local v3, "notify":Z
    goto :goto_21

    .line 5572
    .end local v3    # "notify":Z
    :cond_19
    const/16 v3, 0x3e8

    invoke-interface {v2, p1, v1, v3}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5575
    .restart local v3    # "notify":Z
    :goto_21
    if-nez v3, :cond_24

    .line 5576
    return-void

    .line 5579
    :cond_24
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, p1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 5580
    return-void
.end method

.method public notifyPackagesReplacedReceived([Ljava/lang/String;)V
    .registers 8
    .param p1, "packages"    # [Ljava/lang/String;

    .line 6270
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6271
    .local v0, "computer":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 6272
    .local v1, "packagesToNotify":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 6273
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    .line 6272
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6275
    .end local v2    # "index":I
    :cond_20
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 6295
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 6296
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;-><init>(Landroid/content/pm/IPackageManager;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V

    .line 6297
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 6298
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6281
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/IPackageManagerBase;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 6282
    :catch_5
    move-exception v0

    .line 6283
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_19

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_19

    instance-of v1, v0, Landroid/os/ParcelableException;

    if-nez v1, :cond_19

    .line 6285
    const-string v1, "PackageManager"

    const-string v2, "Package Manager Unexpected Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6287
    :cond_19
    throw v0
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "userId"    # I

    .line 5585
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 5588
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 5589
    return-void

    .line 5586
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Override label should be a valid String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "componentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 5594
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5595
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5596
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5597
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 5598
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/Computer;II)V

    .line 5599
    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/pm/PackageProperty;->queryProperty(Ljava/lang/String;ILjava/util/function/Predicate;)Ljava/util/List;

    move-result-object v3

    .line 5604
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v3, :cond_27

    .line 5605
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4

    .line 5607
    :cond_27
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5617
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5618
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 5619
    return-void

    .line 5620
    :cond_11
    nop

    .line 5621
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    .line 5620
    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5622
    return-void

    .line 5624
    :cond_1f
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 5625
    return-void
.end method

.method public registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dexModulePath"    # Ljava/lang/String;
    .param p3, "isSharedModule"    # Z
    .param p4, "callback"    # Landroid/content/pm/IDexModuleRegisterCallback;

    .line 5631
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5632
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 5634
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_3b

    .line 5635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering a dex module for a package that does not exist for the calling user. package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 v3, 0x0

    const-string v4, "Package not installed"

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    .local v2, "result":Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    goto :goto_45

    .line 5640
    .end local v2    # "result":Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    :cond_3b
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3, v0}, Lcom/android/server/pm/dex/DexManager;->registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    move-result-object v2

    .line 5643
    .restart local v2    # "result":Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    :goto_45
    if-eqz p4, :cond_53

    .line 5644
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v4, p4, p2, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda15;-><init>(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5654
    :cond_53
    return-void
.end method

.method public registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 5658
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5660
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->register(Landroid/content/pm/IPackageMoveObserver;)V

    .line 5661
    return-void
.end method

.method public requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeSplits"    # Z
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "trustedInstallers"    # Ljava/util/List;
    .param p6, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p7, "userId"    # I

    .line 6263
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 6265
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v11

    .line 6263
    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 6266
    return-void
.end method

.method public restoreDomainVerification([BI)V
    .registers 7
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 5665
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_44

    .line 5670
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5671
    .local v0, "input":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 5675
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->restoreSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlPullParser;)V

    .line 5676
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    .line 5681
    .end local v0    # "input":Ljava/io/ByteArrayInputStream;
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    goto :goto_43

    .line 5677
    :catch_22
    move-exception v0

    .line 5678
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_43

    .line 5679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception restoring domain verification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    return-void

    .line 5666
    :cond_44
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call restorePreferredActivities()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreLabelAndIcon(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 5686
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 5687
    return-void
.end method

.method public sendDeviceCustomizationReadyBroadcast()V
    .registers 4

    .line 5691
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_DEVICE_CUSTOMIZATION_READY"

    const-string/jumbo v2, "sendDeviceCustomizationReadyBroadcast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5696
    .local v0, "ident":J
    :try_start_10
    invoke-static {}, Lcom/android/server/pm/BroadcastHelper;->sendDeviceCustomizationReadyBroadcast()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    .line 5698
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5699
    nop

    .line 5700
    return-void

    .line 5698
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5699
    throw v2
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "categoryHint"    # I
    .param p3, "callerPackageName"    # Ljava/lang/String;

    .line 5706
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5734
    .local v0, "implementation":Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction<Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5735
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 5736
    .local v1, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isStateChanged()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isSpecificPackageNull()Z

    move-result v2

    if-nez v2, :cond_44

    .line 5739
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    monitor-enter v2

    .line 5740
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-object v1, v3

    .line 5741
    monitor-exit v2

    goto :goto_44

    :catchall_41
    move-exception v3

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_41

    throw v3

    .line 5744
    :cond_44
    :goto_44
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isCommitted()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 5745
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 5747
    :cond_51
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 8
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 5752
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5753
    :cond_b
    if-nez p5, :cond_15

    .line 5754
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    .line 5757
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v1, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Ljava/lang/String;II)V

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p4, p5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    .line 5759
    return-void
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "userId"    # I

    .line 5764
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 5766
    .local v12, "callingUid":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    .line 5767
    .local v13, "snapshot":Lcom/android/server/pm/Computer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationHiddenSetting for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v13

    move v3, v12

    move/from16 v4, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5770
    const-string v0, "PackageManager"

    const/4 v2, 0x0

    if-eqz v9, :cond_63

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 5771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not hiding package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": has active device admin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    return v2

    .line 5776
    :cond_63
    const-string v3, "android"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 5777
    const-string v3, "Cannot hide package: android"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    return v2

    .line 5782
    :cond_71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationHiddenSettingAsUser pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hidden: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5784
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5785
    .local v14, "msg":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-static {v3, v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 5787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5789
    .local v15, "callingId":J
    nop

    .line 5790
    :try_start_b0
    invoke-interface {v13, v8, v12, v10}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_1a6

    move-object v7, v3

    .line 5791
    .local v7, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v7, :cond_bc

    .line 5792
    nop

    .line 5846
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5792
    return v2

    .line 5798
    :cond_bc
    :try_start_bc
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    move-object/from16 v17, v3

    .line 5799
    .local v17, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v17, :cond_120

    .line 5801
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v3
    :try_end_c8
    .catchall {:try_start_bc .. :try_end_c8} :catchall_1a6

    const-string v4, "Cannot hide package: "

    if-eqz v3, :cond_f3

    .line 5802
    :try_start_cc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " providing SDK library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5804
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5802
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_cc .. :try_end_ee} :catchall_1a6

    .line 5805
    nop

    .line 5846
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5805
    return v2

    .line 5810
    :cond_f3
    :try_start_f3
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_120

    .line 5811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " providing static shared library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5813
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5811
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_f3 .. :try_end_11b} :catchall_1a6

    .line 5814
    nop

    .line 5846
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5814
    return v2

    .line 5818
    :cond_120
    if-eqz v9, :cond_151

    :try_start_122
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {v12, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_151

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 5819
    invoke-virtual {v3, v10, v8}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 5820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not hiding protected package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catchall {:try_start_122 .. :try_end_14c} :catchall_1a6

    .line 5821
    nop

    .line 5846
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5821
    return v2

    .line 5824
    :cond_151
    :try_start_151
    invoke-interface {v7, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v0
    :try_end_159
    .catchall {:try_start_151 .. :try_end_159} :catchall_1a6

    if-ne v0, v9, :cond_160

    .line 5825
    nop

    .line 5846
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5825
    return v2

    .line 5828
    :cond_160
    :try_start_160
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, v10, v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;-><init>(IZ)V

    invoke-virtual {v0, v11, v8, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 5831
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5832
    .local v0, "newSnapshot":Lcom/android/server/pm/Computer;
    nop

    .line 5833
    invoke-interface {v0, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    move-object v11, v2

    .line 5835
    .local v11, "newPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v9, :cond_18b

    .line 5836
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    const-string v4, "hiding pkg"

    invoke-virtual {v2, v8, v3, v10, v4}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 5837
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v8, v11, v10}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msendApplicationHiddenForUser(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    move-object/from16 v19, v7

    goto :goto_19c

    .line 5839
    :cond_18b
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v18, 0x0

    move-object v3, v0

    move-object/from16 v4, p1

    move-object v5, v11

    move/from16 v6, p3

    move-object/from16 v19, v7

    .end local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v19, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 5843
    :goto_19c
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_1a1
    .catchall {:try_start_160 .. :try_end_1a1} :catchall_1a6

    .line 5844
    const/4 v2, 0x1

    .line 5846
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5844
    return v2

    .line 5846
    .end local v0    # "newSnapshot":Lcom/android/server/pm/Computer;
    .end local v11    # "newPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v19    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_1a6
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5847
    throw v0
.end method

.method public setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "blockUninstall"    # Z
    .param p3, "userId"    # I

    .line 5853
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5855
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5856
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5857
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_7b

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 5858
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 5860
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4e

    .line 5861
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot block uninstall of package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " providing SDK library: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5862
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5861
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5863
    return v4

    .line 5868
    :cond_4e
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7b

    .line 5869
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot block uninstall of package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " providing static shared library: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5870
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5869
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5871
    return v4

    .line 5874
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7b
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 5875
    :try_start_80
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p3, p1, p2}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    .line 5876
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_8f

    .line 5878
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 5879
    const/4 v2, 0x1

    return v2

    .line 5876
    :catchall_8f
    move-exception v3

    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v3
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 5885
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5887
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v1, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    .line 5889
    return-void
.end method

.method public setComponentEnabledSettings(Ljava/util/List;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;I)V"
        }
    .end annotation

    .line 5893
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5894
    :cond_b
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5898
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    .line 5899
    return-void

    .line 5895
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of enabled settings is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;
    .registers 12
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "restrictionFlags"    # I
    .param p3, "userId"    # I

    .line 5904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5905
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 5906
    .local v7, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "setDistractingPackageRestrictionsAsUser"

    invoke-static {v0, v6, p3, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceCanSetDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 5908
    const-string/jumbo v0, "packageNames cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5909
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object v0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DistractingPackageHelper;->setDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 5916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5917
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 5919
    .local v7, "callingAppId":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 5920
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "setHarmfulAppInfo"

    move-object v0, v8

    move v1, v6

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5923
    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_30

    if-eqz v7, :cond_30

    .line 5924
    const-string v0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    invoke-interface {v8, v0, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_30

    .line 5926
    :cond_28
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5930
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v0

    .line 5933
    .local v0, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isSpecificPackageNull()Z

    move-result v1

    if-nez v1, :cond_48

    .line 5936
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 5937
    return-void

    .line 5934
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInstallLocation(I)Z
    .registers 5
    .param p1, "loc"    # I

    .line 5941
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5943
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstallLocation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_12

    .line 5944
    return v1

    .line 5946
    :cond_12
    if-eqz p1, :cond_1c

    if-eq p1, v1, :cond_1c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    goto :goto_1c

    .line 5953
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 5949
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_install_location"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5951
    return v1
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .line 5958
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5959
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5961
    .local v7, "callingUserId":I
    new-instance v8, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;

    move-object v0, v8

    move-object v1, p0

    move v2, v6

    move-object v3, p1

    move v4, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;)V

    .line 6052
    .local v0, "implementation":Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<Lcom/android/server/pm/Computer;Ljava/lang/Boolean;Ljava/lang/RuntimeException;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object v1

    .line 6053
    .local v1, "initialState":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 6054
    .local v2, "allowed":Z
    if-eqz v2, :cond_9f

    .line 6058
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 6059
    :try_start_30
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v5, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v5, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p1, v5}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v4

    .line 6061
    .local v4, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isPackagesChanged()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isStateChanged()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 6062
    :cond_47
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v5

    monitor-enter v5
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_9c

    .line 6063
    :try_start_4e
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v2, v8

    .line 6064
    if-eqz v2, :cond_96

    .line 6065
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v10, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, p1, v10}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6070
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_4e .. :try_end_6d} :catchall_99

    .line 6072
    :cond_6d
    :try_start_6d
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 6073
    .local v5, "targetPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 6074
    .end local v4    # "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_9c

    .line 6075
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 6076
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    goto :goto_9f

    .line 6068
    .end local v5    # "targetPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    :cond_96
    :try_start_96
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_99

    :try_start_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_9c

    return-void

    .line 6070
    :catchall_99
    move-exception v8

    :try_start_9a
    monitor-exit v5
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    .end local v0    # "implementation":Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<Lcom/android/server/pm/Computer;Ljava/lang/Boolean;Ljava/lang/RuntimeException;>;"
    .end local v1    # "initialState":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .end local v2    # "allowed":Z
    .end local v6    # "callingUid":I
    .end local v7    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .end local p1    # "targetPackage":Ljava/lang/String;
    .end local p2    # "installerPackageName":Ljava/lang/String;
    :try_start_9b
    throw v8

    .line 6074
    .end local v4    # "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .restart local v0    # "implementation":Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<Lcom/android/server/pm/Computer;Ljava/lang/Boolean;Ljava/lang/RuntimeException;>;"
    .restart local v1    # "initialState":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .restart local v2    # "allowed":Z
    .restart local v6    # "callingUid":I
    .restart local v7    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .restart local p1    # "targetPackage":Ljava/lang/String;
    .restart local p2    # "installerPackageName":Ljava/lang/String;
    :catchall_9c
    move-exception v4

    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_9c

    throw v4

    .line 6078
    :cond_9f
    :goto_9f
    return-void
.end method

.method public setInstantAppCookie(Ljava/lang/String;[BI)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cookie"    # [B
    .param p3, "userId"    # I

    .line 6086
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6087
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "setInstantAppCookie"

    move-object v1, v0

    move v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 6091
    return v2

    .line 6094
    :cond_20
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 6095
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_46

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_2d

    goto :goto_46

    .line 6098
    :cond_2d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6099
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v4

    .line 6098
    invoke-virtual {v2, v3, p2, v4, p3}, Lcom/android/server/pm/InstantAppRegistry;->setInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[BII)Z

    move-result v2

    return v2

    .line 6096
    :cond_46
    :goto_46
    return v2
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6104
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.KEEP_UNINSTALLED_PACKAGES"

    const-string/jumbo v2, "setKeepUninstalledPackages requires KEEP_UNINSTALLED_PACKAGES permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6109
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V

    .line 6110
    return-void
.end method

.method public setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6114
    .local p3, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6115
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6116
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 6117
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6118
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_2c

    .line 6121
    .end local v2    # "mimeType":Ljava/lang/String;
    goto :goto_17

    .line 6119
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "MIME type length exceeds 255 characters"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6122
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_34
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 6123
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getMimeGroups()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 6124
    .local v2, "existingMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_ae

    .line 6128
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_55

    .line 6129
    invoke-interface {v2, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 6130
    return-void

    .line 6132
    :cond_55
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-gt v3, v4, :cond_8b

    .line 6137
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6138
    .local v3, "mimeTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda18;

    invoke-direct {v6, p2, v3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6141
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 6142
    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 6164
    :cond_85
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 6165
    return-void

    .line 6133
    .end local v3    # "mimeTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_8b
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max limit on MIME types for MIME group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exceeded for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6125
    :cond_ae
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown MIME group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setPackageStoppedState(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stopped"    # Z
    .param p3, "userId"    # I

    .line 6169
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6170
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V

    .line 6171
    return-void
.end method

.method public setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 21
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 6177
    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 6178
    .local v11, "callingUid":I
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    .line 6179
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "setPackagesSuspendedAsUser"

    move-object v2, v12

    move-object/from16 v3, p6

    move v4, v11

    move/from16 v5, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V

    .line 6181
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v1

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/SuspendPackageHelper;->setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setRequiredForSystemUser(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requiredForSystemUser"    # Z

    .line 6187
    const-string/jumbo v0, "setRequiredForSystemUser can only be run by the system or root"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6190
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v0

    .line 6192
    .local v0, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 6193
    const/4 v1, 0x0

    return v1

    .line 6196
    :cond_1a
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 6197
    const/4 v1, 0x1

    return v1
.end method

.method public setRuntimePermissionsVersion(II)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 6203
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 6204
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 6205
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "setRuntimePermissionVersion"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 6207
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings;->setDefaultRuntimePermissionsVersion(II)V

    .line 6208
    return-void
.end method

.method public setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 6213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6214
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 6215
    .local v7, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "setSplashScreenTheme"

    move-object v0, v7

    move v1, v6

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6217
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v7, p1, v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6219
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v7, p1, v6, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6221
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_23

    .line 6222
    return-void

    .line 6225
    :cond_23
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v3, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6227
    return-void
.end method

.method public setUpdateAvailable(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updateAvailable"    # Z

    .line 6231
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6232
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;-><init>(Z)V

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6234
    return-void
.end method

.method public unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 6238
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6240
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->unregister(Landroid/content/pm/IPackageMoveObserver;)V

    .line 6241
    return-void
.end method

.method public verifyPendingInstall(II)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6245
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can verify applications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6250
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6251
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v2, p2, v0}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 6253
    .local v2, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 6254
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6255
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6256
    return-void
.end method
