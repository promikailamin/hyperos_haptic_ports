.class public Lcom/android/server/security/advancedprotection/AdvancedProtectionService;
.super Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;
.source "AdvancedProtectionService.java"


# instance fields
.field public final mCallbacks:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mEmitLogs:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHooks:Ljava/util/ArrayList;

.field public final mProviders:Ljava/util/ArrayList;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$YRxLhTb04fHYyMVzbjSCsnGHla4(Ljava/io/PrintWriter;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;)V
    .registers 4

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p1}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->isAvailable()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wlOBLW1fvDzfBOsZ6BIr6fsv6Yc(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Ljava/io/PrintWriter;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHooks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhoursSinceLastChange(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->hoursSinceLastChange()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitFeatures(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->initFeatures(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitLogging(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->initLogging()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAdvancedProtectionEnabledInternal(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 108
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    .line 109
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    invoke-direct {v0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    .line 112
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;Lcom/android/server/pm/UserManagerInternal;Landroid/os/Looper;Landroid/os/PermissionEnforcer;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;)V
    .registers 8

    .line 166
    invoke-direct {p0, p5}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 97
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    .line 99
    new-instance p7, Landroid/util/ArrayMap;

    invoke-direct {p7}, Landroid/util/ArrayMap;-><init>()V

    iput-object p7, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    .line 101
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    const/4 p7, 0x1

    .line 105
    iput-boolean p7, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    .line 167
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    .line 169
    iput-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 170
    new-instance p1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Landroid/os/Handler;

    if-eqz p6, :cond_2e

    .line 172
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dialogueTypeToLogEnum(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_7

    const/4 p0, 0x2

    if-eq p1, p0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 401
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    const-string p3, "AdvancedProtectionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 402
    :cond_b
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isAdvancedProtectionEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mHooks.size(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCallbacks.size(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mProviders.size(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string p1, "Hooks: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 413
    const-string p1, "  Providers: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Ljava/io/PrintWriter;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSharedPreferences: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceAdminUser(Landroid/os/UserHandle;)V
    .registers 2

    .line 373
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 374
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_11

    return-void

    .line 375
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only an admin user can manage advanced protection mode"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final featureIdToLogEnum(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_12

    const/4 v0, 0x2

    if-eq p1, p0, :cond_11

    if-eq p1, v0, :cond_f

    const/4 p0, 0x4

    if-eq p1, p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x5

    return p0

    :cond_f
    const/4 p0, 0x3

    return p0

    :cond_11
    return v0

    :cond_12
    return p0
.end method

.method public getAdvancedProtectionFeatures()Ljava/util/List;
    .registers 5

    .line 356
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getAdvancedProtectionFeatures_enforcePermission()V

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_32

    .line 362
    :goto_11
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_31

    .line 363
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;

    .line 364
    invoke-virtual {v1}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 365
    invoke-virtual {v1}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_31
    return-object v0

    .line 359
    :cond_32
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_7

    .line 436
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->initSharedPreferences()V

    .line 438
    :cond_7
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 390
    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V

    .line 393
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 394
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 395
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 391
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final hoursSinceLastChange()I
    .registers 6

    .line 345
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "enabled_change_time"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_1b

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public final initFeatures(Z)V
    .registers 6

    .line 116
    const-string v0, "AdvancedProtectionService"

    .line 118
    :try_start_2
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v1

    .line 120
    const-string v2, "Failed to initialize DisallowInstallUnknownSources"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v1

    .line 126
    const-string v2, "Failed to initialize MemoryTaggingExtension"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception v1

    .line 132
    const-string v2, "Failed to initialize DisallowCellular2g"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_3b
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    const-string v2, "aapm_usb_data_protection"

    const/4 v3, 0x1

    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->retrieveInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_59

    .line 140
    :try_start_46
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;-><init>(Landroid/content/Context;ZLcom/android/server/security/advancedprotection/AdvancedProtectionService;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception p0

    .line 142
    const-string p1, "Failed to initialize UsbDataAdvancedProtection"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_59
    :goto_59
    return-void
.end method

.method public final initLogging()V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 149
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V

    const/16 p0, 0x27fc

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final declared-synchronized initSharedPreferences()V
    .registers 5

    monitor-enter p0

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_20

    .line 443
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 444
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "advanced_protection_preference"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception v0

    goto :goto_22

    .line 448
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1e

    throw v0
.end method

.method public isAdvancedProtectionEnabled()Z
    .registers 3

    .line 185
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->isAdvancedProtectionEnabled_enforcePermission()V

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw p0
.end method

.method public final isAdvancedProtectionEnabledInternal()Z
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->retrieveAdvancedProtectionModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isUsbDataProtectionEnabled()Z
    .registers 5

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    :try_start_4
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    const-string v2, "aapm_usb_data_protection"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->retrieveInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_15

    if-ne p0, v3, :cond_10

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 266
    :goto_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    throw p0
.end method

.method public final synthetic lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;)V
    .registers 3

    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "    "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    throw p0
.end method

.method public final logAdvancedProtectionEnabled(Z)V
    .registers 10

    .line 324
    iget-boolean v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    if-nez v0, :cond_5

    return-void

    .line 328
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced protection has been "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v1, "enabled"

    goto :goto_16

    :cond_14
    const-string v1, "disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvancedProtectionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->hoursSinceLastChange()I

    move-result v3

    const-string v1, "last_dialog_feature_id"

    const/4 v2, -0x1

    .line 334
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->featureIdToLogEnum(I)I

    move-result v4

    const-string v1, "last_dialog_type"

    .line 335
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->dialogueTypeToLogEnum(I)I

    move-result v5

    const-string p0, "last_dialog_learn_more_clicked"

    const/4 v1, 0x0

    .line 336
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string p0, "last_dialog_hours_since_enabled"

    .line 337
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v1, 0x410

    move v2, p1

    .line 330
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIIZI)V

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "enabled_change_time"

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 340
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public logDialogShown(IIZ)V
    .registers 8

    .line 274
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->logDialogShown_enforcePermission()V

    .line 276
    iget-boolean v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mEmitLogs:Z

    if-nez v0, :cond_8

    return-void

    .line 280
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->hoursSinceLastChange()I

    move-result v0

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->featureIdToLogEnum(I)I

    move-result v1

    .line 283
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->dialogueTypeToLogEnum(I)I

    move-result v2

    const/16 v3, 0x411

    .line 281
    invoke-static {v3, v1, v2, p3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZI)V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "last_dialog_feature_id"

    .line 288
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "last_dialog_type"

    .line 289
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "last_dialog_learn_more_clicked"

    .line 290
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "last_dialog_hours_since_enabled"

    .line 291
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 292
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 5

    .line 203
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->registerAdvancedProtectionCallback_enforcePermission()V

    .line 204
    invoke-interface {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 206
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 207
    :try_start_13
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->sendCallbackAdded(ZLandroid/security/advancedprotection/IAdvancedProtectionCallback;)V

    .line 209
    monitor-exit v1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public sendCallbackAdded(ZLandroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 5

    .line 429
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 431
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendModeChanged(Z)V
    .registers 4

    .line 424
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 425
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAdvancedProtectionEnabled(Z)V
    .registers 6

    .line 225
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->setAdvancedProtectionEnabled_enforcePermission()V

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 229
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->enforceAdminUser(Landroid/os/UserHandle;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_2c

    .line 231
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabledInternal()Z

    move-result v3

    if-eq p1, v3, :cond_25

    .line 232
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    invoke-virtual {v3, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->storeAdvancedProtectionModeEnabled(Z)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->sendModeChanged(Z)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->logAdvancedProtectionEnabled(Z)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_2a

    .line 236
    :cond_25
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_23

    .line 238
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 236
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_23

    :try_start_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 238
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    throw p0
.end method

.method public final setAdvancedProtectionSubSettingInt(Ljava/lang/String;I)V
    .registers 8

    .line 249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 251
    :try_start_4
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_32

    .line 252
    :try_start_7
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mStore:Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->storeInt(Ljava/lang/String;I)V

    .line 253
    const-string p0, "AdvancedProtectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Advanced protection: subsetting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2f

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    .line 254
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    throw p0
.end method

.method public setUsbDataProtectionEnabled(Z)V
    .registers 3

    .line 245
    const-string v0, "aapm_usb_data_protection"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->setAdvancedProtectionSubSettingInt(Ljava/lang/String;I)V

    return-void
.end method

.method public unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 3

    .line 216
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->unregisterAdvancedProtectionCallback_enforcePermission()V

    .line 217
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 218
    :try_start_6
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p0
.end method
