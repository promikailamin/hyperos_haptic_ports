.class public Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;
.super Lcom/android/server/appbinding/finders/AppServiceFinder;
.source "SupervisionAppServiceFinder.java"


# instance fields
.field public final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field public final mRoleManager:Landroid/app/role/RoleManager;


# direct methods
.method public static synthetic $r8$lambda$EhTjsouFWxJcaGm7h49ip8YyHQE(Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->lambda$new$0(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appbinding/finders/AppServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    .line 129
    new-instance p2, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;)V

    iput-object p2, p0, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 53
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 131
    const-string v0, "android.app.role.SYSTEM_SUPERVISION"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 132
    iget-object p1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionListener;
    .registers 2

    .line 77
    invoke-static {p1}, Landroid/app/supervision/ISupervisionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionListener;

    move-result-object p0

    return-object p0
.end method

.method public getAppDescription()Ljava/lang/String;
    .registers 1

    .line 67
    const-string p0, "[Supervision app]"

    return-object p0
.end method

.method public getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I
    .registers 2

    .line 126
    iget p0, p1, Lcom/android/server/appbinding/AppBindingConstants;->SUPERVISION_APP_SERVICE_BIND_FLAGS:I

    return p0
.end method

.method public getServiceAction()Ljava/lang/String;
    .registers 1

    .line 104
    const-string p0, "android.app.action.SUPERVISION_APP_SERVICE"

    return-object p0
.end method

.method public getServiceClass()Ljava/lang/Class;
    .registers 1

    .line 72
    const-class p0, Landroid/app/supervision/SupervisionAppService;

    return-object p0
.end method

.method public getServicePermission()Ljava/lang/String;
    .registers 1

    .line 110
    const-string p0, "android.permission.BIND_SUPERVISION_APP_SERVICE"

    return-object p0
.end method

.method public getTargetPackages(I)Ljava/util/Set;
    .registers 6

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v2, "android.app.role.SYSTEM_SUPERVISION"

    .line 95
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object p0, p0, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.SUPERVISION"

    .line 97
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 96
    invoke-virtual {p0, v1, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public isEnabled(Lcom/android/server/appbinding/AppBindingConstants;I)Z
    .registers 3

    .line 58
    const-class p0, Landroid/app/supervision/SupervisionManagerInternal;

    .line 59
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/supervision/SupervisionManagerInternal;

    .line 60
    iget-boolean p1, p1, Lcom/android/server/appbinding/AppBindingConstants;->SUPERVISION_APP_SERVICE_ENABLED:Z

    if-eqz p1, :cond_14

    .line 61
    invoke-virtual {p0, p2}, Landroid/app/supervision/SupervisionManagerInternal;->isSupervisionEnabledForUser(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public startMonitoring()V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 116
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 115
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
