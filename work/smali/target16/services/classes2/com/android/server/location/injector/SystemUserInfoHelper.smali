.class public abstract Lcom/android/server/location/injector/SystemUserInfoHelper;
.super Lcom/android/server/location/injector/UserInfoHelper;
.source "SystemUserInfoHelper.java"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$rmbCOanELEWco8WhmNYmOOvB1A0(Lcom/android/server/location/injector/SystemUserInfoHelper;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemUserInfoHelper;->lambda$onSystemReady$0(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/android/server/location/injector/UserInfoHelper;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 188
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 189
    array-length p3, p1

    const/4 v0, 0x1

    if-le p3, v0, :cond_21

    .line 190
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "running users: u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 193
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_80

    .line 198
    :cond_28
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object p1

    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current users: u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_80

    .line 203
    array-length p3, p1

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, p3, :cond_80

    aget v1, p1, v0

    .line 204
    const-string/jumbo v2, "no_share_location"

    .line 205
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 204
    invoke-virtual {p0, v2, v3}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 206
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_80
    :goto_80
    return-void
.end method

.method public final getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_e

    .line 85
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_12

    .line 87
    :cond_e
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_c

    .line 89
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0

    .line 87
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    throw v0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_12

    .line 74
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_16

    .line 76
    :cond_12
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_10

    .line 78
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0

    .line 76
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_10

    throw v0
.end method

.method public getCurrentUserId()I
    .registers 3

    .line 137
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 141
    :try_start_a
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw p0

    :cond_17
    const/16 p0, -0x2710

    return p0
.end method

.method public getProfileIds(I)[I
    .registers 4

    .line 170
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 173
    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 177
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    throw p0
.end method

.method public getRunningUserIds()[I
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 109
    :try_start_a
    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_14
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_1a

    :catch_14
    move-exception p0

    .line 111
    :try_start_15
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    .line 113
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    throw p0

    :cond_1e
    const/4 p0, 0x0

    .line 116
    new-array p0, p0, [I

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_14

    .line 96
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_18

    .line 98
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_12

    .line 100
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    return-object p0

    .line 98
    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_12

    throw v0
.end method

.method public isCurrentUserId(I)Z
    .registers 4

    .line 122
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 126
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public isVisibleUserId(I)Z
    .registers 5

    .line 152
    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 156
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 160
    :try_start_10
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_1f

    .line 161
    :try_start_11
    iget-object v2, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(I)Z

    move-result p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1c
    move-exception p1

    .line 162
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    .line 164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    throw p0

    :catchall_24
    move-exception p1

    .line 156
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public final synthetic lambda$onSystemReady$0(IZ)V
    .registers 3

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnVisibleUserChanged(IZ)V

    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .registers 3

    monitor-enter p0

    .line 64
    :try_start_1
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 65
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 66
    new-instance v1, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemUserInfoHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 68
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method
