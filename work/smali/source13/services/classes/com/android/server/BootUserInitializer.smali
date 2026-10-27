.class final Lcom/android/server/BootUserInitializer;
.super Ljava/lang/Object;
.source "BootUserInitializer.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/am/ActivityManagerService;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/server/BootUserInitializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ContentResolver;)V
    .registers 3
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 49
    iput-object p2, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    return-void
.end method

.method private isDeviceProvisioned()Z
    .registers 5

    .line 118
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_e

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    move v0, v2

    :cond_d
    return v0

    .line 120
    :catch_e
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v3, "DEVICE_PROVISIONED setting not found."

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    return v0
.end method

.method private provisionHeadlessSystemUser()V
    .registers 5

    .line 105
    invoke-direct {p0}, Lcom/android/server/BootUserInitializer;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 106
    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "provisionHeadlessSystemUser(): already provisioned"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 110
    :cond_f
    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Marking USER_SETUP_COMPLETE for system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    const-string v1, "Marking DEVICE_PROVISIONED for system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    return-void
.end method

.method private switchToInitialUser(I)V
    .registers 7
    .param p1, "initialUserId"    # I

    .line 154
    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Switching to initial user %d"

    invoke-static {v0, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v2, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    .line 157
    .local v2, "started":Z
    if-nez v2, :cond_27

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "Failed to start user %d in foreground"

    invoke-static {v0, v3, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_27
    return-void
.end method

.method private unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 128
    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Unlocking system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v1, "unlock-system-user"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 133
    :try_start_d
    const-string v1, "am.startUser"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v1

    .line 136
    .local v1, "started":Z
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 137
    if-nez v1, :cond_3d

    .line 138
    const-string v4, "could not restart system user in background; trying unlock instead"

    invoke-static {v0, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v4, "am.unlockUser"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2, v3, v3, v3}, Lcom/android/server/am/ActivityManagerService;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v2

    .line 142
    .local v2, "unlocked":Z
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 143
    if-nez v2, :cond_3d

    .line 144
    const-string v3, "could not unlock system user either"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_42

    .line 149
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 145
    return-void

    .line 149
    .end local v1    # "started":Z
    .end local v2    # "unlocked":Z
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_42
    move-exception v0

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 150
    throw v0
.end method


# virtual methods
.method public init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 14
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 53
    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init())"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/android/server/BootUserInitializer;->provisionHeadlessSystemUser()V

    .line 59
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 60
    .local v1, "um":Lcom/android/server/pm/UserManagerInternal;
    const-string v2, "get-existing-users"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 61
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 62
    .local v9, "existingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 64
    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v2, v10

    const-string v3, "%d existing users"

    invoke-static {v0, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/16 v0, -0x2710

    .line 68
    .local v0, "initialUserId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 69
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 71
    .local v3, "user":Landroid/content/pm/UserInfo;
    sget-object v4, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "User at position %d: %s"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_73

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 75
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "Found initial user: %d"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    .line 78
    goto :goto_76

    .line 68
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 82
    .end local v2    # "i":I
    :cond_76
    :goto_76
    const/16 v2, -0x2710

    if-ne v0, v2, :cond_b8

    .line 83
    sget-object v11, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v2, "Creating initial user"

    invoke-static {v11, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "create-initial-user"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 87
    :try_start_86
    const-string v3, "Real User"

    const-string v4, "android.os.usertype.full.SECONDARY"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserManagerInternal;->createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 90
    .local v2, "newUser":Landroid/content/pm/UserInfo;
    const-string v3, "Created initial user: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v11, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a1} :catch_a8
    .catchall {:try_start_86 .. :try_end_a1} :catchall_a6

    move v0, v3

    .line 96
    .end local v2    # "newUser":Landroid/content/pm/UserInfo;
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 97
    goto :goto_b8

    .line 96
    :catchall_a6
    move-exception v2

    goto :goto_b4

    .line 92
    :catch_a8
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a9
    sget-object v3, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v4, "failed to created initial user"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_a6

    .line 96
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 94
    return-void

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b4
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 97
    throw v2

    .line 100
    :cond_b8
    :goto_b8
    invoke-direct {p0, p1}, Lcom/android/server/BootUserInitializer;->unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/android/server/BootUserInitializer;->switchToInitialUser(I)V

    .line 102
    return-void
.end method
