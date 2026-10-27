.class public Lcom/android/server/contentcapture/ContentCaptureManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "ContentCaptureManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentCaptureManagerService"


# instance fields
.field public activityStartAssistDataEnabled:Z

.field public mAm:Landroid/app/ActivityManagerInternal;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

.field public mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

.field public mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

.field public mContentProtectionServiceComponentName:Landroid/content/ComponentName;

.field public final mDataShareExecutor:Ljava/util/concurrent/Executor;

.field public mDevCfgContentProtectionAllowlistDelayMs:J

.field public mDevCfgContentProtectionAllowlistTimeoutMs:J

.field public mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

.field public mDevCfgContentProtectionBufferSize:I

.field public mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

.field public mDevCfgContentProtectionOptionalGroupsThreshold:I

.field public mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

.field public mDevCfgDisableFlushForViewTreeAppearing:Z

.field public mDevCfgEnableContentProtectionReceiver:Z

.field public mDevCfgIdleFlushingFrequencyMs:I

.field public mDevCfgIdleUnbindTimeoutMs:I

.field public mDevCfgLogHistorySize:I

.field public mDevCfgLoggingLevel:I

.field public mDevCfgMaxBufferSize:I

.field public mDevCfgTextChangeFlushingFrequencyMs:I

.field public mDisabledByDeviceConfig:Z

.field public mDisabledBySettings:Landroid/util/SparseBooleanArray;

.field public final mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

.field public final mHandler:Landroid/os/Handler;

.field public final mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

.field public final mPackagesWithShareRequests:Ljava/util/Set;

