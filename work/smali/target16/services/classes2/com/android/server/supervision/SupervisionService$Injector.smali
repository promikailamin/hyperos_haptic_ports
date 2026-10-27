.class public Lcom/android/server/supervision/SupervisionService$Injector;
.super Ljava/lang/Object;
.source "SupervisionService.java"


# instance fields
.field public context:Landroid/content/Context;

.field public mAppBindingService:Lcom/android/server/appbinding/AppBindingService;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-f8tdKfi0wvShcsYRseTo3jLpRs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 822
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_11

    .line 823
    const-string p2, "Failed to remove role %s for %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SupervisionService"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    .line 747
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    return-void
.end method


# virtual methods
.method public addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V
    .registers 4

    .line 798
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public getAppBindingService()Lcom/android/server/appbinding/AppBindingService;
    .registers 2

    .line 752
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mAppBindingService:Lcom/android/server/appbinding/AppBindingService;

    if-nez v0, :cond_e

    .line 753
    const-class v0, Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appbinding/AppBindingService;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mAppBindingService:Lcom/android/server/appbinding/AppBindingService;

    .line 755
    :cond_e
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mAppBindingService:Lcom/android/server/appbinding/AppBindingService;

    return-object p0
.end method

.method public getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 761
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 763
    :cond_e
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 767
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 768
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 770
    :cond_10
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 774
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 775
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 777
    :cond_c
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 788
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 789
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 791
    :cond_e
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 3

    .line 803
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 808
    new-instance p0, Lcom/android/server/ServiceThread;

    const/16 v0, 0xa

    const/4 v1, 0x1

    const-string v2, "SupervisionService"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 810
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 781
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 782
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 784
    :cond_e
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public removeRoleHoldersAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 11

    .line 815
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/server/supervision/SupervisionService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, p1}, Lcom/android/server/supervision/SupervisionService$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 815
    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method
