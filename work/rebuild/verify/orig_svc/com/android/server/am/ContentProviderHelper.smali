.class public Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# static fields
.field public static final PROCESS_STATE_STATS_FORMAT:[I


# instance fields
.field public final mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

.field public final mLaunchingProviders:Ljava/util/ArrayList;

.field public final mProcessStateStatsLongs:[J

.field public final mProviderMap:Lcom/android/server/am/ProviderMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSystemProvidersInstalled:Z


# direct methods
.method public static synthetic $r8$lambda$7SqNWgaMV7-OpTBuN-1CMmNHiyU(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$checkContentProviderAssociation$4(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cuz--ZRyWbI5VNWXF2ERo-dfHW4(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderHelper;->lambda$getMimeTypeFilterAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JV9jTPlBHAPZLxkKAqq24ds-FLE(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ContentProviderHelper;->lambda$getMimeTypeFilterAsync$1(Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgT9vu5eZilG5Q2yFu6AlQnBbWA(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$decProviderCountLocked$3(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ybb6ASgJllmnwf29cCLpR_JR-Yg(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ContentProviderHelper;->lambda$installEncryptionUnawareProviders$2(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x220

    const/16 v1, 0x2820

    const/16 v2, 0x20

    .line 1700
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    const/4 v0, 0x1

    .line 1706
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    .line 125
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_20

    .line 126
    new-instance p2, Lcom/android/server/am/ProviderMap;

    invoke-direct {p2, p1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-void
.end method

.method public static resolveParentUserIdForCloneProfile(I)I
    .registers 3

    .line 1131
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1132
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1134
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_19

    .line 1138
    :cond_15
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    :cond_19
    :goto_19
    return p0
.end method


# virtual methods
.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 7

    .line 994
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string v2, "appNotRespondingViaProvider()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;

    .line 998
    const-string v0, "ContentProviderHelper"

    if-nez p1, :cond_15

    .line 999
    const-string p0, "ContentProviderConnection is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1005
    :cond_15
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_20

    .line 1006
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_22

    :cond_20
    const-string v1, ""

    :goto_22
    const-wide/16 v2, 0x40

    .line 1003
    const-string v4, "appNotRespondingViaProvider: "

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 1008
    :try_start_29
    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_3a

    .line 1010
    const-string p0, "Failed to find hosting ProcessRecord"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 1018
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_38
    move-exception p0

    goto :goto_4b

    .line 1014
    :cond_3a
    :try_start_3a
    const-string v0, "ContentProvider not responding"

    invoke-static {v0}, Lcom/android/internal/os/TimeoutRecord;->forContentProvider(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    .line 1016
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_38

    .line 1018
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_4b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1019
    throw p0
.end method

.method public final canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;I)Z
    .registers 3

    .line 1973
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1976
    :cond_8
    const-class p0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 1977
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz p0, :cond_17

    .line 1983
    invoke-interface {p0, p1}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;)Z

    move-result p0

    return p0

    .line 1979
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid may access the contentprovider."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canClearIdentity(III)Z
    .registers 5

    .line 1101
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, p3, :cond_8

    return v0

    .line 1104
    :cond_8
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    const/4 p3, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1107
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public checkAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    .line 1883
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1884
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 1885
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .registers 16

    .line 714
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_33

    .line 718
    const-string p3, "getContentProviderImpl: before checkContentProviderPermission"

    invoke-virtual {p0, p7, p8, p3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p1, :cond_1f

    .line 721
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_19
    move-object v0, p0

    move-object v6, p1

    move-object v1, p2

    move v4, p4

    move v5, p5

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_19

    .line 719
    :goto_21
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2d

    .line 725
    const-string p0, "getContentProviderImpl: after checkContentProviderPermission"

    invoke-virtual {v0, p7, p8, p0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    return-void

    .line 723
    :cond_2d
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Content provider lookup "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: association not allowed with package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 1148
    iget-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "ContentProviderHelper"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    .line 1153
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1154
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1155
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 1157
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1158
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    const/4 v0, 0x0

    :goto_31
    move v5, p2

    move v6, v0

    goto :goto_36

    :cond_34
    const/4 v0, 0x1

    goto :goto_31

    .line 1165
    :goto_36
    :try_start_36
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    const-wide/32 v0, 0xc0e00

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_43

    :goto_41
    move-object v2, p2

    goto :goto_45

    :catch_43
    const/4 p2, 0x0

    goto :goto_41

    :goto_45
    if-nez v2, :cond_66

    .line 1175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find provider "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; expected to find a valid ContentProvider for this authority"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1179
    :cond_66
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1182
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p1

    .line 1183
    :try_start_6f
    iget-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_8f

    .line 1185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find PID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_8c
    move-exception v0

    move-object p0, v0

    goto :goto_9e

    .line 1187
    :cond_8f
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1188
    monitor-exit p1
    :try_end_94
    .catchall {:try_start_6f .. :try_end_94} :catchall_8c

    .line 1190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1188
    :goto_9e
    :try_start_9e
    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_8c

    throw p0
.end method

.method public final checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_15

    .line 1652
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_12

    return-object v0

    .line 1653
    :cond_12
    const-string p0, "<null>"

    return-object p0

    .line 1655
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p2

    new-instance v0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .registers 21

    move/from16 v3, p3

    move/from16 v9, p5

    .line 1572
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ContentProviderHelper;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1573
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentProvider access not allowed from sdk sandbox UID. ProviderInfo: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-virtual {p1}, Landroid/content/pm/ProviderInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_68

    .line 1579
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v4, p4

    invoke-virtual {v1, v4}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 1580
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v12, v1, :cond_42

    .line 1581
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v1, v3, p1, v12, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_3f

    return-object v11

    :cond_3f
    const/4 v1, 0x1

    move v13, v1

    goto :goto_43

    :cond_42
    move v13, v10

    .line 1587
    :goto_43
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkContentProviderPermissionLocked "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v12, :cond_66

    goto :goto_6c

    :cond_66
    move v10, v13

    goto :goto_6c

    :cond_68
    move/from16 v2, p2

    move/from16 v1, p4

    .line 1598
    :goto_6c
    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v4, v2, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-nez v4, :cond_7b

    return-object v11

    .line 1603
    :cond_7b
    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v4, v2, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-nez v4, :cond_8a

    return-object v11

    .line 1609
    :cond_8a
    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v4, :cond_bb

    .line 1611
    array-length v5, v4

    :cond_8f
    if-lez v5, :cond_bb

    add-int/lit8 v5, v5, -0x1

    .line 1614
    aget-object v6, v4, v5

    .line 1615
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a8

    .line 1616
    iget-object v8, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v12, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v7, v2, v3, v8, v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v7

    if-nez v7, :cond_a8

    return-object v11

    .line 1621
    :cond_a8
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8f

    .line 1622
    iget-object v7, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v6, v2, v3, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v6

    if-nez v6, :cond_8f

    return-object v11

    :cond_bb
    if-nez v10, :cond_c8

    .line 1629
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1630
    invoke-interface {p0, v3, p1, v1, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    if-eqz p0, :cond_c8

    return-object v11

    .line 1635
    :cond_c8
    iget-boolean p0, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez p0, :cond_e2

    .line 1636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " that is not exported from UID "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10c

    .line 1637
    :cond_e2
    const-string p0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ef

    .line 1638
    const-string p0, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    goto :goto_10c

    .line 1640
    :cond_ef
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " requires "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1642
    :goto_10c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: opening provider "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_125

    move-object/from16 v0, p6

    goto :goto_127

    .line 1643
    :cond_125
    const-string v0, "(null)"

    :goto_127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1645
    const-string v0, "ContentProviderHelper"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .registers 18

    .line 1195
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "ContentProviderHelper"

    const/4 v8, -0x1

    if-eqz v0, :cond_1c

    .line 1196
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to check Uri permission because caller is holding WM lock; assuming permission denied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8

    .line 1201
    :cond_1c
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 1205
    :try_start_25
    const-string v5, "*checkContentProviderUriPermission*"

    const/4 v3, 0x0

    move-object v1, p0

    move v6, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_89
    .catchall {:try_start_25 .. :try_end_30} :catchall_85

    if-eqz v3, :cond_75

    .line 1209
    :try_start_32
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_40} :catch_73
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_71
    .catchall {:try_start_32 .. :try_end_40} :catchall_6d

    if-nez v0, :cond_4f

    .line 1229
    :try_start_42
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_49

    .line 1232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_49
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    throw p0

    .line 1215
    :cond_4f
    :try_start_4f
    new-instance v5, Landroid/content/AttributionSource;

    .line 1216
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v0, v11}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, v3, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move/from16 v12, p4

    invoke-interface {v0, v5, p1, v4, v12}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result p1
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_60} :catch_73
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_60} :catch_71
    .catchall {:try_start_4f .. :try_end_60} :catchall_6d

    .line 1229
    :try_start_60
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_67

    .line 1232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_67
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    throw p0

    :catchall_6d
    move-exception v0

    move-object p1, v0

    goto/16 :goto_d7

    :catch_71
    move-exception v0

    goto :goto_8f

    :catch_73
    move-exception v0

    goto :goto_b3

    :cond_75
    if-eqz v3, :cond_81

    .line 1229
    :try_start_77
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_81

    :catchall_7b
    move-exception v0

    move-object p0, v0

    .line 1232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    throw p0

    .line 1232
    :cond_81
    :goto_81
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_85
    move-exception v0

    move-object p1, v0

    move-object v3, v11

    goto :goto_d7

    :catch_89
    move-exception v0

    move-object v3, v11

    goto :goto_8f

    :catch_8c
    move-exception v0

    move-object v3, v11

    goto :goto_b3

    .line 1224
    :goto_8f
    :try_start_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while determining type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_8f .. :try_end_a3} :catchall_6d

    if-eqz v3, :cond_af

    .line 1229
    :try_start_a5
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_af

    :catchall_a9
    move-exception v0

    move-object p0, v0

    .line 1232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    throw p0

    .line 1232
    :cond_af
    :goto_af
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    .line 1221
    :goto_b3
    :try_start_b3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content provider dead retrieving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_6d

    if-eqz v3, :cond_d3

    .line 1229
    :try_start_c9
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_d3

    :catchall_cd
    move-exception v0

    move-object p0, v0

    .line 1232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    throw p0

    .line 1232
    :cond_d3
    :goto_d3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :goto_d7
    if-eqz v3, :cond_e3

    .line 1229
    :try_start_d9
    invoke-virtual {p0, v2, v11, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_e3

    :catchall_dd
    move-exception v0

    move-object p0, v0

    .line 1232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    throw p0

    .line 1232
    :cond_e3
    :goto_e3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1234
    throw p1
.end method

.method public final checkGetAnyTypePermission(II)Z
    .registers 4

    .line 1086
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.GET_ANY_PROVIDER_TYPE"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final checkTime(JLjava/lang/String;)V
    .registers 6

    .line 1930
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_2a

    .line 1933
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Slow operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 9

    .line 1898
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_39

    .line 1899
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 1900
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_18

    goto :goto_36

    .line 1904
    :cond_18
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_21

    move p2, v1

    :cond_21
    if-nez p2, :cond_33

    .line 1908
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v4

    if-eqz v4, :cond_33

    move v2, v1

    goto :goto_36

    .line 1911
    :cond_33
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_39
    return v2
.end method

.method public final decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 1499
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    return v0

    .line 1504
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->totalRefCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_16

    .line 1505
    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    return v0

    :cond_16
    if-eqz p5, :cond_27

    .line 1511
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p5, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    const-wide/16 p0, 0x1388

    invoke-virtual {p2, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    .line 1515
    :cond_27
    invoke-virtual {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    :goto_2a
    return p3
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 7

    .line 1996
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    .line 2005
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProviderMap;->dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dumpProvidersLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 10

    .line 1939
    new-instance p1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 1940
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 1942
    const-string p1, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1944
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p1, p2, p5, p6}, Lcom/android/server/am/ProviderMap;->dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    move-result p1

    .line 1947
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_62

    .line 1949
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    const/4 p5, 0x0

    move v0, p5

    move p5, p3

    move p3, p1

    :goto_27
    if-ltz p5, :cond_62

    .line 1950
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p6, :cond_40

    .line 1951
    iget-object v2, v1, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_5f

    :cond_40
    if-nez v0, :cond_4f

    if-eqz p3, :cond_47

    .line 1955
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1957
    :cond_47
    const-string p1, "  Launching content providers:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p1, p4

    move p3, p1

    move v0, p3

    .line 1961
    :cond_4f
    const-string v2, "  Launching #"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_5f
    add-int/lit8 p5, p5, -0x1

    goto :goto_27

    :cond_62
    if-nez p1, :cond_69

    .line 1967
    const-string p0, "  (nothing)"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method public generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .registers 16

    const/4 v0, 0x0

    .line 1250
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    const-wide/32 v4, 0x10000c00

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_ca

    if-nez v1, :cond_18

    return-object v0

    .line 1266
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1267
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1268
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessProviderRecord;->ensureProviderCapacity(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_28
    if-ge v5, v2, :cond_c2

    .line 1271
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/content/pm/ProviderInfo;

    .line 1272
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v11, v9, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v12

    .line 1274
    invoke-virtual {p0, v9}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    move-result v6

    const/4 v13, 0x1

    if-eqz v6, :cond_53

    iget v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-eqz v6, :cond_53

    .line 1279
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_4d
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_bf

    .line 1284
    :cond_53
    iget-object v6, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v6

    .line 1285
    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v7, :cond_6a

    iget-object v8, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    goto :goto_6a

    :cond_68
    move v7, v4

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v7, v13

    :goto_6b
    if-eqz v6, :cond_73

    if-nez v7, :cond_73

    .line 1290
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4d

    .line 1296
    :cond_73
    new-instance v11, Landroid/content/ComponentName;

    iget-object v6, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget v7, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {v6, v11, v7}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v6

    if-nez v6, :cond_95

    .line 1299
    new-instance v7, Lcom/android/server/am/ContentProviderRecord;

    iget-object v8, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    .line 1300
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v6, v11, v7}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    move-object v6, v7

    .line 1305
    :cond_95
    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 1306
    iget-boolean v6, v9, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v6, :cond_a8

    const-string v6, "android"

    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b5

    .line 1311
    :cond_a8
    iget-object v6, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v10, v6, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v7, v10, v11, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1314
    :cond_b5
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    :goto_bf
    add-int/2addr v5, v13

    goto/16 :goto_28

    .line 1317
    :cond_c2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c9

    return-object v0

    :cond_c9
    return-object v1

    :catch_ca
    return-object v0
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .registers 15

    .line 135
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "getContentProvider"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    if-eqz p1, :cond_46

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eqz p2, :cond_39

    .line 144
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_39

    .line 146
    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given calling package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :goto_39
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v2, p3

    move v8, p4

    move v7, p5

    .line 149
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    .line 137
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "null IApplicationThread when getting content provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "ContentProviderHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .registers 15

    .line 155
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v3, "Do not have permission in call getContentProviderExternal()"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v8, "getContentProvider"

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move v5, p2

    .line 158
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p4, :cond_2a

    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    goto :goto_30

    .line 162
    :cond_2a
    const-string v1, "*external*"

    move-object v4, v1

    move-object v0, p0

    move-object v2, p3

    move-object v1, p1

    .line 161
    :goto_30
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method public getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;
    .registers 15

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v8, p5

    .line 167
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;
    .registers 54

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v13, p8

    .line 179
    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    .line 180
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v10

    const/4 v2, 0x0

    if-eqz v14, :cond_54

    .line 185
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_24

    move-object v3, v2

    move-object v2, v0

    goto :goto_55

    .line 187
    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when getting content provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4f
    move-exception v0

    move-object/from16 v22, v12

    goto/16 :goto_8a4

    :cond_54
    move-object v3, v2

    .line 195
    :goto_55
    const-string v0, "getContentProviderImpl: getProviderByName"

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 197
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 207
    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_71

    .line 209
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v4, 0x1

    goto :goto_72

    :cond_71
    move v4, v6

    .line 210
    :goto_72
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7e

    if-nez v4, :cond_7b

    goto :goto_7e

    :cond_7b
    move-object v7, v3

    :cond_7c
    const/4 v3, 0x1

    goto :goto_a1

    .line 212
    :cond_7e
    :goto_7e
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v7, v15, v13}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7

    .line 216
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7c

    .line 217
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 219
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v17

    if-eqz v17, :cond_7c

    .line 222
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v17

    if-eqz v17, :cond_7c

    .line 224
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    if-ne v3, v13, :cond_7c

    move v3, v6

    :goto_a1
    if-nez v7, :cond_110

    if-eqz v13, :cond_110

    .line 232
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v7, v15, v6}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7

    if-eqz v7, :cond_101

    const/16 v17, 0x1

    .line 234
    iget-object v5, v7, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 236
    iget-object v6, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v18, v3

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move/from16 v19, v4

    iget-object v4, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v7

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-wide/from16 v21, v8

    iget v8, v5, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e2

    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v2, :cond_d0

    move/from16 v4, p4

    goto :goto_d2

    .line 239
    :cond_d0
    iget v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    :goto_d2
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 238
    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3

    if-eqz v3, :cond_e2

    move-object v0, v5

    move-object/from16 v3, v20

    const/4 v5, 0x0

    :goto_e0
    const/4 v6, 0x0

    goto :goto_11b

    .line 242
    :cond_e2
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fb

    if-eqz v19, :cond_f4

    .line 244
    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    move-object v3, v5

    move v5, v0

    move-object v0, v3

    move-object/from16 v3, v20

    goto :goto_e0

    :cond_f4
    move-object v0, v5

    move v5, v13

    move/from16 v6, v18

    move-object/from16 v3, v20

    goto :goto_11b

    :cond_fb
    move v5, v13

    move/from16 v6, v18

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_11b

    :cond_101
    move/from16 v18, v3

    move-object/from16 v20, v7

    move-wide/from16 v21, v8

    const/16 v17, 0x1

    move v5, v13

    move/from16 v6, v18

    move-object/from16 v3, v20

    :goto_10e
    const/4 v0, 0x0

    goto :goto_11b

    :cond_110
    move/from16 v18, v3

    move-wide/from16 v21, v8

    const/16 v17, 0x1

    move-object v3, v7

    move v5, v13

    move/from16 v6, v18

    goto :goto_10e

    :goto_11b
    if-eqz v3, :cond_15f

    .line 255
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_15f

    .line 256
    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 263
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v7

    if-eqz v7, :cond_15a

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v7

    if-eqz v7, :cond_15a

    .line 264
    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " was killed by AM but isn\'t really dead"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move/from16 v18, v4

    move-object/from16 v19, v7

    goto :goto_162

    :cond_15a
    move/from16 v18, v4

    :goto_15c
    const/16 v19, 0x0

    goto :goto_162

    :cond_15f
    const/16 v18, 0x0

    goto :goto_15c

    :goto_162
    if-eqz v2, :cond_16b

    .line 271
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v4

    :goto_168
    move/from16 v20, v4

    goto :goto_16d

    :cond_16b
    const/4 v4, -0x1

    goto :goto_168

    :goto_16d
    const/4 v4, 0x7

    const-wide/16 v7, 0x0

    if-eqz v18, :cond_2ea

    .line 274
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_1b0

    .line 277
    invoke-virtual {v3, v2}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_1b0

    .line 278
    iget-object v4, v3, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    .line 279
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    move/from16 v4, p4

    move/from16 v11, v17

    move-wide/from16 v8, v21

    const/4 v10, 0x0

    .line 278
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 285
    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v13

    .line 287
    iput-object v10, v13, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 288
    iget v1, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v0, 0x1dd

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v8, v20

    move/from16 v2, p4

    move-object/from16 v6, p5

    move/from16 v7, v20

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 296
    monitor-exit v12
    :try_end_1ac
    .catchall {:try_start_e .. :try_end_1ac} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    :cond_1b0
    move-object v1, v3

    move-object v3, v0

    move-object v0, v1

    move/from16 v16, v20

    const/4 v1, 0x0

    .line 302
    :try_start_1b6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 303
    invoke-interface {v9, v15, v7, v8, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v9
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_1be} :catch_1c5
    .catchall {:try_start_1b6 .. :try_end_1be} :catchall_4f

    if-nez v9, :cond_1c5

    .line 304
    :try_start_1c0
    monitor-exit v12
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 309
    :catch_1c5
    :cond_1c5
    :try_start_1c5
    iget-object v9, v0, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    .line 310
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move v14, v4

    move-object v7, v9

    move-wide/from16 v8, v21

    move/from16 v4, p4

    .line 309
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 312
    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v17

    .line 314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20
    :try_end_1e0
    .catchall {:try_start_1c5 .. :try_end_1e0} :catchall_4f

    .line 316
    :try_start_1e0
    const-string v4, "getContentProviderImpl: incProviderCountLocked"

    invoke-virtual {v1, v8, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 319
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_1e9
    .catchall {:try_start_1e0 .. :try_end_1e9} :catchall_2e3

    move-wide v6, v10

    move-wide v10, v8

    const/4 v9, 0x1

    move/from16 v8, p7

    move-object/from16 v26, v3

    move-wide/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v3, v0

    move-object v12, v4

    move v0, v5

    move-object/from16 v4, p3

    move/from16 v5, p4

    :try_start_1ff
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v9

    move-object v8, v2

    move-wide v12, v10

    .line 323
    const-string v2, "getContentProviderImpl: before updateOomAdj"

    invoke-virtual {v1, v12, v13, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 324
    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getVerifiedAdj()I

    move-result v2

    .line 325
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v8, v5}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionAdd(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v4

    if-eqz v4, :cond_22a

    .line 326
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/am/ProcessStateController;->runUpdate(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v5

    goto :goto_22b

    :catchall_227
    move-exception v0

    goto/16 :goto_2e6

    :cond_22a
    const/4 v5, 0x1

    :goto_22b
    if-eqz v5, :cond_23f

    .line 333
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v4

    if-eq v2, v4, :cond_23f

    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 334
    invoke-virtual {v1, v2}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_23f

    const/4 v6, 0x0

    goto :goto_240

    :cond_23f
    move v6, v5

    .line 337
    :goto_240
    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v2, v15}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "getContentProviderImpl: after updateOomAdj"

    invoke-virtual {v1, v12, v13, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v6, :cond_2a0

    .line 351
    const-string v2, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is crashing; detaching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p7

    move-object v2, v9

    .line 353
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v2
    :try_end_27d
    .catchall {:try_start_1ff .. :try_end_27d} :catchall_227

    move-object v1, v3

    if-nez v2, :cond_28c

    .line 375
    :try_start_280
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_284
    .catchall {:try_start_280 .. :try_end_284} :catchall_289

    .line 358
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v10, 0x0

    return-object v10

    :catchall_289
    move-exception v0

    goto/16 :goto_8a4

    :cond_28c
    const/4 v10, 0x0

    .line 363
    :try_start_28d
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v14, p0

    move/from16 v29, v0

    move-object/from16 v19, v2

    move-object/from16 v28, v8

    move-object v2, v10

    move/from16 v11, v16

    const/4 v6, 0x0

    move-object/from16 v10, p5

    move-object/from16 v16, v1

    goto :goto_2db

    :cond_2a0
    move-object v1, v3

    move-object/from16 v23, v9

    const/4 v10, 0x0

    .line 365
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setVerifiedAdj(I)V

    .line 366
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    move-object/from16 v3, v26

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, v10

    const-wide/16 v10, 0x0

    move v6, v0

    const/16 v0, 0x1dd

    move-object/from16 v26, v3

    const/4 v3, 0x1

    move-object v7, v4

    const/4 v4, 0x1

    move-object/from16 v14, p0

    move/from16 v29, v6

    move-object/from16 v28, v8

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v6, p5

    move-object/from16 v16, v1

    move v1, v2

    move/from16 v2, p4

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V
    :try_end_2d5
    .catchall {:try_start_28d .. :try_end_2d5} :catchall_227

    move-object v10, v6

    move v11, v7

    move/from16 v6, v18

    move-object/from16 v2, v23

    .line 375
    :goto_2db
    :try_start_2db
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v6

    move-object/from16 v0, v26

    goto :goto_2fe

    :catchall_2e3
    move-exception v0

    move-object/from16 v22, v12

    :goto_2e6
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    throw v0
    :try_end_2ea
    .catchall {:try_start_2db .. :try_end_2ea} :catchall_289

    :cond_2ea
    move-wide/from16 v24, v21

    move-object/from16 v22, v12

    move-wide/from16 v12, v24

    move-object v14, v1

    move-object/from16 v28, v2

    move-object/from16 v16, v3

    move/from16 v29, v5

    move-wide/from16 v24, v10

    move/from16 v11, v20

    move-object/from16 v10, p5

    const/4 v2, 0x0

    :goto_2fe
    if-nez v18, :cond_6e9

    .line 381
    :try_start_300
    const-string v1, "getContentProviderImpl: before resolveContentProvider"

    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 382
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_309
    .catch Landroid/os/RemoteException; {:try_start_300 .. :try_end_309} :catch_318
    .catchall {:try_start_300 .. :try_end_309} :catchall_289

    const-wide/16 v2, 0xc00

    move/from16 v5, v29

    :try_start_30d
    invoke-interface {v1, v15, v2, v3, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 386
    const-string v1, "getContentProviderImpl: after resolveContentProvider"

    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_316
    .catch Landroid/os/RemoteException; {:try_start_30d .. :try_end_316} :catch_316
    .catchall {:try_start_30d .. :try_end_316} :catchall_289

    :catch_316
    :goto_316
    move-object v3, v0

    goto :goto_31b

    :catch_318
    move/from16 v5, v29

    goto :goto_316

    :goto_31b
    if-nez v3, :cond_323

    .line 390
    :try_start_31d
    monitor-exit v22
    :try_end_31e
    .catchall {:try_start_31d .. :try_end_31e} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v7, 0x0

    return-object v7

    :cond_323
    const/4 v7, 0x0

    .line 395
    :try_start_324
    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34c

    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v2, v28

    if-nez v2, :cond_33d

    move/from16 v1, p4

    goto :goto_33f

    .line 398
    :cond_33d
    iget v1, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    :goto_33f
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 397
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_34e

    const/16 v35, 0x1

    goto :goto_350

    :cond_34c
    move-object/from16 v2, v28

    :cond_34e
    const/16 v35, 0x0

    :goto_350
    if-eqz v35, :cond_353

    const/4 v5, 0x0

    .line 402
    :cond_353
    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 403
    const-string v0, "getContentProviderImpl: got app info for user"

    invoke-virtual {v14, v12, v13, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    xor-int/lit8 v6, v35, 0x1

    move-object v0, v15

    move-object v15, v7

    move-object v7, v0

    move/from16 v4, p4

    move-wide v8, v12

    move-object v1, v14

    move/from16 v14, v18

    move-object/from16 v0, v19

    .line 405
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    move-object v13, v1

    move-object v4, v2

    move v12, v5

    move-object v1, v7

    move-object v5, v3

    move-wide v2, v8

    .line 408
    iget-object v6, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v6, :cond_392

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "system"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38a

    goto :goto_392

    .line 412
    :cond_38a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to launch content provider before system ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_392
    :goto_392
    monitor-enter p0
    :try_end_393
    .catchall {:try_start_324 .. :try_end_393} :catchall_289

    .line 419
    :try_start_393
    iget-boolean v6, v13, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    if-nez v6, :cond_3cd

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_3cd

    const-string/jumbo v6, "system"

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 420
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3ab

    goto :goto_3cd

    .line 421
    :cond_3ab
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access system provider: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' before system providers are installed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3c9
    move-exception v0

    move-object v1, v13

    goto/16 :goto_6e5

    .line 424
    :cond_3cd
    :goto_3cd
    monitor-exit p0
    :try_end_3ce
    .catchall {:try_start_393 .. :try_end_3ce} :catchall_3c9

    .line 428
    :try_start_3ce
    iget-object v6, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v7, 0x0

    invoke-virtual {v6, v12, v7}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v6

    if-nez v6, :cond_419

    .line 429
    const-string v0, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": user "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is stopped"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-exit v22
    :try_end_415
    .catchall {:try_start_3ce .. :try_end_415} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 435
    :cond_419
    :try_start_419
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v7, "getContentProviderImpl: before getProviderByClass"

    invoke-virtual {v13, v2, v3, v7}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 437
    iget-object v7, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v7, v6, v12}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7

    .line 438
    const-string v8, "getContentProviderImpl: after getProviderByClass"

    invoke-virtual {v13, v2, v3, v8}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v7, :cond_43e

    .line 445
    iget-object v8, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v8, :cond_43b

    if-eqz v0, :cond_43b

    goto :goto_43e

    :cond_43b
    const/16 v16, 0x0

    goto :goto_440

    :cond_43e
    :goto_43e
    const/16 v16, 0x1

    :goto_440
    if-eqz v16, :cond_4ca

    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 452
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v5, v4, v12, v0}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_455

    .line 454
    monitor-exit v22
    :try_end_451
    .catchall {:try_start_419 .. :try_end_451} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 458
    :cond_455
    :try_start_455
    const-string v0, "getContentProviderImpl: before getApplicationInfo"

    invoke-virtual {v13, v2, v3, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 459
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_45e
    .catch Landroid/os/RemoteException; {:try_start_455 .. :try_end_45e} :catch_4bb
    .catchall {:try_start_455 .. :try_end_45e} :catchall_495

    move-object/from16 v23, v15

    :try_start_460
    iget-object v15, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_464
    .catch Landroid/os/RemoteException; {:try_start_460 .. :try_end_464} :catch_4b5
    .catchall {:try_start_460 .. :try_end_464} :catchall_495

    move-object/from16 v34, v6

    move-object/from16 v17, v7

    const-wide/16 v6, 0x400

    :try_start_46a
    invoke-interface {v0, v15, v6, v7, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 462
    const-string v6, "getContentProviderImpl: after getApplicationInfo"

    invoke-virtual {v13, v2, v3, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v0, :cond_499

    .line 464
    const-string v0, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No package info for content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48d
    .catch Landroid/os/RemoteException; {:try_start_46a .. :try_end_48d} :catch_497
    .catchall {:try_start_46a .. :try_end_48d} :catchall_495

    .line 472
    :try_start_48d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_491
    .catchall {:try_start_48d .. :try_end_491} :catchall_289

    .line 465
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v23

    :catchall_495
    move-exception v0

    goto :goto_4c2

    :catch_497
    :goto_497
    move-object v15, v5

    goto :goto_4c6

    .line 467
    :cond_499
    :try_start_499
    iget-object v6, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v0, v12}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v33

    .line 468
    new-instance v30, Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_4a3
    .catch Landroid/os/RemoteException; {:try_start_499 .. :try_end_4a3} :catch_497
    .catchall {:try_start_499 .. :try_end_4a3} :catchall_495

    move-object/from16 v31, v0

    move-object/from16 v32, v5

    :try_start_4a7
    invoke-direct/range {v30 .. v35}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_4aa
    .catch Landroid/os/RemoteException; {:try_start_4a7 .. :try_end_4aa} :catch_4b2
    .catchall {:try_start_4a7 .. :try_end_4aa} :catchall_495

    move-object/from16 v15, v32

    .line 472
    :try_start_4ac
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v5, v30

    goto :goto_4d3

    :catch_4b2
    move-object/from16 v15, v32

    goto :goto_4c6

    :catch_4b5
    move-object v15, v5

    move-object/from16 v34, v6

    move-object/from16 v17, v7

    goto :goto_4c6

    :catch_4bb
    move-object/from16 v34, v6

    move-object/from16 v17, v7

    move-object/from16 v23, v15

    goto :goto_497

    :goto_4c2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    throw v0

    .line 472
    :goto_4c6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4d1

    :cond_4ca
    move-object/from16 v34, v6

    move-object/from16 v17, v7

    move-object/from16 v23, v15

    move-object v15, v5

    :goto_4d1
    move-object/from16 v5, v17

    .line 476
    :goto_4d3
    const-string v0, "getContentProviderImpl: now have ContentProviderRecord"

    invoke-virtual {v13, v2, v3, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v4, :cond_4ec

    .line 478
    invoke-virtual {v5, v4}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_4ec

    move-object/from16 v7, v23

    const/4 v6, 0x1

    .line 483
    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v22
    :try_end_4e8
    .catchall {:try_start_4ac .. :try_end_4e8} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :cond_4ec
    const/4 v6, 0x1

    .line 494
    :try_start_4ed
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_4f4
    if-ge v7, v0, :cond_502

    .line 497
    iget-object v8, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_4ff

    goto :goto_502

    :cond_4ff
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f4

    :cond_502
    :goto_502
    if-lt v7, v0, :cond_699

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18
    :try_end_508
    .catchall {:try_start_4ed .. :try_end_508} :catchall_289

    .line 507
    :try_start_508
    iget-object v0, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_523

    .line 509
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v7, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x1f

    invoke-virtual {v0, v7, v12, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V
    :try_end_51f
    .catchall {:try_start_508 .. :try_end_51f} :catchall_520

    goto :goto_523

    :catchall_520
    move-exception v0

    goto/16 :goto_695

    .line 514
    :cond_523
    :goto_523
    :try_start_523
    const-string v0, "getContentProviderImpl: before set stopped state"

    invoke-virtual {v13, v2, v3, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 516
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 518
    invoke-virtual {v5}, Lcom/android/server/am/ContentProviderRecord;->toString()Ljava/lang/String;

    move-result-object v8

    .line 516
    invoke-virtual {v0, v7, v12, v10, v8}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "getContentProviderImpl: after set stopped state"

    invoke-virtual {v13, v2, v3, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_53c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_523 .. :try_end_53c} :catch_53d
    .catchall {:try_start_523 .. :try_end_53c} :catchall_520

    goto :goto_560

    :catch_53d
    move-exception v0

    .line 521
    :try_start_53e
    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed trying to unstop package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_560
    const-string v0, "getContentProviderImpl: looking for process record"

    invoke-virtual {v13, v2, v3, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 527
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v15, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_5c9

    .line 530
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_5c9

    .line 531
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v8

    if-nez v8, :cond_5c9

    .line 535
    iget-object v8, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v9, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v0, v9, v5}, Lcom/android/server/am/ProcessStateController;->addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z

    move-result v8

    if-eqz v8, :cond_599

    .line 537
    const-string v8, "getContentProviderImpl: scheduling install"

    invoke-virtual {v13, v2, v3, v8}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 538
    iget-object v8, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x7

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_596
    .catchall {:try_start_53e .. :try_end_596} :catchall_520

    .line 541
    :try_start_596
    invoke-interface {v7, v15}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_599
    .catch Landroid/os/RemoteException; {:try_start_596 .. :try_end_599} :catch_599
    .catchall {:try_start_596 .. :try_end_599} :catchall_520

    .line 545
    :catch_599
    :cond_599
    :try_start_599
    iget v1, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    move-object/from16 v17, v5

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 551
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v8

    const/4 v9, 0x0

    move v7, v11

    const-wide/16 v10, 0x0

    move-object/from16 v20, v0

    const/16 v0, 0x1dd

    move-wide/from16 v24, v2

    const/4 v3, 0x1

    move-object v2, v4

    const/4 v4, 0x1

    move-object/from16 v6, p5

    move-object/from16 v28, v2

    move/from16 v21, v12

    move-object/from16 v32, v15

    move-object/from16 v12, v17

    move/from16 v2, p4

    move/from16 v17, v14

    move-wide/from16 v14, v24

    .line 545
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    move-wide/from16 v26, v14

    move-object/from16 v0, v20

    goto/16 :goto_68a

    :cond_5c9
    move-object/from16 v28, v4

    move v7, v11

    move/from16 v21, v12

    move/from16 v17, v14

    move-object/from16 v32, v15

    move-wide v14, v2

    move-object v12, v5

    .line 554
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_5df

    const/4 v5, 0x2

    move v4, v5

    goto :goto_5e0

    :cond_5df
    const/4 v4, 0x1

    .line 558
    :goto_5e0
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v9

    .line 559
    const-string v0, "getContentProviderImpl: before start process"

    invoke-virtual {v13, v14, v15, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 560
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v1, v32

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v5, Lcom/android/server/am/HostingRecord;

    const-string v6, "content provider"

    new-instance v8, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6, v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    move-object/from16 v36, v0

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v41, v5

    invoke-virtual/range {v36 .. v44}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 566
    const-string v2, "getContentProviderImpl: after start process"

    invoke-virtual {v13, v14, v15, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v0, :cond_661

    .line 568
    const-string v0, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for provider "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": process is bad"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_657
    .catchall {:try_start_599 .. :try_end_657} :catchall_520

    .line 592
    :try_start_657
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_65b
    .catchall {:try_start_657 .. :try_end_65b} :catchall_289

    .line 572
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_65e
    const/16 v23, 0x0

    return-object v23

    :cond_661
    move-object/from16 v3, p2

    .line 578
    :try_start_663
    iget v2, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x14

    const-wide/16 v10, 0x0

    move-object v6, v0

    const/16 v0, 0x1dd

    const/4 v3, 0x3

    move-object/from16 v32, v1

    move v1, v2

    move-wide/from16 v26, v14

    move/from16 v2, p4

    move-object v14, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 586
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    move-wide/from16 v6, v24

    .line 587
    invoke-virtual {v0, v6, v7, v14}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessContentProviderStart(JLcom/android/server/am/ProcessRecord;)V

    move-object v0, v14

    .line 589
    :goto_68a
    iput-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 590
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_691
    .catchall {:try_start_663 .. :try_end_691} :catchall_520

    .line 592
    :try_start_691
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6a4

    :goto_695
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    throw v0

    :cond_699
    move-wide/from16 v26, v2

    move-object/from16 v28, v4

    move/from16 v21, v12

    move/from16 v17, v14

    move-object/from16 v32, v15

    move-object v12, v5

    .line 596
    :goto_6a4
    const-string v0, "getContentProviderImpl: updating data structures"

    move-wide/from16 v8, v26

    invoke-virtual {v13, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v16, :cond_6b4

    .line 601
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v12}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 604
    :cond_6b4
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v15, p2

    invoke-virtual {v0, v15, v12}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 605
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-wide v10, v8

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v3, v12

    move-object v1, v13

    move-object/from16 v2, v28

    move/from16 v13, p8

    move-object v12, v0

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v2

    move-object v12, v3

    move-wide v8, v10

    if-eqz v2, :cond_6de

    const/4 v11, 0x1

    .line 608
    iput-boolean v11, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_6dd
    .catchall {:try_start_691 .. :try_end_6dd} :catchall_289

    goto :goto_6df

    :cond_6de
    const/4 v11, 0x1

    :goto_6df
    move-object v3, v12

    move/from16 v5, v21

    move-object/from16 v0, v32

    goto :goto_6f2

    .line 424
    :goto_6e5
    :try_start_6e5
    monitor-exit p0
    :try_end_6e6
    .catchall {:try_start_6e5 .. :try_end_6e6} :catchall_6e7

    :try_start_6e6
    throw v0

    :catchall_6e7
    move-exception v0

    goto :goto_6e5

    :cond_6e9
    move-wide v8, v12

    move-object v1, v14

    move/from16 v17, v18

    move/from16 v5, v29

    const/4 v11, 0x1

    move-object/from16 v3, v16

    .line 611
    :goto_6f2
    const-string v4, "getContentProviderImpl: done!"

    invoke-virtual {v1, v8, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 613
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 614
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    move/from16 v7, p4

    const/4 v10, 0x0

    .line 613
    invoke-virtual {v4, v5, v10, v7, v6}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    if-eqz p1, :cond_786

    .line 618
    monitor-enter v3
    :try_end_70a
    .catchall {:try_start_6e6 .. :try_end_70a} :catchall_289

    .line 619
    :try_start_70a
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v4, :cond_779

    .line 620
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_75f

    .line 621
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": launching app became null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 626
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 625
    invoke-static {v1, v2, v0, v15}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 629
    monitor-exit v3
    :try_end_757
    .catchall {:try_start_70a .. :try_end_757} :catchall_75d

    :try_start_757
    monitor-exit v22
    :try_end_758
    .catchall {:try_start_757 .. :try_end_758} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_65e

    :catchall_75d
    move-exception v0

    goto :goto_784

    :cond_75f
    if-eqz v2, :cond_763

    .line 633
    :try_start_761
    iput-boolean v11, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 635
    :cond_763
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x49

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 637
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 638
    iget-object v1, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v4, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v4, v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 641
    :cond_779
    monitor-exit v3
    :try_end_77a
    .catchall {:try_start_761 .. :try_end_77a} :catchall_75d

    const/4 v7, 0x0

    .line 645
    :try_start_77b
    invoke-virtual {v3, v2, v7}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v22
    :try_end_780
    .catchall {:try_start_77b .. :try_end_780} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 641
    :goto_784
    :try_start_784
    monitor-exit v3
    :try_end_785
    .catchall {:try_start_784 .. :try_end_785} :catchall_75d

    :try_start_785
    throw v0

    .line 647
    :cond_786
    monitor-exit v22
    :try_end_787
    .catchall {:try_start_785 .. :try_end_787} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget v6, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 654
    monitor-enter v3

    .line 655
    :cond_793
    :goto_793
    :try_start_793
    iget-object v6, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v6, :cond_822

    .line 656
    iget-object v6, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_7e6

    .line 657
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": launching app became null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 661
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 660
    invoke-static {v1, v2, v0, v15}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 663
    monitor-exit v3
    :try_end_7e0
    .catchall {:try_start_793 .. :try_end_7e0} :catchall_7e3

    const/16 v23, 0x0

    return-object v23

    :catchall_7e3
    move-exception v0

    goto/16 :goto_8a2

    .line 666
    :cond_7e6
    :try_start_7e6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_7ea
    .catch Ljava/lang/InterruptedException; {:try_start_7e6 .. :try_end_7ea} :catch_81c
    .catchall {:try_start_7e6 .. :try_end_7ea} :catchall_7f7

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    :try_start_7ee
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    if-eqz v2, :cond_7fb

    .line 672
    iput-boolean v11, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_7fb

    :catchall_7f7
    move-exception v0

    goto :goto_816

    :catch_7f9
    const/4 v7, 0x0

    goto :goto_81f

    :cond_7fb
    :goto_7fb
    cmp-long v10, v6, v8

    if-lez v10, :cond_802

    .line 675
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 677
    :cond_802
    iget-object v6, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_804
    .catch Ljava/lang/InterruptedException; {:try_start_7ee .. :try_end_804} :catch_7f9
    .catchall {:try_start_7ee .. :try_end_804} :catchall_7f7

    if-nez v6, :cond_80f

    if-eqz v2, :cond_80c

    const/4 v7, 0x0

    .line 684
    :try_start_809
    iput-boolean v7, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_80d

    :cond_80c
    const/4 v7, 0x0

    :goto_80d
    move v5, v11

    goto :goto_823

    :cond_80f
    const/4 v7, 0x0

    if-eqz v2, :cond_793

    :goto_812
    iput-boolean v7, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto/16 :goto_793

    :goto_816
    if-eqz v2, :cond_81b

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 686
    :cond_81b
    throw v0

    :catch_81c
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :goto_81f
    if-eqz v2, :cond_793

    goto :goto_812

    :cond_822
    const/4 v5, 0x0

    .line 688
    :goto_823
    monitor-exit v3
    :try_end_824
    .catchall {:try_start_809 .. :try_end_824} :catchall_7e3

    if-eqz v5, :cond_89c

    .line 691
    const-string/jumbo v2, "unknown"

    if-eqz p1, :cond_84e

    .line 693
    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 694
    :try_start_833
    iget-object v1, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v14, p1

    .line 695
    invoke-virtual {v1, v14}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_844

    .line 697
    iget-object v2, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    goto :goto_844

    :catchall_842
    move-exception v0

    goto :goto_849

    .line 699
    :cond_844
    :goto_844
    monitor-exit v3
    :try_end_845
    .catchall {:try_start_833 .. :try_end_845} :catchall_842

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_84e

    :goto_849
    :try_start_849
    monitor-exit v3
    :try_end_84a
    .catchall {:try_start_849 .. :try_end_84a} :catchall_842

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 702
    :cond_84e
    :goto_84e
    const-string v1, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for provider "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providerRunning="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v17

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " caller="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65e

    :cond_89c
    const/4 v7, 0x0

    .line 708
    invoke-virtual {v3, v2, v7}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    .line 688
    :goto_8a2
    :try_start_8a2
    monitor-exit v3
    :try_end_8a3
    .catchall {:try_start_8a2 .. :try_end_8a3} :catchall_7e3

    throw v0

    .line 647
    :goto_8a4
    :try_start_8a4
    monitor-exit v22
    :try_end_8a5
    .catchall {:try_start_8a4 .. :try_end_8a5} :catchall_289

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .registers 16

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "getProviderMimeTypeAsync"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 1031
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1032
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1033
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1, p2}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v7

    .line 1034
    invoke-virtual {p0, v0, v5, v7}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result p2

    const-wide/16 v8, 0x0

    if-eqz p2, :cond_29

    .line 1035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_2a

    :cond_29
    move-wide v10, v8

    .line 1038
    :goto_2a
    :try_start_2a
    const-string v6, "*getmimetype*"

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_a5

    cmp-long p2, v10, v8

    if-eqz p2, :cond_39

    .line 1042
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1047
    :cond_39
    :try_start_39
    invoke-virtual {v2, p0, v5, v7}, Lcom/android/server/am/ContentProviderHelper;->isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 1048
    invoke-virtual {v2, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkGetAnyTypePermission(II)Z

    move-result p2
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_43} :catch_7d

    if-eqz p2, :cond_63

    .line 1049
    :try_start_45
    new-instance p2, Landroid/content/AttributionSource$Builder;

    invoke-direct {p2, v5}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 1050
    invoke-virtual {p2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p2

    .line 1051
    iget-object p0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, v3, v7, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p0, p2, p1, v0}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception v0

    move-object p0, v0

    move-object v8, p1

    move-object v6, p3

    goto :goto_89

    .line 1062
    :cond_63
    :try_start_63
    iget-object p0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance p2, Landroid/os/RemoteCallback;

    move-object v4, v3

    move-object v3, v2

    new-instance v2, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6b} :catch_7d

    move v6, v7

    move v7, v5

    move v5, v6

    move-object v8, p1

    move-object v6, p3

    :try_start_70
    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;)V

    invoke-direct {p2, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p0, v8, p2}, Landroid/content/IContentProvider;->getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    return-void

    :catch_7a
    move-exception v0

    :goto_7b
    move-object p0, v0

    goto :goto_89

    :catch_7d
    move-exception v0

    move-object v8, p1

    move-object v6, p3

    goto :goto_7b

    :cond_81
    move-object v8, p1

    move-object v6, p3

    .line 1077
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v6, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_88} :catch_7a

    return-void

    .line 1080
    :goto_89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Content provider dead retrieving "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentProviderHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1081
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v6, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :catchall_a5
    move-exception v0

    move-object p0, v0

    cmp-long p1, v10, v8

    if-eqz p1, :cond_ae

    .line 1042
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    :cond_ae
    throw p0
.end method

.method public getProviderInfoLocked(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 6

    .line 1666
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1668
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    return-object p0

    .line 1671
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    or-int/lit16 p3, p3, 0x800

    int-to-long v0, p3

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProviderMap()Lcom/android/server/am/ProviderMap;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-object p0
.end method

.method public final handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 14

    .line 1532
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    if-eqz p1, :cond_8e

    .line 1534
    :try_start_8
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_8e

    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    move-result p2

    if-eqz p2, :cond_14

    goto/16 :goto_8e

    .line 1538
    :cond_14
    iget-object p2, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 1539
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    .line 1540
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1541
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_35

    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1542
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    goto :goto_35

    :catchall_32
    move-exception v0

    move-object p0, v0

    goto :goto_93

    .line 1544
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/ProcessStateController;->removeProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V

    .line 1545
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_57

    .line 1549
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_57

    .line 1550
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 1551
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1550
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ProcessStateController;->setLastProviderTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 1554
    :cond_57
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v4, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v5, p2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, p2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p3, :cond_89

    .line 1556
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, v0, p2}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionRemoval(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result p2

    if-eqz p2, :cond_89

    .line 1558
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 1560
    :cond_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_8 .. :try_end_8a} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1535
    :cond_8e
    :goto_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1560
    :goto_93
    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 1522
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_8
    if-ltz p0, :cond_1c

    .line 1523
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    return v0

    :cond_19
    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move-wide/from16 v4, p9

    const/4 v6, 0x0

    if-nez v1, :cond_1b

    .line 1453
    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/am/ProcessStateController;->addExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V

    return-object v6

    .line 1459
    :cond_1b
    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1460
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_23
    if-ge v10, v8, :cond_34

    .line 1461
    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v11

    .line 1462
    iget-object v12, v11, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-ne v12, v2, :cond_31

    .line 1463
    invoke-virtual {v11, v3}, Lcom/android/server/am/ContentProviderConnection;->incrementCount(Z)I

    return-object v11

    :cond_31
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    .line 1469
    :cond_34
    new-instance v7, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v8, p5

    move/from16 v10, p12

    invoke-direct {v7, v2, v1, v8, v10}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 1471
    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    .line 1472
    invoke-virtual {v7, v3}, Lcom/android/server/am/ContentProviderConnection;->initializeCount(Z)V

    .line 1473
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_53

    .line 1475
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v8, 0x40

    invoke-virtual {v3, v8}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1477
    :cond_53
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v1, v7}, Lcom/android/server/am/ProcessStateController;->addProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V

    .line 1478
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v12, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v13

    iget v14, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 p3, v7

    iget-wide v6, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v3

    move-wide v15, v6

    move-object/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    if-eqz p8, :cond_9c

    .line 1480
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_9c

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v1

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_9c

    .line 1487
    const-string v1, "getContentProviderImpl: before updateLruProcess"

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 1488
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v9, v3}, Lcom/android/server/am/ProcessStateController;->updateLruProcess(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1489
    const-string v1, "getContentProviderImpl: after updateLruProcess"

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    :cond_9c
    return-object p3
.end method

.method public installEncryptionUnawareProviders(I)V
    .registers 13

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1402
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1403
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 1404
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_55

    .line 1406
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 1407
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v3

    :goto_27
    if-ge v7, v6, :cond_52

    .line 1408
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1409
    iget v9, v8, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-ne v9, p1, :cond_4f

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_4f

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isUnlocked()Z

    move-result v9

    if-eqz v9, :cond_40

    goto :goto_4f

    .line 1413
    :cond_40
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    new-instance v10, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_4f

    :catchall_4d
    move-exception p0

    goto :goto_5a

    :cond_4f
    :goto_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1444
    :cond_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final installSystemProviders()V
    .registers 9

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1356
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1357
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    const-string/jumbo v2, "system"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1358
    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5a

    .line 1360
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_25
    if-ltz v3, :cond_5a

    .line 1361
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 1362
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_57

    .line 1363
    const-string v5, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not installing system proc provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": not system .apk"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_b3

    :cond_57
    :goto_57
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    .line 1369
    :cond_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_67

    .line 1372
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    .line 1374
    :cond_67
    monitor-enter p0

    .line 1375
    :try_start_68
    iput-boolean v2, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    .line 1376
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_b0

    .line 1378
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerConstants;->start(Landroid/content/ContentResolver;)V

    .line 1379
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/CoreSettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    .line 1380
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->installSystemProviders()V

    .line 1381
    new-instance v0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    .line 1382
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 1383
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 1384
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setupServicePrewarmingOnUserSwitch()V

    .line 1387
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->rescuePartyOnSettingsProviderPublished(Landroid/content/Context;)V

    return-void

    :catchall_b0
    move-exception v0

    .line 1376
    :try_start_b1
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0

    .line 1369
    :goto_b3
    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z
    .registers 4

    .line 2009
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2010
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 2011
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2013
    :cond_19
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v0

    .line 2014
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 1114
    iget-object v1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-nez v1, :cond_8

    goto :goto_36

    .line 1118
    :cond_8
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1119
    invoke-static {p3}, Lcom/android/server/am/ContentProviderHelper;->resolveParentUserIdForCloneProfile(I)I

    move-result v1

    if-eq v1, p3, :cond_27

    .line 1122
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    :goto_24
    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1126
    :cond_27
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    goto :goto_24

    :cond_36
    :goto_36
    return v0
.end method

.method public final isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8

    .line 1709
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    .line 1716
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1717
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 1718
    sget-object v4, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 1726
    :cond_2e
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x5a

    cmp-long p0, v2, v4

    if-eqz p0, :cond_54

    const-wide/16 v4, 0x58

    cmp-long p0, v2, v4

    if-eqz p0, :cond_54

    const-wide/16 v4, 0x78

    cmp-long p0, v2, v4

    if-eqz p0, :cond_54

    const-wide/16 v4, 0x4b

    cmp-long p0, v2, v4

    if-eqz p0, :cond_54

    .line 1732
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result p0

    iget p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne p0, p1, :cond_54

    const/4 p0, 0x1

    return p0

    :cond_54
    return v1
.end method

.method public final isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z
    .registers 5

    .line 2023
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 2024
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isSystemUserOnly(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 2025
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$checkContentProviderAssociation$4(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1656
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p3, p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_13

    .line 1658
    iget-object p0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$decProviderCountLocked$3(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 4

    .line 1512
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method public final synthetic lambda$getMimeTypeFilterAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 8

    .line 1053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1055
    :try_start_5
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    .line 1057
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    invoke-virtual {p3, p4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :catchall_f
    move-exception p0

    .line 1057
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    throw p0
.end method

.method public final synthetic lambda$getMimeTypeFilterAsync$1(Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .registers 10

    .line 1063
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1065
    :try_start_5
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_18

    .line 1067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    invoke-virtual {p3, p6}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1070
    invoke-virtual {p6}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 1072
    invoke-virtual {p0, p4, p5, p1}, Lcom/android/server/am/ContentProviderHelper;->logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 1067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    throw p0
.end method

.method public final synthetic lambda$installEncryptionUnawareProviders$2(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 14

    .line 1415
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    const-wide/32 v2, 0x40008

    .line 1416
    invoke-interface {v0, p2, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 1417
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz p2, :cond_94

    .line 1418
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 1419
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_94

    aget-object v4, p2, v3

    .line 1421
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 1422
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_36

    iget-boolean v5, v4, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v5, :cond_34

    goto :goto_36

    :cond_34
    move v5, v2

    goto :goto_37

    :cond_36
    :goto_36
    move v5, v6

    .line 1424
    :goto_37
    invoke-virtual {p0, v4}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    move-result v7

    if-eqz v7, :cond_44

    iget v7, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-nez v7, :cond_42

    goto :goto_44

    :cond_42
    move v7, v2

    goto :goto_45

    :cond_44
    :goto_44
    move v7, v6

    .line 1426
    :goto_45
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    .line 1427
    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v9, :cond_5b

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1428
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_57} :catch_94
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_57} :catch_94

    if-eqz v9, :cond_5a

    goto :goto_5b

    :cond_5a
    move v6, v2

    .line 1430
    :cond_5b
    :goto_5b
    const-string v9, "ContentProviderHelper"

    if-eqz v5, :cond_7d

    if-eqz v7, :cond_7d

    if-eqz v8, :cond_65

    if-eqz v6, :cond_7d

    .line 1432
    :cond_65
    :try_start_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto :goto_91

    .line 1435
    :cond_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_91} :catch_94
    .catch Ljava/lang/SecurityException; {:try_start_65 .. :try_end_91} :catch_94

    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :catch_94
    :cond_94
    return-void
.end method

.method public final logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    const/4 p0, 0x1

    .line 1097
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x234

    .line 1095
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_4a

    .line 1682
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_a

    goto :goto_4a

    .line 1686
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_4a

    .line 1688
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1689
    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_32

    .line 1690
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    sub-long v5, v1, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4a

    .line 1691
    :cond_32
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_41

    .line 1693
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p0, p3, p2, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1696
    :cond_41
    iget-object p0, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_4a
    return-void
.end method

.method public processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9

    const/4 v0, 0x1

    .line 1240
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 1241
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v5, 0x0

    const-string/jumbo v6, "timeout publishing content providers"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    return-void
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_9

    return-void

    .line 733
    :cond_9
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "publishContentProviders"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedOrSdkSandboxCaller(Ljava/lang/String;)V

    .line 734
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 735
    :try_start_17
    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_112

    .line 745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 747
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_29
    if-ge v8, v1, :cond_e0

    .line 748
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    if-eqz v10, :cond_3b

    .line 749
    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_3b

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v12, :cond_3f

    :cond_3b
    :goto_3b
    move v13, v8

    const/4 v7, 0x0

    goto/16 :goto_dc

    .line 752
    :cond_3f
    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    if-nez v11, :cond_4a

    goto :goto_3b

    .line 761
    :cond_4a
    new-instance v9, Landroid/content/ComponentName;

    iget-object v12, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v12, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v12, v9, v11}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 763
    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    .line 764
    :goto_65
    array-length v13, v9

    if-ge v12, v13, :cond_75

    .line 765
    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v14, v9, v12

    invoke-virtual {v13, v14, v11}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_65

    :catchall_72
    move-exception v0

    goto/16 :goto_13a

    .line 769
    :cond_75
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_7d
    const/4 v14, 0x1

    if-ge v12, v9, :cond_94

    .line 770
    iget-object v15, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v11, :cond_92

    .line 771
    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v9, v9, -0x1

    move v13, v14

    :cond_92
    add-int/2addr v12, v14

    goto :goto_7d

    :cond_94
    if-eqz v13, :cond_a8

    .line 778
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x49

    invoke-virtual {v9, v12, v11}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 780
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x39

    invoke-virtual {v9, v12, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 788
    :cond_a8
    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move v13, v8

    iget-wide v7, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v12, v7, v8, v9}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 790
    monitor-enter v11
    :try_end_b9
    .catchall {:try_start_17 .. :try_end_b9} :catchall_72

    .line 791
    :try_start_b9
    iget-object v7, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iput-object v7, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 792
    invoke-virtual {v11, v4}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 793
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 794
    invoke-virtual {v11, v14}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 795
    monitor-exit v11
    :try_end_c7
    .catchall {:try_start_b9 .. :try_end_c7} :catchall_d9

    const/4 v7, 0x0

    .line 796
    :try_start_c8
    iput v7, v11, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 797
    invoke-virtual {v0, v4}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 798
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V
    :try_end_d7
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_72

    :cond_d7
    move v9, v14

    goto :goto_dc

    :catchall_d9
    move-exception v0

    .line 795
    :try_start_da
    monitor-exit v11
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    :try_start_db
    throw v0

    :goto_dc
    add-int/lit8 v8, v13, 0x1

    goto/16 :goto_29

    :cond_e0
    const/4 v7, 0x0

    if-eqz v9, :cond_10a

    .line 804
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x7

    invoke-virtual {v1, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 805
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_ed
    if-ge v7, v1, :cond_10a

    .line 806
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ContentProviderHolder;

    if-eqz v8, :cond_107

    .line 807
    iget-object v9, v8, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v9, :cond_107

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v8, :cond_100

    goto :goto_107

    .line 810
    :cond_100
    iget-object v8, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4, v8, v9}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    :cond_107
    :goto_107
    add-int/lit8 v7, v7, 0x1

    goto :goto_ed

    .line 815
    :cond_10a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    monitor-exit v3
    :try_end_10e
    .catchall {:try_start_db .. :try_end_10e} :catchall_72

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 740
    :cond_112
    :try_start_112
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when publishing content providers"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :goto_13a
    monitor-exit v3
    :try_end_13b
    .catchall {:try_start_112 .. :try_end_13b} :catchall_72

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .registers 7

    .line 898
    const-string/jumbo p0, "refContentProvider: "

    :try_start_3
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_3f

    if-eqz p1, :cond_37

    .line 909
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_12

    .line 910
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_14

    :cond_12
    const-string v0, ""

    :goto_14
    const-wide/16 v1, 0x40

    .line 908
    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    if-gtz p3, :cond_28

    .line 913
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->unstableCount()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_26

    if-gtz p0, :cond_28

    .line 919
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :catchall_26
    move-exception p0

    goto :goto_33

    .line 916
    :cond_28
    :try_start_28
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ContentProviderConnection;->adjustCounts(II)V

    .line 917
    iget-boolean p0, p1, Lcom/android/server/am/ContentProviderConnection;->dead:Z
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_26

    xor-int/lit8 p0, p0, 0x1

    .line 919
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :goto_33
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 920
    throw p0

    .line 905
    :cond_37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 900
    :catch_3f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a ContentProviderConnection"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 901
    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .registers 15

    .line 823
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "removeContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 828
    :try_start_c
    move-object v4, p1

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_f} :catch_59
    .catchall {:try_start_c .. :try_end_f} :catchall_1f

    if-eqz v4, :cond_51

    .line 838
    :try_start_11
    const-string/jumbo p1, "removeContentProvider: "

    .line 840
    iget-object v0, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_22

    .line 841
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_24

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :cond_22
    const-string v0, ""

    :goto_24
    const-wide/16 v10, 0x40

    .line 838
    invoke-static {v10, v11, p1, v0}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_1f

    .line 843
    :try_start_29
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_43

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v7, p2

    .line 844
    :try_start_35
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    .line 845
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_46

    :try_start_39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    .line 847
    :try_start_3c
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_1f

    .line 850
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_43
    move-exception v0

    move-object p0, v0

    goto :goto_4d

    :catchall_46
    move-exception v0

    move-object p0, v0

    .line 845
    :try_start_48
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_46

    :try_start_49
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_43

    .line 847
    :goto_4d
    :try_start_4d
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 848
    throw p0

    .line 836
    :cond_51
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 830
    :catch_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeContentProvider: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a ContentProviderConnection"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 832
    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7b
    .catchall {:try_start_4d .. :try_end_7b} :catchall_1f

    .line 850
    :goto_7b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 851
    throw p0
.end method

.method public removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 7

    .line 855
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call removeContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 860
    :try_start_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 862
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    throw p0
.end method

.method public removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 7

    .line 867
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 868
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    if-nez p1, :cond_15

    .line 874
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_84

    .line 878
    :cond_15
    :try_start_15
    new-instance v1, Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p1, v1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    .line 880
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result p3

    if-eqz p3, :cond_64

    .line 881
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_40

    .line 883
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    goto :goto_7f

    .line 885
    :cond_40
    const-string p0, "ContentProviderHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove content provider "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external reference for token: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 889
    :cond_64
    const-string p0, "ContentProviderHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to remove content provider: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external references."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_15 .. :try_end_80} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_84
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1795
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    if-nez p3, :cond_1b

    .line 1796
    iget v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_1b

    move v5, v4

    goto :goto_1d

    :cond_1b
    move/from16 v5, p3

    :goto_1d
    const/4 v6, 0x0

    if-eqz v3, :cond_22

    if-eqz v5, :cond_84

    .line 1802
    :cond_22
    monitor-enter p2

    const/4 v7, 0x0

    .line 1803
    :try_start_24
    iput-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 1804
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1805
    invoke-virtual {v2, v6}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 1806
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x49

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1808
    monitor-exit p2
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_160

    .line 1809
    iget v7, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1813
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v8

    if-ne v8, v2, :cond_4f

    .line 1814
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/ProviderMap;->removeProviderByClass(Landroid/content/ComponentName;I)V

    move v8, v4

    goto :goto_50

    :cond_4f
    move v8, v6

    .line 1817
    :goto_50
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v10, v6

    .line 1818
    :goto_5b
    array-length v11, v9

    if-ge v10, v11, :cond_73

    .line 1821
    iget-object v11, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v12, v9, v10

    invoke-virtual {v11, v12, v7}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    if-ne v11, v2, :cond_70

    .line 1822
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v9, v10

    invoke-virtual {v8, v11, v7}, Lcom/android/server/am/ProviderMap;->removeProviderByName(Ljava/lang/String;I)V

    move v8, v4

    :cond_70
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    :cond_73
    if-eqz v8, :cond_84

    .line 1826
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_84

    .line 1827
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Lcom/android/server/am/ProcessStateController;->removePublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1831
    :cond_84
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_8b
    if-ltz v7, :cond_153

    .line 1832
    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ContentProviderConnection;

    .line 1833
    iget-boolean v9, v8, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v9, :cond_9f

    if-eqz v3, :cond_9f

    if-nez v5, :cond_9f

    goto/16 :goto_14f

    .line 1841
    :cond_9f
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1842
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    .line 1843
    iput-boolean v4, v8, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    .line 1844
    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderConnection;->stableCount()I

    move-result v11

    if-lez v11, :cond_105

    .line 1845
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    .line 1846
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v11

    if-nez v11, :cond_14f

    if-eqz v10, :cond_14f

    if-eqz v8, :cond_14f

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v10, :cond_14f

    .line 1848
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "depends on provider "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    .line 1849
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in dying proc "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_dc

    .line 1850
    iget-object v10, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    goto :goto_de

    :cond_dc
    const-string v10, "??"

    :goto_de
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (adj "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_f1

    .line 1851
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_f3

    :cond_f1
    const-string v10, "??"

    :goto_f3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xc

    .line 1848
    invoke-virtual {v9, v8, v10, v6, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_14f

    :cond_105
    if-eqz v10, :cond_14f

    .line 1856
    iget-object v11, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v11, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eqz v11, :cond_14f

    .line 1858
    :try_start_10d
    invoke-interface {v11}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_114} :catch_114

    .line 1863
    :catch_114
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1864
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_12c

    invoke-virtual {v0, v10}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v10

    if-nez v10, :cond_12c

    .line 1865
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1867
    :cond_12c
    iget-object v10, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v10, v8}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    move-result v8

    if-eqz v8, :cond_14f

    .line 1868
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v9, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v12, v9, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v14, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v2, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    :cond_14f
    :goto_14f
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_8b

    :cond_153
    if-eqz v3, :cond_15f

    if-eqz v5, :cond_15f

    .line 1875
    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1876
    iput v6, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    move v3, v6

    :cond_15f
    return v3

    :catchall_160
    move-exception v0

    .line 1808
    :try_start_161
    monitor-exit p2
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_160

    throw v0
.end method

.method public final requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .registers 7

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 v0, 0x0

    if-eqz p2, :cond_41

    .line 1762
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result p2

    if-eqz p2, :cond_1a

    goto :goto_41

    .line 1766
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "u"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Instantiating a provider in package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires a permissions review"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1771
    :cond_41
    :goto_41
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    .line 1772
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1773
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1781
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p3, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    invoke-direct {p3, p4, p2, p1}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .registers 9

    .line 926
    :try_start_0
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_f5

    if-eqz p1, :cond_ed

    .line 936
    const-string/jumbo v0, "unstableProviderDied: "

    .line 938
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_12

    .line 939
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_14

    :cond_12
    const-string v1, ""

    :goto_14
    const-wide/16 v2, 0x40

    .line 936
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 944
    :try_start_19
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_73

    .line 945
    :try_start_1f
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 946
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_e3

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_73

    if-nez v1, :cond_2d

    .line 989
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 954
    :cond_2d
    :try_start_2d
    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 956
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_73

    .line 957
    :try_start_3d
    const-string v0, "ContentProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unstableProviderDied: caller "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " says "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " died, but we don\'t agree"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_3d .. :try_end_66} :catchall_6d

    .line 989
    :goto_66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_6d
    move-exception p1

    .line 960
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :catchall_73
    move-exception p0

    goto/16 :goto_e9

    .line 964
    :cond_76
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_73

    .line 965
    :try_start_7c
    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, p1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eq v4, v1, :cond_86

    .line 967
    monitor-exit v0

    goto :goto_66

    :catchall_84
    move-exception p0

    goto :goto_de

    .line 970
    :cond_86
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_dc

    .line 971
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-nez v1, :cond_91

    goto :goto_dc

    .line 978
    :cond_91
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") early provider death"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 978
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 981
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_c4
    .catchall {:try_start_7c .. :try_end_c4} :catchall_84

    .line 983
    :try_start_c4
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "unstable content provider"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_d7

    .line 985
    :try_start_cc
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 987
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_84

    :try_start_d0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_73

    .line 989
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_d7
    move-exception p0

    .line 985
    :try_start_d8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    throw p0

    .line 973
    :cond_dc
    :goto_dc
    monitor-exit v0

    goto :goto_66

    .line 987
    :goto_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_84

    :try_start_df
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_73

    :catchall_e3
    move-exception p0

    .line 946
    :try_start_e4
    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    :try_start_e5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_73

    .line 989
    :goto_e9
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 990
    throw p0

    .line 933
    :cond_ed
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 928
    :catch_f5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refContentProvider: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a ContentProviderConnection"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 929
    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
