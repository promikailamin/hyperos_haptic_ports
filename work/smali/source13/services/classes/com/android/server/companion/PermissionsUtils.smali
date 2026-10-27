.class final Lcom/android/server/companion/PermissionsUtils;
.super Ljava/lang/Object;
.source "PermissionsUtils.java"


# static fields
.field private static final DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppOpsService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 62
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "android.app.role.COMPANION_DEVICE_WATCH"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_WATCH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "android.app.role.COMPANION_DEVICE_COMPUTER"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/server/companion/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    .line 229
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCallerCanInteractWithUserId(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    return v1

    .line 109
    :cond_8
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method static checkCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 187
    invoke-static {p1, p2}, Lcom/android/server/companion/PermissionsUtils;->checkCallerIsSystemOr(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 189
    :cond_8
    invoke-static {p0, p1}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanInteractWithUserId(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return v0

    .line 191
    :cond_10
    invoke-static {p0}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageCompanionDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static checkCallerCanManageCompanionDevice(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 154
    :cond_a
    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method static checkCallerIsSystemOr(ILjava/lang/String;)Z
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 126
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 128
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p0, :cond_12

    return v3

    .line 130
    :cond_12
    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    return v3

    .line 132
    :cond_19
    return v1
.end method

.method private static checkPackage(ILjava/lang/String;)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/android/server/companion/PermissionsUtils;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_e

    if-nez v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 210
    :catch_e
    move-exception v1

    .line 212
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method static enforceCallerCanInteractWithUserId(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 113
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 115
    :cond_7
    const/4 v0, 0x0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "actionDescription"    # Ljava/lang/String;

    .line 167
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller (uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not have permissions to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    if-eqz p3, :cond_26

    move-object v2, p3

    goto :goto_29

    :cond_26
    const-string/jumbo v2, "manage associations"

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 161
    :cond_9
    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method static enforceCallerIsSystemOr(ILjava/lang/String;)V
    .registers 8
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 137
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 139
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 140
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v3, ")"

    if-ne v2, p0, :cond_3d

    .line 145
    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 149
    return-void

    .line 146
    :cond_1c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t belong to calling uid ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_3d
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling UserId ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") does not match the expected UserId ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 121
    :cond_9
    invoke-static {p0, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanInteractWithUserId(Landroid/content/Context;I)V

    .line 122
    return-void
.end method

.method static enforcePermissionsForAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "packageUid"    # I

    .line 74
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceRequestDeviceProfilePermissions(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    invoke-static {p0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceRequestSelfManagedPermission(Landroid/content/Context;I)V

    .line 79
    :cond_10
    return-void
.end method

.method static enforceRequestDeviceProfilePermissions(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceProfile"    # Ljava/lang/String;
    .param p2, "packageUid"    # I

    .line 84
    if-nez p1, :cond_3

    return-void

    .line 86
    :cond_3
    sget-object v0, Lcom/android/server/companion/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 90
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "permission":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1c

    .line 96
    return-void

    .line 93
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application must hold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to associate with a device with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " profile."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0    # "permission":Ljava/lang/String;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported device profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static enforceRequestSelfManagedPermission(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageUid"    # I

    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_d

    .line 104
    return-void

    .line 101
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application does not hold android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 217
    sget-object v0, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v0, :cond_1c

    .line 218
    const-class v0, Lcom/android/server/companion/PermissionsUtils;

    monitor-enter v0

    .line 219
    :try_start_7
    sget-object v1, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_17

    .line 220
    const-string v1, "appops"

    .line 221
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 223
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1

    .line 225
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static sanitizeWithCallerChecks(Landroid/content/Context;Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 196
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 198
    :cond_4
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 199
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p0, v1, v2}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 201
    return-object v0

    .line 204
    :cond_13
    return-object p1
.end method
