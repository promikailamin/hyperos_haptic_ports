.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
.super Landroid/app/appfunctions/IAppFunctionManager$Stub;
.source "AppFunctionManagerServiceImpl.java"


# static fields
.field public static final ADDITIONAL_AGENTS_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String;

.field public static final sSystemAllowlist:Ljava/util/List;


# instance fields
.field public final mAdbAgentObserver:Landroid/database/ContentObserver;

.field public mAgentAllowlist:Landroid/util/ArraySet;

.field public final mAgentAllowlistLock:Ljava/lang/Object;

.field public final mAgentAllowlistStorage:Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;

.field public final mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

.field public final mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

.field public final mLocks:Ljava/util/Map;

.field public final mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

.field public final mMultiUserAppFunctionAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitors:Landroid/util/SparseArray;

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

.field public mSecureSettingAgentAllowlist:Ljava/util/List;

.field public final mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

.field public mUpdatableAgentAllowlist:Ljava/util/List;

.field public final mUriGrantsManager:Landroid/app/IUriGrantsManager;

.field public final mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$6kInw7zwpkytxn9Tk4LhAu9yNaQ(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$setAppFunctionEnabled$7(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BFi24TCZHPJylbyDh2fxPaXu8Mk(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$6(Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FABTgpCpq-4URaV8-b02rU84caQ(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunction$2(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KN2mlmwFujBsitB5QJrJZLDSilk(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 3

    .line 443
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    .line 444
    :cond_7
    new-instance p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    const-string p1, "The app function is disabled"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;-><init>(Ljava/lang/String;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl-IA;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$LpcQzypVFHX4Aw275pYnC8oGKw0(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$5(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VVBkqvg1RyThw5MaWDaLL8Cci1U(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p2, :cond_9

    .line 1062
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register observer: "

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V

    return-void
.end method

.method public static synthetic $r8$lambda$YO6X1mtiUkgcHYzazpoJJLy3hD0(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$acoSb6gcMIF_5wJ8gd0qq-QIonQ(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$executeAppFunctionInternal$4(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$byvFcJt9qjsOmVQ1Z0l5ofBB7no(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->lambda$recordAppFunctionAccess$11(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jNciGjOFUKCdSwsa6_o9FWYUOL8(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 1103
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$pojaSJcOkieOOPrD2DCnEG20Jww(Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 2

    if-nez p1, :cond_a

    .line 1079
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 1080
    :cond_a
    :goto_a
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Sync was not successful"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLoggerWrapper(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgrantTemporaryUriPermissions(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->grantTemporaryUriPermissions(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecordAppFunctionAccess(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->recordAppFunctionAccess(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAgentAllowlist(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;ZZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->updateAgentAllowlist(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetADDITIONAL_AGENTS_URI()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->ADDITIONAL_AGENTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 117
    const-class v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    .line 123
    const-string v0, "app_function_additional_agent_allowlist"

    .line 124
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->ADDITIONAL_AGENTS_URI:Landroid/net/Uri;

    .line 152
    new-instance v0, Landroid/content/pm/SignedPackage;

    const-string v1, "com.android.shell"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/pm/SignedPackage;-><init>(Ljava/lang/String;[B)V

    .line 153
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->sSystemAllowlist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Landroid/app/appfunctions/AppFunctionAccessServiceInterface;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;Ljava/util/concurrent/Executor;)V
    .registers 25

    move-object/from16 v1, p1

    .line 193
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v2, v1, v0, v3}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lcom/android/server/appfunctions/CallerValidatorImpl;

    const-class v0, Landroid/os/UserManager;

    .line 200
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/UserManager;

    move-object/from16 v8, p3

    invoke-direct {v3, v1, v8, v0}, Lcom/android/server/appfunctions/CallerValidatorImpl;-><init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionAccessServiceInterface;Landroid/os/UserManager;)V

    new-instance v4, Lcom/android/server/appfunctions/ServiceHelperImpl;

    invoke-direct {v4, v1}, Lcom/android/server/appfunctions/ServiceHelperImpl;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/appfunctions/ServiceConfigImpl;

    invoke-direct {v5}, Lcom/android/server/appfunctions/ServiceConfigImpl;-><init>()V

    new-instance v11, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;

    invoke-direct {v11, v1}, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 193
    invoke-direct/range {v0 .. v14}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;Landroid/app/appfunctions/AppFunctionAccessServiceInterface;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Lcom/android/server/appfunctions/DeviceSettingHelper;Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;Landroid/app/appfunctions/AppFunctionAccessServiceInterface;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Lcom/android/server/appfunctions/DeviceSettingHelper;Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;Ljava/util/concurrent/Executor;)V
    .registers 17

    .line 228
    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;-><init>()V

    .line 131
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageMonitors:Landroid/util/SparseArray;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlistLock:Ljava/lang/Object;

    .line 157
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUpdatableAgentAllowlist:Ljava/util/List;

    .line 161
    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mSecureSettingAgentAllowlist:Ljava/util/List;

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->sSystemAllowlist:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlist:Landroid/util/ArraySet;

    .line 167
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;

    .line 168
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAdbAgentObserver:Landroid/database/ContentObserver;

    .line 309
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 229
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 230
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/server/appfunctions/RemoteServiceCaller;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    .line 231
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/appfunctions/CallerValidator;

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 232
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/appfunctions/ServiceHelper;

    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 233
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/appfunctions/ServiceConfig;

    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 234
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    .line 235
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 236
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p8, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    iput-object p8, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    .line 237
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p9, Landroid/app/IUriGrantsManager;

    iput-object p9, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    .line 238
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p10, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object p10, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 239
    const-string p1, "appfunctions"

    .line 241
    invoke-interface {p10, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPermissionOwner:Landroid/os/IBinder;

    .line 242
    invoke-static {p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p11, Lcom/android/server/appfunctions/DeviceSettingHelper;

    iput-object p11, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    .line 243
    invoke-static {p12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlistStorage:Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;

    .line 245
    invoke-static {p13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p13, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mMultiUserAppFunctionAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    .line 246
    invoke-static/range {p14 .. p14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, p14

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6

    .line 511
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 512
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    invoke-direct {v1, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {p0, p1, p2, p3, v1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-object v0
.end method

.method public static reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V
    .registers 3

    .line 850
    :try_start_0
    new-instance v0, Landroid/os/ParcelableException;

    invoke-direct {v0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 852
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to report the exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final accessCheckFlagsEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final bindAppFunctionServiceUnchecked(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;ILandroid/os/IBinder;I)V
    .registers 18

    .line 939
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    .line 940
    new-instance p4, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;

    invoke-direct {p4, p0, v6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/os/CancellationSignal;)V

    .line 948
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 953
    invoke-interface {v1}, Lcom/android/server/appfunctions/ServiceConfig;->getExecuteAppFunctionCancellationTimeoutMillis()J

    move-result-wide v4

    new-instance v7, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 961
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    move/from16 v2, p8

    .line 959
    invoke-virtual {p0, p3, v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getPackageSigningInfo(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/content/pm/SigningInfo;

    move-result-object p0

    invoke-direct {v7, p1, p4, p5, p0}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/content/pm/SigningInfo;)V

    move-object v1, p2

    move-object v3, p3

    move v2, p6

    move-object/from16 v8, p7

    .line 949
    invoke-interface/range {v0 .. v8}, Lcom/android/server/appfunctions/RemoteServiceCaller;->runServiceCall(Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 966
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Failed to bind to the AppFunctionService"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x7d0

    const-string p2, "Failed to bind the AppFunctionService."

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    :cond_3e
    return-void
.end method

.method public clearAccessHistory(I)V
    .registers 3

    .line 667
    invoke-virtual {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->clearAccessHistory_enforcePermission()V

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->enforceClearAccessHistoryUserPermission(I)V

    .line 670
    :try_start_6
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mMultiUserAppFunctionAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->asUser(I)Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/appfunctions/AppFunctionAccessHistory;->deleteAll()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 672
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "Unable to clear access history"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public createRequestAccessIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 785
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    .line 787
    invoke-interface {v0, p1}, Lcom/android/server/appfunctions/DeviceSettingHelper;->getPermissionOwnerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 788
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.appfunctions.action.REQUEST_APP_FUNCTION_ACCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 285
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 289
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 291
    :try_start_f
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsState(Landroid/content/Context;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    throw p0
.end method

.method public final enforceClearAccessHistoryUserPermission(I)V
    .registers 4

    .line 677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 678
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 679
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/appfunctions/CallerValidator;->verifyUserInteraction(III)V

    return-void
.end method

.method public executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;
    .registers 12

    .line 345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 349
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 352
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v6

    .line 357
    :try_start_12
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 358
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 360
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 359
    invoke-interface {v1, v2, v0}, Lcom/android/server/appfunctions/CallerValidator;->verifyTargetUserHandle(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_25} :catch_37

    .line 368
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 370
    sget-object v8, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v5

    :catch_37
    move-exception v0

    move-object p0, v0

    .line 362
    new-instance p1, Landroid/app/appfunctions/AppFunctionException;

    const/16 p2, 0x3e8

    .line 364
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 362
    invoke-virtual {v6, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    .registers 16

    .line 396
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 397
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v1, v0, v3}, Lcom/android/server/appfunctions/CallerValidator;->verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 399
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x7d2

    const-string p2, "Cannot run on a user with a restricted enterprise policy"

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    .line 406
    :cond_1d
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 408
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x3e9

    const-string p2, "Target package name cannot be empty."

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    .line 415
    :cond_38
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 420
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v6

    move v1, p2

    move-object v5, v2

    move v2, p3

    .line 416
    invoke-interface/range {v0 .. v6}, Lcom/android/server/appfunctions/CallerValidator;->verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    move-object v2, v5

    new-instance p3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    .line 423
    invoke-virtual {p2, p3}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;

    move-object v5, p1

    move-object v7, p4

    move-object v4, p5

    move-object v8, p6

    move v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;)V

    .line 450
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {p1, v1, v4}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    .line 498
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public getAccessFlags(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 6

    .line 566
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 569
    :cond_8
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    .line 570
    invoke-interface {v0, p3}, Lcom/android/server/appfunctions/DeviceSettingHelper;->getPermissionOwnerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 571
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->getAccessFlags(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAccessRequestState(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 6

    .line 612
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 615
    :cond_8
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    .line 616
    invoke-interface {v0, p3}, Lcom/android/server/appfunctions/DeviceSettingHelper;->getPermissionOwnerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 617
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->getAccessRequestState(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAgentAllowlist()Ljava/util/List;
    .registers 6

    .line 650
    invoke-virtual {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getAgentAllowlist_enforcePermission()V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 652
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 654
    :cond_c
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_f
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 656
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_31

    .line 658
    iget-object v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlist:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SignedPackage;

    invoke-virtual {v4}, Landroid/content/pm/SignedPackage;->getData()Landroid/content/pm/SignedPackageParcel;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :catchall_2f
    move-exception p0

    goto :goto_33

    .line 660
    :cond_31
    monitor-exit v0

    return-object v2

    .line 661
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_2f

    throw p0
.end method

.method public final getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;
    .registers 3

    .line 996
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/app/appsearch/AppSearchManager;

    .line 997
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    return-object p0
.end method

.method public getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 1097
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    monitor-enter v0

    .line 1102
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 1103
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    .line 1104
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final getPackageSigningInfo(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/content/pm/SigningInfo;
    .registers 10

    .line 977
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_e

    .line 982
    new-instance p0, Landroid/content/pm/SigningInfo;

    invoke-direct {p0}, Landroid/content/pm/SigningInfo;-><init>()V

    return-object p0

    .line 985
    :cond_e
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x8000000

    .line 991
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v1, p2

    move v4, p3

    .line 987
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 986
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 992
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/pm/SigningInfo;

    return-object p0
.end method

.method public final getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSession;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .registers 5

    .line 916
    invoke-static {p1, p2}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 917
    new-instance p1, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    const-string v0, "app_functions_runtime"

    invoke-direct {p1, v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-virtual {p1, v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object p1

    .line 920
    invoke-virtual {p1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object p1

    .line 922
    invoke-interface {p3, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchBatchResult;

    .line 923
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_37

    .line 924
    new-instance p2, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/GenericDocument;

    invoke-direct {p2, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object p2

    .line 926
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Function "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValidAgents(I)Ljava/util/List;
    .registers 3

    .line 623
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 624
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 626
    :cond_9
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-interface {p0, p1}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->getValidAgents(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValidTargets(I)Ljava/util/List;
    .registers 7

    .line 631
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 632
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 634
    :cond_9
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->getValidTargets(I)Ljava/util/List;

    move-result-object p1

    .line 635
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 637
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_2d

    .line 639
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 640
    iget-object v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    invoke-interface {v4, v3}, Lcom/android/server/appfunctions/DeviceSettingHelper;->getPermissionOwnerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 644
    :cond_2d
    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final grantTemporaryUriPermissions(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;I)V
    .registers 16

    .line 810
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 812
    :cond_7
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 813
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 815
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    .line 816
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    .line 817
    invoke-virtual {v1, v0, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 822
    :try_start_27
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getUriGrants()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_30
    if-ge v0, p3, :cond_7e

    .line 824
    invoke-virtual {p2}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->getUriGrants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appfunctions/AppFunctionUriGrant;

    .line 825
    const-string v2, "content"

    invoke-virtual {v1}, Landroid/app/appfunctions/AppFunctionUriGrant;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_75

    .line 827
    :cond_4d
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 830
    invoke-virtual {v1}, Landroid/app/appfunctions/AppFunctionUriGrant;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 829
    invoke-static {v2, v5}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    move-object v2, v1

    .line 831
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    move-object v5, v2

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPermissionOwner:Landroid/os/IBinder;

    .line 835
    invoke-virtual {v5}, Landroid/app/appfunctions/AppFunctionUriGrant;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 836
    invoke-virtual {v5}, Landroid/app/appfunctions/AppFunctionUriGrant;->getModeFlags()I

    move-result v5

    move-object v11, v6

    move v6, v5

    move-object v5, v11

    .line 831
    invoke-interface/range {v1 .. v8}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_75} :catch_7b
    .catchall {:try_start_27 .. :try_end_75} :catchall_78

    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :catchall_78
    move-exception v0

    move-object p0, v0

    goto :goto_8d

    :catch_7b
    move-exception v0

    move-object p0, v0

    goto :goto_82

    .line 843
    :cond_7e
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 841
    :goto_82
    :try_start_82
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "Granting URI permissions failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_78

    .line 843
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_8d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    throw p0
.end method

.method public initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .registers 7

    .line 1118
    new-instance v0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$4;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V

    new-instance v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$5;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V

    invoke-direct {v0, p2, v1, v2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$BeforeCompletionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;)V

    return-object v0
.end method

.method public final synthetic lambda$executeAppFunction$2(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .registers 8

    .line 379
    :try_start_0
    invoke-interface {p6}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p6

    .line 373
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    move-object p1, v0

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    move-result-object p0

    .line 381
    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void
.end method

.method public final synthetic lambda$executeAppFunctionInternal$4(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Ljava/lang/Integer;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .line 425
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    .line 426
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller does not have permission to execute the appfunction"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 433
    :cond_12
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;

    move-result-object p0

    sget-object p1, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 431
    invoke-static {v0, v1, p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Integer;)V

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$executeAppFunctionInternal$5(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;Ljava/lang/Integer;)V
    .registers 19

    .line 453
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const v0, 0x4000001

    :goto_a
    move v7, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_a

    .line 460
    :goto_e
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 461
    invoke-interface {v0, p1, p2}, Lcom/android/server/appfunctions/ServiceHelper;->resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_23

    .line 464
    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x7d0

    const-string p2, "Cannot find the target service."

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    .line 471
    :cond_23
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 472
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 476
    invoke-virtual {p4}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    .line 474
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 473
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-lez v4, :cond_44

    .line 481
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x1

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    :cond_44
    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    move-object v2, p4

    move v9, p5

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    .line 488
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->bindAppFunctionServiceUnchecked(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;ILandroid/os/IBinder;I)V

    return-void
.end method

.method public final synthetic lambda$executeAppFunctionInternal$6(Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 3

    .line 501
    invoke-virtual {p0, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    move-result-object p0

    .line 500
    invoke-virtual {p1, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final synthetic lambda$recordAppFunctionAccess$11(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)V
    .registers 13

    .line 1156
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mMultiUserAppFunctionAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    .line 1157
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->asUser(I)Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_e} :catch_18

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 1158
    :try_start_11
    invoke-interface/range {v1 .. v6}, Lcom/android/server/appfunctions/AppFunctionAccessHistory;->insertAppFunctionAccessHistory(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)J
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    :goto_16
    move-object p0, v0

    goto :goto_1b

    :catch_18
    move-exception v0

    move-object v2, p1

    goto :goto_16

    .line 1160
    :goto_1b
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to insert new access history to user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1160
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$setAppFunctionEnabled$7(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .registers 7

    .line 550
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d

    .line 551
    :try_start_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->setAppFunctionEnabledInternalLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V

    .line 553
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 554
    :try_start_9
    invoke-interface {p5}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onSuccess()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    goto :goto_12

    :catchall_f
    move-exception p0

    .line 553
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_d

    .line 556
    :goto_12
    sget-object p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "Error in setAppFunctionEnabled: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    invoke-static {p5, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public final mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;
    .registers 3

    .line 1001
    instance-of p0, p1, Ljava/util/concurrent/CompletionException;

    if-eqz p0, :cond_8

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 1005
    :cond_8
    instance-of p0, p1, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;

    if-eqz p0, :cond_f

    const/16 p0, 0x3eb

    goto :goto_1f

    .line 1011
    :cond_f
    instance-of p0, p1, Ljava/lang/SecurityException;

    if-eqz p0, :cond_16

    const/16 p0, 0x3e8

    goto :goto_1f

    .line 1013
    :cond_16
    instance-of p0, p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    if-eqz p0, :cond_1d

    const/16 p0, 0x3ea

    goto :goto_1f

    :cond_1d
    const/16 p0, 0x7d0

    .line 1016
    :goto_1f
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 305
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;-><init>(Landroid/content/Context;Landroid/app/appfunctions/IAppFunctionManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 306
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->onUserStarting(I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->removeUserSyncAdapter(Landroid/os/UserHandle;)V

    .line 273
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 275
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 276
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 278
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 279
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mMultiUserAppFunctionAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    :cond_31
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 251
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->registerAppSearchObserver(Lcom/android/server/SystemService$TargetUser;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v0, p1}, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;->registerPackageMonitorForUser(Landroid/content/Context;Lcom/android/server/SystemService$TargetUser;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 258
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mMultiUserAppFunctionAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    :cond_23
    return-void
.end method

.method public final readAdbAgentAllowlist()Ljava/util/List;
    .registers 5

    .line 766
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 770
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 767
    const-string v1, "app_function_additional_agent_allowlist"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_19

    .line 772
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 775
    :cond_19
    :try_start_19
    invoke-static {p0}, Lcom/android/server/appfunctions/SignedPackageParser;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception v0

    .line 777
    sget-object v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse agent list string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final readDeviceConfigAgentAllowlist()Ljava/util/List;
    .registers 6

    .line 723
    const-string v0, "allowlisted_app_functions_agents"

    const-string v1, ""

    .line 724
    const-string/jumbo v2, "machine_learning"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 729
    :try_start_11
    invoke-static {v0}, Lcom/android/server/appfunctions/SignedPackageParser;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 730
    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlistStorage:Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;

    invoke-virtual {v2, v0}, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->writeCurrentAllowlist(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    move-exception v1

    .line 733
    sget-object v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse agent allowlist from config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    :cond_32
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlistStorage:Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;

    invoke-virtual {v0}, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;->readPreviousValidAllowlist()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 738
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Using previously stored valid allowlist."

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 741
    :cond_42
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "No valid stored allowlist, falling back to static list."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->readPreloadedAgentAllowlist()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final readPreloadedAgentAllowlist()Ljava/util/List;
    .registers 5

    .line 747
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 748
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070047

    .line 749
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 752
    array-length v0, p0

    if-nez v0, :cond_13

    .line 753
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 755
    :cond_13
    const-string v0, ";"

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 757
    :try_start_19
    invoke-static {p0}, Lcom/android/server/appfunctions/SignedPackageParser;->parseList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception v0

    .line 759
    sget-object v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse preloaded allowlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final recordAppFunctionAccess(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V
    .registers 13

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1151
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestTime()J

    move-result-wide v2

    sub-long v9, v0, v2

    .line 1152
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getRequestWallTime()J

    move-result-wide v7

    .line 1153
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerAppSearchObserver(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

    .line 1037
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1038
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    .line 1039
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    if-nez v0, :cond_30

    .line 1041
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppSearch Manager not found for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1044
    :cond_30
    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V

    .line 1046
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;

    .line 1048
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1049
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;-><init>(Landroid/os/UserHandle;Landroid/content/Context;)V

    .line 1050
    new-instance p0, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    invoke-direct {p0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    .line 1054
    invoke-virtual {p0}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    move-result-object p0

    new-instance p1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    .line 1052
    const-string v2, "android"

    invoke-virtual {v1, v2, p0, p1, v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->registerObserverCallbackAsync(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    .line 1059
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public revokeSelfAccess(Ljava/lang/String;)V
    .registers 3

    .line 600
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 603
    :cond_7
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    .line 604
    invoke-interface {v0, p1}, Lcom/android/server/appfunctions/DeviceSettingHelper;->getPermissionOwnerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 605
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-interface {p0, p1}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->revokeSelfAccess(Ljava/lang/String;)V

    return-void
.end method

.method public setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .registers 14

    .line 540
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_23

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_12

    .line 541
    :try_start_8
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v0, p1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    move-object p0, v0

    move-object v7, p5

    goto :goto_26

    .line 547
    :cond_12
    :goto_12
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_23
    move-exception v0

    move-object v7, p5

    move-object p0, v0

    .line 544
    :goto_26
    invoke-static {v7, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->reportException(Landroid/app/appfunctions/IAppFunctionEnabledCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public final setAppFunctionEnabledInternalLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V
    .registers 8

    .line 870
    invoke-virtual {p0, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getAppSearchManagerAsUser(Landroid/os/UserHandle;)Landroid/app/appsearch/AppSearchManager;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 876
    new-instance p3, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v1, "appfunctions-db"

    invoke-direct {p3, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p3}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object p3

    .line 879
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    sget-object v2, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v2, p3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V

    .line 884
    :try_start_18
    new-instance p3, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 886
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSession;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 890
    new-instance p0, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {p0, p3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Landroid/app/appfunctions/AppFunctionRuntimeMetadata;)V

    .line 892
    invoke-virtual {p0, p4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setEnabled(I)Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    move-result-object p0

    .line 893
    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object p0

    .line 894
    new-instance p1, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/app/appsearch/GenericDocument;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    .line 898
    invoke-virtual {p1, p2}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object p0

    .line 899
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    .line 896
    invoke-interface {v1, p0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 901
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p1
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_6c

    if-eqz p1, :cond_55

    .line 905
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V

    return-void

    .line 902
    :cond_55
    :try_start_55
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed writing updated doc to AppSearch due to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p0

    .line 879
    :try_start_6d
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_75
    throw p0

    .line 873
    :cond_76
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AppSearchManager not found for user:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1071
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1072
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1070
    invoke-static {v0, p0}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    .line 1077
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    :cond_21
    return-void
.end method

.method public updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z
    .registers 8

    .line 584
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 587
    :cond_8
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    .line 588
    invoke-interface {v0, p3}, Lcom/android/server/appfunctions/DeviceSettingHelper;->getPermissionOwnerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 589
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-interface/range {p0 .. p6}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public final updateAgentAllowlist(ZZ)V
    .registers 6

    .line 683
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlistLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_10

    .line 687
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->readDeviceConfigAgentAllowlist()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_12

    .line 690
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUpdatableAgentAllowlist:Ljava/util/List;

    goto :goto_12

    :catchall_e
    move-exception p0

    goto :goto_4b

    .line 693
    :cond_10
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUpdatableAgentAllowlist:Ljava/util/List;

    .line 695
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUpdatableAgentAllowlist:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz p2, :cond_1f

    .line 698
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->readAdbAgentAllowlist()Ljava/util/List;

    move-result-object p2

    goto :goto_21

    .line 700
    :cond_1f
    iget-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mSecureSettingAgentAllowlist:Ljava/util/List;

    :goto_21
    if-eqz v1, :cond_2e

    .line 702
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mSecureSettingAgentAllowlist:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_2e

    .line 705
    :cond_2c
    monitor-exit v0

    return-void

    .line 708
    :cond_2e
    :goto_2e
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 709
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 710
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 711
    sget-object v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->sSystemAllowlist:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 713
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mUpdatableAgentAllowlist:Ljava/util/List;

    .line 714
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mSecureSettingAgentAllowlist:Ljava/util/List;

    .line 715
    iput-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAgentAllowlist:Landroid/util/ArraySet;

    .line 716
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    invoke-interface {p0, v1}, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;->setAgentAllowlist(Ljava/util/Set;)V

    .line 717
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_e

    throw p0
.end method
