.class public final Lcom/android/server/credentials/CredentialManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "CredentialManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mRequestSessions:Landroid/util/SparseArray;

.field public final mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

.field public final mSystemServicesCacheList:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$BiC7ap8XzY-FGZ5MVvp72o3GMlU(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;Lcom/android/server/credentials/CredentialManagerServiceImpl;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/credentials/CredentialManagerService;->lambda$initiateProviderSessions$2(Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;Lcom/android/server/credentials/CredentialManagerServiceImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LuPJXLsEy6odrKDM4_N9DyQ2xIs(Landroid/credentials/CredentialOption;)Ljava/util/HashSet;
    .registers 3

    .line 449
    new-instance v0, Ljava/util/HashSet;

    .line 450
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 451
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$dR0R1pqgx2zR0iStNh7rmXlMP1g(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;ILandroid/credentials/CredentialProviderInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/CredentialManagerService;->lambda$constructSystemServiceListLocked$0(Ljava/util/List;ILandroid/credentials/CredentialProviderInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvYqYC1ADkjQ-w9QEXTJKgA-4ys(Landroid/credentials/CredentialOption;)Z
    .registers 2

    .line 1158
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1159
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestSessions(Lcom/android/server/credentials/CredentialManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionManager(Lcom/android/server/credentials/CredentialManagerService;)Lcom/android/server/credentials/CredentialManagerService$SessionManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->addSessionLocked(ILcom/android/server/credentials/RequestSession;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/CredentialManagerService;->constructCallingAppInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->enforceCallingPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePermissionForAllowedProviders(Lcom/android/server/credentials/CredentialManagerService;Landroid/credentials/GetCredentialRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->enforcePermissionForAllowedProviders(Landroid/credentials/GetCredentialRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFilteredResultFromRegistry(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;)Ljava/util/Set;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getFilteredResultFromRegistry(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasWriteSecureSettingsPermission(Lcom/android/server/credentials/CredentialManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/CredentialManagerService;->hasWriteSecureSettingsPermission()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->initiateProviderSessions(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitiateProviderSessionsWithActiveContainers(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/GetRequestSession;Ljava/util/Set;)Ljava/util/List;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->initiateProviderSessionsWithActiveContainers(Lcom/android/server/credentials/GetRequestSession;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mvalidateGetCredentialRequest(Lcom/android/server/credentials/CredentialManagerService;Landroid/credentials/GetCredentialRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->validateGetCredentialRequest(Landroid/credentials/GetCredentialRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyGetProvidersPermission(Lcom/android/server/credentials/CredentialManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/CredentialManagerService;->verifyGetProvidersPermission()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 131
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    const-string v1, "credential_service"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    invoke-direct {v0, p0, v2}, Lcom/android/server/credentials/CredentialManagerService$SessionManager;-><init>(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/CredentialManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 137
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static clearAllCredentialProviders(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z
    .registers 5

    .line 1288
    const-string v0, "credential_service_primary"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1295
    :cond_c
    const-string v0, "credential_service"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private enforceCallingPackage(Ljava/lang/String;I)V
    .registers 5

    .line 1175
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 1176
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 1175
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 1179
    :try_start_11
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 1178
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_36

    if-ne p0, p2, :cond_1c

    return-void

    .line 1184
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1181
    :catch_36
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;
    .registers 9

    .line 343
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getPrimaryProvidersForUserId"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    .line 342
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 346
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    const-string v1, "credential_service_primary"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 349
    invoke-virtual {v0, p1}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->readServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_26

    .line 351
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 354
    :cond_26
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 355
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v0, :cond_54

    aget-object v2, p0, v1

    .line 356
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_4e

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary provider component name unflatten from string error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 364
    :cond_4e
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_54
    return-object p1
.end method

.method public static getStoredProvidersExceptPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 7

    .line 1412
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_49

    if-nez p1, :cond_a

    goto :goto_49

    .line 1416
    :cond_a
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_49

    aget-object v3, p0, v2

    .line 1417
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_3e

    .line 1422
    :cond_26
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 1423
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 1424
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 1418
    :cond_3e
    :goto_3e
    const-string v3, "CredentialManager"

    const-string/jumbo v4, "provider component name is empty or null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_49
    :goto_49
    return-object v0
.end method

.method public static getStoredProvidersExceptService(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 7

    .line 1388
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_45

    if-nez p1, :cond_a

    goto :goto_45

    .line 1392
    :cond_a
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_45

    aget-object v3, p0, v2

    .line 1393
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_3a

    .line 1398
    :cond_26
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 1399
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 1400
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 1394
    :cond_3a
    :goto_3a
    const-string v3, "CredentialManager"

    const-string/jumbo v4, "provider component name is empty or null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_45
    :goto_45
    return-object v0
.end method

.method public static isAutofillProviderPresent(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z
    .registers 3

    .line 1266
    const-string v0, "autofill_service"

    .line 1267
    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1270
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1271
    invoke-static {p1, p0}, Lcom/android/server/credentials/CredentialManagerService;->isPlaceholderAutofillProvider(Ljava/lang/String;Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isCredentialDescriptionApiEnabled()Z
    .registers 5

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 384
    :try_start_4
    const-string v2, "credential_manager"

    const-string v3, "enable_credential_description_api"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    throw v2
.end method

.method public static isPlaceholderAutofillProvider(Ljava/lang/String;Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Z
    .registers 3

    .line 1280
    invoke-static {p1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x104025b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_19

    .line 1282
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static updateProvidersWhenPackageRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Ljava/lang/String;I)V
    .registers 11

    .line 1305
    const-string/jumbo v0, "updateProvidersWhenPackageRemoved"

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const-string v0, "credential_service_primary"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1311
    const-string v3, ":"

    const/4 v4, 0x1

    if-nez v2, :cond_1b

    .line 1312
    const-string/jumbo v0, "settings key is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 1316
    :cond_1b
    invoke-static {v2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1320
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1318
    invoke-virtual {p0, v0, v5, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove primary package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1329
    :cond_3e
    const-string v0, "autofill_service"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1335
    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104025b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_8d

    .line 1337
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 1341
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_8d

    .line 1342
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1343
    const-string v5, ""

    invoke-virtual {p0, v0, v5, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove autofill package: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_8d
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->isAutofillProviderPresent(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1358
    const-string v0, "Clearing all credential providers"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->clearAllCredentialProviders(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_a5

    goto :goto_d2

    .line 1362
    :cond_a5
    const-string v0, "Failed to clear all credential providers"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_aa
    :goto_aa
    const-string v0, "credential_service"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-static {v2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1376
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    invoke-virtual {p0, v0, v2, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-nez p0, :cond_d2

    .line 1379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove secondary package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    :goto_d2
    return-void
.end method

.method public static updateProvidersWhenServiceRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Landroid/content/ComponentName;I)V
    .registers 9

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProvidersWhenServiceRemoved for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-string v0, "credential_service_primary"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, ":"

    if-eqz v3, :cond_31

    .line 1217
    const-string/jumbo v0, "primary settings key is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 1221
    :cond_31
    invoke-static {v2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptService(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v2

    .line 1228
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1229
    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->isAutofillProviderPresent(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1230
    const-string v3, "Clearing all credential providers"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->clearAllCredentialProviders(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    goto :goto_99

    .line 1234
    :cond_4d
    const-string v3, "Failed to clear all credential providers"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_52
    invoke-static {v5, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    invoke-virtual {p0, v0, v2, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove primary service: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1249
    :cond_71
    :goto_71
    const-string v0, "credential_service"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-static {v2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptService(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v2

    .line 1257
    invoke-static {v5, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-virtual {p0, v0, v2, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-nez p0, :cond_99

    .line 1260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove secondary service: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    :goto_99
    return-void
.end method


# virtual methods
.method public final addSessionLocked(ILcom/android/server/credentials/RequestSession;)V
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_3
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    iget-object v1, p2, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->addSession(ILandroid/os/IBinder;Lcom/android/server/credentials/RequestSession;)V

    .line 1170
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final constructCallingAppInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;
    .registers 6

    .line 512
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v0, 0x8000000

    .line 516
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 514
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 519
    new-instance p2, Landroid/service/credentials/CallingAppInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-direct {p2, p1, p0, p3}, Landroid/service/credentials/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p2

    :catch_1b
    move-exception p0

    .line 521
    const-string p2, "CredentialManager"

    const-string v0, "Issue while retrieving signatureInfo : "

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    new-instance p0, Landroid/service/credentials/CallingAppInfo;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/credentials/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public final constructSystemServiceListLocked(I)Ljava/util/List;
    .registers 6

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 146
    invoke-static {v1, p1, v3, v2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final enforcePermissionForAllowedProviders(Landroid/credentials/GetCredentialRequest;)V
    .registers 3

    .line 1156
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    .line 1157
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 1158
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1161
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final getCredentialProviderServicesLocked(I)Ljava/util/List;
    .registers 5

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 374
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 375
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getOrConstructSystemServiceListLock(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getFilteredResultFromRegistry(Ljava/util/List;)Ljava/util/Set;
    .registers 9

    .line 442
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p0

    .line 446
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 447
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 453
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->getMatchingProviders(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 459
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 462
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/CredentialOption;

    .line 464
    new-instance v4, Ljava/util/HashSet;

    .line 466
    invoke-virtual {v3}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 467
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 468
    iget-object v5, v1, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mElementKeys:Ljava/util/Set;

    invoke-static {v5, v4}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->checkForMatch(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 470
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_68
    return-object v0
.end method

.method public final getOrConstructSystemServiceListLock(I)Ljava/util/List;
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_12

    .line 291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    .line 292
    :cond_12
    :goto_12
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->constructSystemServiceListLocked(I)Ljava/util/List;

    move-result-object v0

    .line 293
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getServiceSettingsProperty()Ljava/lang/String;
    .registers 1

    .line 162
    const-string p0, "credential_service"

    return-object p0
.end method

.method public handlePackageRemovedMultiModeLocked(Ljava/lang/String;I)V
    .registers 7

    .line 209
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->updateProvidersWhenPackageRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Ljava/lang/String;I)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_63

    .line 216
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    if-eqz v2, :cond_1a

    .line 219
    invoke-virtual {v2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->getCredentialProviderInfo()Landroid/credentials/CredentialProviderInfo;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 223
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 230
    :cond_42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_47
    if-ge v0, p1, :cond_63

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 231
    invoke-virtual {p0, v2, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeServiceFromCache(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 232
    invoke-virtual {p0, v2, p2}, Lcom/android/server/credentials/CredentialManagerService;->removeServiceFromSystemServicesCache(Lcom/android/server/credentials/CredentialManagerServiceImpl;I)V

    .line 233
    invoke-static {p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object v3

    .line 234
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->evictProviderWithPackageName(Ljava/lang/String;)V

    goto :goto_47

    :cond_63
    :goto_63
    return-void
.end method

.method public handleServiceRemovedMultiModeLocked(Landroid/content/ComponentName;I)V
    .registers 7

    .line 242
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->updateProvidersWhenServiceRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Landroid/content/ComponentName;I)V

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 249
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    if-eqz v2, :cond_1a

    .line 252
    invoke-virtual {v2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->getCredentialProviderInfo()Landroid/credentials/CredentialProviderInfo;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 255
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 256
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 261
    :cond_40
    invoke-virtual {p0, v1, p2}, Lcom/android/server/credentials/CredentialManagerService;->removeServicesLocked(Ljava/util/List;I)V

    return-void
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 4

    .line 317
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-nez p0, :cond_23

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller does not have permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return p0
.end method

.method public final hasWriteSecureSettingsPermission()Z
    .registers 2

    .line 299
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final initiateProviderSessions(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;
    .registers 5

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/credentials/CredentialManagerService;->runForUser(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final initiateProviderSessionsWithActiveContainers(Lcom/android/server/credentials/GetRequestSession;Ljava/util/Set;)Ljava/util/List;
    .registers 11

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 401
    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 403
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v5, p1, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    iget-object v6, v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/credentials/CredentialOption;

    move-object v4, p1

    .line 401
    invoke-static/range {v2 .. v7}, Lcom/android/server/credentials/ProviderRegistryGetSession;->createNewSession(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)Lcom/android/server/credentials/ProviderRegistryGetSession;

    move-result-object p1

    .line 408
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p1}, Lcom/android/server/credentials/ProviderSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1, p1}, Lcom/android/server/credentials/GetRequestSession;->addProviderSession(Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession;)V

    move-object p1, v4

    goto :goto_9

    :cond_39
    return-object v0
.end method

.method public final synthetic lambda$constructSystemServiceListLocked$0(Ljava/util/List;ILandroid/credentials/CredentialProviderInfo;)V
    .registers 6

    .line 153
    new-instance v0, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/credentials/CredentialManagerServiceImpl;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/Object;ILandroid/credentials/CredentialProviderInfo;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$initiateProviderSessions$2(Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;Lcom/android/server/credentials/CredentialManagerServiceImpl;)V
    .registers 5

    .line 485
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 487
    :try_start_3
    invoke-virtual {p4, p1, p2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->initiateProviderSessionForRequestLocked(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Lcom/android/server/credentials/ProviderSession;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 490
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_11

    .line 492
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p1
.end method

.method public newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;
    .registers 9

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getOrConstructSystemServiceListLock(I)Ljava/util/List;

    if-eqz p3, :cond_33

    .line 187
    array-length p2, p3

    if-nez p2, :cond_9

    goto :goto_33

    .line 190
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    array-length v0, p3

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_32

    aget-object v2, p3, v1

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_2f

    .line 196
    :cond_1c
    :try_start_1c
    new-instance v3, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p0, v4, p1, v2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_26} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception v2

    .line 199
    const-string v3, "CredentialManager"

    const-string v4, "Unable to add serviceInfo : "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_32
    return-object p2

    .line 188
    :cond_33
    :goto_33
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/credentials/CredentialManagerServiceImpl;
    .registers 3

    .line 170
    const-string p0, "CredentialManager"

    const-string p1, "Should not be here - CredentialManagerService is configured to use multiple services"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->newServiceLocked(IZ)Lcom/android/server/credentials/CredentialManagerServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .registers 3

    .line 179
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;-><init>(Lcom/android/server/credentials/CredentialManagerService;)V

    const-string v1, "credential"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 500
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    .line 501
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->clearUserSession(I)V

    return-void
.end method

.method public final removeServiceFromSystemServicesCache(Lcom/android/server/credentials/CredentialManagerServiceImpl;I)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 283
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public final removeServicesLocked(Ljava/util/List;I)V
    .registers 5

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 272
    invoke-virtual {p0, v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeServiceFromCache(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 273
    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService;->removeServiceFromSystemServicesCache(Lcom/android/server/credentials/CredentialManagerServiceImpl;I)V

    .line 274
    invoke-static {p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object v1

    .line 275
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->evictProviderWithPackageName(Ljava/lang/String;)V

    goto :goto_4

    :cond_22
    return-void
.end method

.method public final runForUser(Ljava/util/function/Consumer;)V
    .registers 6

    .line 326
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 329
    :try_start_8
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2c

    .line 331
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->getCredentialProviderServicesLocked(I)Ljava/util/List;

    move-result-object p0

    .line 332
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 333
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_13

    :catchall_23
    move-exception p0

    goto :goto_2a

    .line 335
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_23

    .line 337
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 335
    :goto_2a
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_23

    :try_start_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 337
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw p0
.end method

.method public final validateGetCredentialRequest(Landroid/credentials/GetCredentialRequest;)V
    .registers 5

    .line 1148
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1150
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->enforcePermissionForAllowedProviders(Landroid/credentials/GetCredentialRequest;)V

    return-void
.end method

.method public final verifyGetProvidersPermission()V
    .registers 2

    .line 303
    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 307
    :cond_9
    const-string v0, "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    :goto_11
    return-void

    .line 311
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is missing permission: QUERY_ALL_PACKAGES or LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