.field public final mRequestsHistory:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$64vO7SjbMFAC1o2JWK6_TrAf9MU(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->parseContentProtectionGroupConfigValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DUcqVvNSkDxh98oyE27pL-C7ZwM(Ljava/lang/String;Landroid/content/ContentCaptureOptions;Landroid/view/contentcapture/IContentCaptureOptionsCallback;Ljava/lang/Object;)V
    .registers 4

    .line 776
    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 778
    :try_start_6
    invoke-interface {p2, p1}, Landroid/view/contentcapture/IContentCaptureOptionsCallback;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 780
    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send setContentCaptureOptions(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static synthetic $r8$lambda$N-o61MHO5SRJYm6nAONoea1TnNY(Ljava/lang/String;)Z
    .registers 1

    .line 1072
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$gBmB5yhH0937OWzkjUTYcTnVEHc(Ljava/util/List;)Z
    .registers 1

    .line 1066
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$r9orUFbJiiEfcNWnEHkrV1ycFD4(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .registers 1

    .line 736
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    return-void
.end method

.method public static synthetic $r8$lambda$rv9iiMrq0VpYg3zSxy5dLgDWLoE(Ljava/util/ArrayList;Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .registers 2

    .line 762
    invoke-virtual {p1, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ug3PluyhK-JKu-VvACrdq4IzHDY(Lcom/android/server/contentcapture/ContentCaptureManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetactivityStartAssistDataEnabled(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentProtectionAllowlistManager(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentProtectionConsentManager(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/contentprotection/ContentProtectionConsentManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataShareExecutor(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisabledByDeviceConfig(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$massertCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByServiceLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAmInternal(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getAmInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misContentProtectionEnabledLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isContentProtectionEnabledLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDefaultServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDefaultServiceLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDisabledBySettingsLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 268
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040258

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "no_content_capture"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 166
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/server/contentcapture/ContentCaptureManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 168
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 243
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    .line 244
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    .line 246
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 249
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 252
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 273
    sget-object p1, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 275
    sget-object p1, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 278
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 277
    const-string v3, "content_capture"

    invoke-static {v3, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 280
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDeviceConfigProperties()V

    .line 282
    iget p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    if-lez p1, :cond_8c

    .line 283
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_82

    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "log history size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_82
    new-instance p1, Landroid/util/LocalLog;

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-direct {p1, v0}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    goto :goto_aa

    .line 286
    :cond_8c
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_a8

    .line 287
    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled log history because size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_a8
    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 292
    :goto_aa
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 293
    :goto_af
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_103

    .line 294
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 295
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 298
    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " disabled by settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v3, :cond_ea

    .line 300
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 302
    :cond_ea
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 305
    :cond_ef
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 306
    invoke-interface {v4, v1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 307
    invoke-interface {v5, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v5

    .line 305
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->-$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :cond_103
    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method private setDeviceConfigProperties()V
    .registers 3

    .line 647
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 648
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    .line 649
    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setActivityStartAssistDataEnabled()V

    return-void
.end method


# virtual methods
.method public assertCalledByPackageOwner(Ljava/lang/String;)V
    .registers 6

    .line 397
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 402
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 403
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 404
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v3

    if-eq v1, v3, :cond_1f

    .line 407
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void

    .line 412
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 414
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 416
    array-length v1, p0

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_41

    aget-object v3, p0, v2

    .line 417
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    return-void

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 421
    :cond_41
    throw v0
.end method

.method public final assertCalledByServiceLocked(Ljava/lang/String;)V
    .registers 2

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 798
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "caller is not user\'s ContentCapture service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createContentProtectionAllowlistManager(J)Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;
    .registers 5

    .line 953
    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 954
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Landroid/os/Handler;J)V

    return-object v0
.end method

.method public createContentProtectionConsentManager()Lcom/android/server/contentprotection/ContentProtectionConsentManager;
    .registers 4

    .line 962
    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 963
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 964
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 965
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/app/admin/DevicePolicyCache;)V

    return-object v0
.end method

.method public createContentProtectionServiceInfo(Landroid/content/ComponentName;)Landroid/service/contentcapture/ContentCaptureServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 994
    new-instance v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 995
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    return-object v0
.end method

.method public createRemoteContentProtectionService()Lcom/android/server/contentprotection/RemoteContentProtectionService;
    .registers 6

    .line 1003
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionServiceComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_d

    goto :goto_1b

    .line 1009
    :cond_d
    iget-wide v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    .line 1010
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_19

    .line 1014
    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createContentProtectionServiceInfo(Landroid/content/ComponentName;)Landroid/service/contentcapture/ContentCaptureServiceInfo;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_18

    .line 1020
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createRemoteContentProtectionService(Landroid/content/ComponentName;J)Lcom/android/server/contentprotection/RemoteContentProtectionService;

    move-result-object p0

    return-object p0

    :catch_18
    return-object v2

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 1006
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit v0

    return-object v2

    .line 1010
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public createRemoteContentProtectionService(Landroid/content/ComponentName;J)Lcom/android/server/contentprotection/RemoteContentProtectionService;
    .registers 11

    .line 1028
    new-instance v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1031
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v4

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/contentprotection/RemoteContentProtectionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IZJ)V

    return-object v0
.end method

.method public destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 6

    .line 726
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 729
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2d

    .line 731
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_35

    .line 733
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_40

    .line 736
    :cond_2d
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 738
    :cond_35
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_2b

    .line 741
    :try_start_36
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3f} :catch_3f

    :catch_3f
    return-void

    .line 738
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_2b

    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 873
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    const-string v1, "Users disabled by Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 880
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    const-string v1, "DeviceConfig Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    const-string v1, "disabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 885
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    const-string/jumbo v1, "loggingLevel: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 888
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    const-string/jumbo v1, "maxBufferSize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 891
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    const-string v1, "idleFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 893
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 894
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    const-string/jumbo v1, "textChangeFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 897
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v1, "logHistorySize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 900
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    const-string v1, "idleUnbindTimeoutMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 903
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    const-string v1, "disableFlushForViewTreeAppearing: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 906
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    const-string v1, "enableContentProtectionReceiver: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 909
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    const-string v1, "contentProtectionBufferSize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 912
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    const-string v1, "contentProtectionRequiredGroupsSize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 915
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    const-string v1, "contentProtectionOptionalGroupsSize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 918
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    const-string v1, "contentProtectionOptionalGroupsThreshold: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroupsThreshold:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 921
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    const-string v1, "contentProtectionAllowlistDelayMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 923
    iget-wide v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAllowlistDelayMs:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 924
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    const-string v1, "contentProtectionAllowlistTimeoutMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget-wide v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAllowlistTimeoutMs:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 927
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    const-string v1, "contentProtectionAutoDisconnectTimeoutMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    iget-wide v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 930
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    const-string v1, "activityStartAssistDataEnabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 933
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    const-string p1, "Global Options:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enforceCallingPermissionForManagement()V
    .registers 3

    .line 360
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_CONTENT_CAPTURE"

    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAmInternal()Landroid/app/ActivityManagerInternal;
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    if-nez v1, :cond_14

    .line 789
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 791
    :cond_14
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_12

    .line 792
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    return-object p0

    .line 791
    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public getContentCaptureManagerServiceStub()Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
    .registers 1

    .line 1040
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    return-object p0
.end method

.method public final getContentProtectionServiceComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 970
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContentProtectionServiceFlatComponentName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 974
    :cond_8
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getContentProtectionServiceFlatComponentName()Ljava/lang/String;
    .registers 2

    .line 981
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040259

    .line 982
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceConfigEnableContentProtectionReceiver()Z
    .registers 3

    .line 941
    const-string p0, "enable_content_protection_receiver"

    const/4 v0, 0x0

    const-string v1, "content_capture"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .registers 1

    .line 0
    const p0, 0x1d4c0

    return p0
.end method

.method public final isCalledByServiceLocked(Ljava/lang/String;)Z
    .registers 8

    .line 804
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 806
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 807
    const-string v3, ": called by UID "

    const/4 v4, 0x0

    if-nez v2, :cond_33

    .line 808
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but there\'s no service set for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 813
    :cond_33
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_53

    .line 815
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": invalid service name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 819
    :cond_53
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 824
    :try_start_5f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_67} :catch_8b

    if-eq v1, p0, :cond_89

    .line 830
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but service UID is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_89
    const/4 p0, 0x1

    return p0

    .line 826
    :catch_8b
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not verify UID for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final isContentProtectionEnabledLocked()Z
    .registers 2

    .line 1078
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionServiceComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 1082
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 1083
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final isDefaultServiceLocked(I)Z
    .registers 3

    .line 861
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 866
    :cond_a
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    .line 867
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isDisabledBySettingsLocked(I)Z
    .registers 2

    .line 426
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isDisabledLocked(I)Z
    .registers 3

    .line 390
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 391
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final isEnabledBySettings(I)Z
    .registers 4

    .line 430
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content_capture_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_12

    return v1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .registers 2

    .line 319
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 7

    .line 749
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listSessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 752
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 755
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_38

    .line 757
    :try_start_2a
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_40

    .line 759
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    goto :goto_40

    :catchall_36
    move-exception p0

    goto :goto_4c

    .line 762
    :cond_38
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 764
    :cond_40
    :goto_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_36

    .line 766
    const-string/jumbo p0, "sessions"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    .line 768
    :try_start_48
    invoke-interface {p2, p0, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_4b

    :catch_4b
    return-void

    .line 764
    :goto_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_36

    throw p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .registers 5

    .line 314
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V

    return-object v0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->newServiceLocked(IZ)Lcom/android/server/contentcapture/ContentCapturePerUserService;

    move-result-object p0

    return-object p0
.end method

.method public final onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 436
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_12c

    goto/16 :goto_fb

    :sswitch_21
    const-string v2, "idle_flush_frequency"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_fb

    :cond_2b
    const/16 v3, 0x10

    goto/16 :goto_fb

    :sswitch_2f
    const-string v2, "idle_unbind_timeout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_fb

    :cond_39
    const/16 v3, 0xf

    goto/16 :goto_fb

    :sswitch_3d
    const-string v2, "content_protection_auto_disconnect_timeout_ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_fb

    :cond_47
    const/16 v3, 0xe

    goto/16 :goto_fb

    :sswitch_4b
    const-string v2, "content_protection_allowlist_timeout_ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    goto/16 :goto_fb

    :cond_55
    const/16 v3, 0xd

    goto/16 :goto_fb

    :sswitch_59
    const-string/jumbo v2, "max_buffer_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    goto/16 :goto_fb

    :cond_64
    const/16 v3, 0xc

    goto/16 :goto_fb

    :sswitch_68
    const-string v2, "content_protection_optional_groups_threshold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    goto/16 :goto_fb

    :cond_72
    const/16 v3, 0xb

    goto/16 :goto_fb

    :sswitch_76
    const-string v2, "enable_activity_start_assist_content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    goto/16 :goto_fb

    :cond_80
    const/16 v3, 0xa

    goto/16 :goto_fb

    :sswitch_84
    const-string/jumbo v2, "log_history_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto/16 :goto_fb

    :cond_8f
    const/16 v3, 0x9

    goto/16 :goto_fb

    :sswitch_93
    const-string v2, "content_protection_required_groups_config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    goto/16 :goto_fb

    :cond_9d
    const/16 v3, 0x8

    goto/16 :goto_fb

    :sswitch_a1
    const-string/jumbo v2, "text_change_flush_frequency"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    goto :goto_fb

    :cond_ab
    const/4 v3, 0x7

    goto :goto_fb

    :sswitch_ad
    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    goto :goto_fb

    :cond_b7
    const/4 v3, 0x6

    goto :goto_fb

    :sswitch_b9
    const-string v2, "content_protection_buffer_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    goto :goto_fb

    :cond_c2
    const/4 v3, 0x5

    goto :goto_fb

    :sswitch_c4
    const-string v2, "content_protection_allowlist_delay_ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    goto :goto_fb

    :cond_cd
    const/4 v3, 0x4

    goto :goto_fb

    :sswitch_cf
    const-string v2, "content_protection_optional_groups_config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    goto :goto_fb

    :cond_d8
    const/4 v3, 0x3

    goto :goto_fb

    :sswitch_da
    const-string/jumbo v2, "logging_level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    goto :goto_fb

    :cond_e4
    const/4 v3, 0x2

    goto :goto_fb

    :sswitch_e6
    const-string v2, "enable_content_protection_receiver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ef

    goto :goto_fb

    :cond_ef
    const/4 v3, 0x1

    goto :goto_fb

    :sswitch_f1
    const-string v2, "disable_flush_for_view_tree_appearing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fa

    goto :goto_fb

    :cond_fa
    const/4 v3, 0x0

    :goto_fb
    packed-switch v3, :pswitch_data_172

    goto :goto_102

    .line 463
    :pswitch_ff
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setActivityStartAssistDataEnabled()V

    .line 465
    :goto_102
    sget-object v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_11a
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    return-void

    .line 442
    :pswitch_123
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    return-void

    .line 460
    :pswitch_127
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    :cond_12a
    return-void

    nop

    :sswitch_data_12c
    .sparse-switch
        -0x7e578822 -> :sswitch_f1
        -0x7844c0ed -> :sswitch_e6
        -0x756f795c -> :sswitch_da
        -0x56ba5cb2 -> :sswitch_cf
        -0x4d1e1e66 -> :sswitch_c4
        -0x2fcca540 -> :sswitch_b9
        -0x120a1673 -> :sswitch_ad
        -0x8e1195c -> :sswitch_a1
        -0x1fc56b3 -> :sswitch_93
        0xd94a5e7 -> :sswitch_84
        0x2c6a8394 -> :sswitch_76
        0x32ad38df -> :sswitch_68
        0x42b4ba45 -> :sswitch_59
        0x433b4afc -> :sswitch_4b
        0x5cfa5017 -> :sswitch_3d
        0x5d828843 -> :sswitch_2f
        0x7b4a3376 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_127
        :pswitch_127
        :pswitch_123
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_11a
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_ff
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
    .end packed-switch
.end method

.method public onServiceNameChanged(ILjava/lang/String;Z)V
    .registers 5

    .line 353
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->-$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceNameChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .registers 2

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_b

    .line 346
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatedLocked()V

    :cond_b
    return-void
.end method

.method public onServicePackageUpdatingLocked(I)V
    .registers 2

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_b

    .line 338
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatingLocked()V

    :cond_b
    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V
    .registers 3

    .line 331
    invoke-virtual {p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroyLocked()V

    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 144
    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V

    return-void
.end method

.method public onSettingsChanged(ILjava/lang/String;)V
    .registers 4

    .line 378
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const-string v0, "content_capture_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 384
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected property ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "); updating cache instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 381
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result p2

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setContentCaptureFeatureEnabledBySettingsForUser(IZ)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 324
    const-string v0, "content_capture"

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 325
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final parseContentProtectionGroupConfigValues(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 1071
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 1072
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1073
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public parseContentProtectionGroupsConfig(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_1b

    .line 1059
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseContentProtectionGroupsConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-nez p1, :cond_20

    .line 1062
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1064
    :cond_20
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 1065
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 1066
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1067
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5

    .line 371
    const-string p0, "content_capture_enabled"

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final setActivityStartAssistDataEnabled()V
    .registers 5

    .line 656
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    const-string v1, "content_capture"

    const-string v2, "enable_activity_start_assist_content"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    .line 660
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final setContentCaptureFeatureEnabledBySettingsForUser(IZ)V
    .registers 8

    .line 699
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_11

    .line 701
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_81

    .line 703
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    xor-int/2addr v1, p2

    if-nez v1, :cond_39

    .line 705
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_37

    .line 706
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContentCaptureFeatureEnabledForUser(): already "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_37
    monitor-exit v0

    return-void

    :cond_39
    if-eqz p2, :cond_58

    .line 711
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentCaptureFeatureEnabled(): enabling service for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_74

    .line 715
    :cond_58
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentCaptureFeatureEnabled(): disabling service for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_74
    if-eqz p2, :cond_7c

    .line 719
    iget-boolean p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-eqz p2, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v2, 0x0

    .line 720
    :cond_7c
    :goto_7c
    invoke-virtual {p0, p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 721
    monitor-exit v0

    return-void

    :goto_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_f

    throw p0
.end method

.method public final setDisabledByDeviceConfig(Ljava/lang/String;)V
    .registers 11

    .line 664
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_1b

    .line 665
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisabledByDeviceConfig(): explicitlyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2d

    .line 671
    const-string v3, "false"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    move p1, v2

    goto :goto_2e

    :cond_2d
    move p1, v1

    .line 677
    :goto_2e
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 678
    :try_start_31
    iget-boolean v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-ne v4, p1, :cond_55

    .line 679
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_53

    .line 680
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisabledByDeviceConfig(): already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :catchall_51
    move-exception p0

    goto :goto_bb

    .line 682
    :cond_53
    :goto_53
    monitor-exit v3

    return-void

    .line 684
    :cond_55
    iput-boolean p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 686
    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisabledByDeviceConfig(): set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 687
    :goto_71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_b9

    .line 688
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 689
    iget-boolean v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v5, :cond_8c

    invoke-virtual {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v5

    if-eqz v5, :cond_8a

    goto :goto_8c

    :cond_8a
    move v5, v1

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v5, v2

    .line 690
    :goto_8d
    sget-object v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDisabledByDeviceConfig(): updating service for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_a7

    .line 691
    const-string v8, "\'disabled\'"

    goto :goto_a9

    :cond_a7
    const-string v8, "\'enabled\'"

    :goto_a9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 690
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p0, v4, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    add-int/lit8 p1, p1, 0x1

    goto :goto_71

    .line 694
    :cond_b9
    monitor-exit v3

    return-void

    :goto_bb
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_31 .. :try_end_bc} :catchall_51

    throw p0
.end method

.method public setFineTuneParamsFromDeviceConfig()V
    .registers 16

    .line 482
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    const-string v1, "content_capture"

    const-string/jumbo v2, "max_buffer_size"

    const/16 v3, 0x1f4

    .line 484
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    .line 488
    const-string v1, "content_capture"

    const-string v2, "idle_flush_frequency"

    const/16 v3, 0x1388

    .line 489
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    .line 493
    const-string v1, "content_capture"

    const-string/jumbo v2, "text_change_flush_frequency"

    const/16 v3, 0x3e8

    .line 494
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    .line 499
    const-string v1, "content_capture"

    const-string/jumbo v2, "log_history_size"

    const/16 v3, 0x14

    .line 500
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 504
    const-string v1, "content_capture"

    const-string v2, "idle_unbind_timeout"

    const/4 v3, 0x0

    .line 505
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 509
    const-string v1, "content_capture"

    const-string v2, "disable_flush_for_view_tree_appearing"

    .line 510
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    .line 516
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    .line 517
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getDeviceConfigEnableContentProtectionReceiver()Z

    move-result v2

    .line 518
    const-string v4, "content_capture"

    const-string v5, "content_protection_buffer_size"

    const/16 v6, 0x96

    .line 519
    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    .line 523
    const-string v4, "content_capture"

    const-string v5, "content_protection_required_groups_config"

    const-string v6, ""

    .line 524
    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 529
    const-string v5, "content_capture"

    const-string v6, "content_protection_optional_groups_config"

    const-string v7, ""

    .line 530
    invoke-static {v5, v6, v7}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 535
    const-string v6, "content_capture"

    const-string v7, "content_protection_optional_groups_threshold"

    .line 536
    invoke-static {v6, v7, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 541
    const-string v6, "content_capture"

    const-string v7, "content_protection_allowlist_delay_ms"

    const-wide/16 v8, 0x7530

    .line 542
    invoke-static {v6, v7, v8, v9}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 546
    const-string v8, "content_capture"

    const-string v9, "content_protection_allowlist_timeout_ms"

    const-wide/16 v10, 0xfa

    .line 547
    invoke-static {v8, v9, v10, v11}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 551
    const-string v10, "content_capture"

    const-string v11, "content_protection_auto_disconnect_timeout_ms"

    const-wide/16 v12, 0xbb8

    .line 552
    invoke-static {v10, v11, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    .line 557
    iget-object v10, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 559
    iget-boolean v11, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v11, :cond_131

    .line 560
    sget-object v11, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setFineTuneParamsFromDeviceConfig(): bufferSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", idleFlush="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", textFlush="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", logHistory="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", idleUnbindTimeoutMs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", disableFlushForViewTreeAppearing="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", enableContentProtectionReceiver="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", contentProtectionBufferSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", contentProtectionRequiredGroupsConfig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", contentProtectionOptionalGroupsConfig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", contentProtectionOptionalGroupsThreshold="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", contentProtectionAllowlistDelayMs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", contentProtectionAllowlistTimeoutMs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", contentProtectionAutoDisconnectTimeoutMs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAutoDisconnectTimeoutMs:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    :catchall_12f
    move-exception p0

    goto :goto_17e

    .line 592
    :cond_131
    :goto_131
    monitor-exit v0
    :try_end_132
    .catchall {:try_start_3 .. :try_end_132} :catchall_12f

    .line 595
    invoke-virtual {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->parseContentProtectionGroupsConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 597
    invoke-virtual {p0, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->parseContentProtectionGroupsConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v10, :cond_141

    if-nez v2, :cond_141

    .line 603
    invoke-virtual {v10}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->stop()V

    :cond_141
    const/4 v5, 0x0

    if-nez v1, :cond_15e

    if-eqz v2, :cond_15e

    .line 606
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContentProtectionServiceComponentName()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_15b

    .line 609
    invoke-virtual {p0, v8, v9}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createContentProtectionAllowlistManager(J)Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    move-result-object v5

    .line 611
    invoke-virtual {v5, v6, v7}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->start(J)V

    .line 612
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createContentProtectionConsentManager()Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    move-result-object v8

    move-object v9, v8

    move-object v8, v5

    :goto_159
    move-object v5, v10

    goto :goto_160

    :cond_15b
    move-object v8, v5

    move-object v9, v8

    goto :goto_159

    :cond_15e
    move-object v8, v5

    move-object v9, v8

    .line 616
    :goto_160
    iget-object v10, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 617
    :try_start_163
    iput-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgEnableContentProtectionReceiver:Z

    .line 618
    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    .line 619
    iput-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    .line 620
    iput v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroupsThreshold:I

    .line 622
    iput-wide v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionAllowlistDelayMs:J

    xor-int v0, v1, v2

    if-eqz v0, :cond_17a

    .line 625
    iput-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionServiceComponentName:Landroid/content/ComponentName;

    .line 626
    iput-object v8, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionAllowlistManager:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 627
    iput-object v9, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentProtectionConsentManager:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    goto :goto_17a

    :catchall_178
    move-exception p0

    goto :goto_17c

    .line 629
    :cond_17a
    :goto_17a
    monitor-exit v10

    return-void

    :goto_17c
    monitor-exit v10
    :try_end_17d
    .catchall {:try_start_163 .. :try_end_17d} :catchall_178

    throw p0

    .line 592
    :goto_17e
    :try_start_17e
    monitor-exit v0
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_12f

    throw p0
.end method

.method public final setLoggingLevelFromDeviceConfig()V
    .registers 4

    .line 633
    const-string/jumbo v0, "logging_level"

    .line 636
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    move-result v1

    .line 633
    const-string v2, "content_capture"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 637
    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 638
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 639
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_49

    .line 641
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLoggingLevelFromDeviceConfig(): level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", verbose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void
.end method

.method public final throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .registers 5

    .line 847
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x0

    return p0

    :catch_5
    move-exception p0

    .line 851
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, -0x1

    invoke-interface {p1, v0, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_2f

    :catch_13
    move-exception p1

    .line 853
    sget-object p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send security exception ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    const/4 p0, 0x1

    return p0
.end method

.method public updateOptions(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V
    .registers 4

    .line 775
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method
