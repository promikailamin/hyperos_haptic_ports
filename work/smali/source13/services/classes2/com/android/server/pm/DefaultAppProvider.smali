.class public Lcom/android/server/pm/DefaultAppProvider;
.super Ljava/lang/Object;
.source "DefaultAppProvider.java"


# instance fields
.field private final mRoleManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/app/role/RoleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManagerInternalSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/UserManagerInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/app/role/RoleManager;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/UserManagerInternal;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "roleManagerSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/app/role/RoleManager;>;"
    .local p2, "userManagerInternalSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/UserManagerInternal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    .line 55
    iput-object p2, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Ljava/util/function/Supplier;

    .line 56
    return-void
.end method

.method private getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 171
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    if-nez v0, :cond_c

    .line 172
    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 176
    .local v1, "identity":J
    nop

    .line 177
    :try_start_11
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 176
    invoke-virtual {v0, p1, v3}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_23

    .line 179
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    return-object v3

    .line 179
    :catchall_23
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    throw v3
.end method

.method static synthetic lambda$setDefaultBrowser$0(Lcom/android/internal/infra/AndroidFuture;Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_13

    .line 93
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 95
    :goto_13
    return-void
.end method


# virtual methods
.method public getDefaultBrowser(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 66
    const-string v0, "android.app.role.BROWSER"

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDialer(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 128
    const-string v0, "android.app.role.DIALER"

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultHome(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Ljava/util/function/Supplier;

    .line 140
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 139
    const-string v1, "android.app.role.HOME"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultBrowser(Ljava/lang/String;ZI)Z
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "userId"    # I

    .line 79
    move-object/from16 v8, p1

    const/4 v9, 0x0

    const/4 v0, -0x1

    move/from16 v10, p3

    if-ne v10, v0, :cond_9

    .line 80
    return v9

    .line 82
    :cond_9
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/role/RoleManager;

    .line 83
    .local v12, "roleManager":Landroid/app/role/RoleManager;
    if-nez v12, :cond_17

    .line 84
    return v9

    .line 86
    :cond_17
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 87
    .local v13, "user":Landroid/os/UserHandle;
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    .line 88
    .local v14, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v15, v0

    .line 89
    .local v15, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    new-instance v7, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;

    invoke-direct {v7, v15}, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 96
    .local v7, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 98
    .local v16, "identity":J
    if-eqz v8, :cond_3c

    .line 99
    :try_start_30
    const-string v2, "android.app.role.BROWSER"

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v3, p1

    move-object v5, v13

    move-object v6, v14

    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_46

    .line 102
    :cond_3c
    const-string v2, "android.app.role.BROWSER"

    const/4 v3, 0x0

    move-object v1, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/role/RoleManager;->clearRoleHoldersAsUser(Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_74

    .line 105
    :goto_46
    if-nez p2, :cond_6e

    .line 107
    const-wide/16 v0, 0x5

    :try_start_4a
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4f} :catch_50
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4a .. :try_end_4f} :catch_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4a .. :try_end_4f} :catch_50
    .catchall {:try_start_4a .. :try_end_4f} :catchall_74

    .line 112
    goto :goto_6e

    .line 108
    :catch_50
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while setting default browser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_74

    .line 111
    nop

    .line 115
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    return v9

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    nop

    .line 117
    const/4 v0, 0x1

    return v0

    .line 115
    :catchall_74
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw v0
.end method

.method public setDefaultHome(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 154
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 155
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    if-nez v0, :cond_c

    .line 156
    const/4 v1, 0x0

    return v1

    .line 158
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 160
    .local v8, "identity":J
    :try_start_10
    const-string v2, "android.app.role.HOME"

    const/4 v4, 0x0

    .line 161
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 160
    move-object v1, v0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_24

    .line 163
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    nop

    .line 165
    const/4 v1, 0x1

    return v1

    .line 163
    :catchall_24
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw v1
.end method
