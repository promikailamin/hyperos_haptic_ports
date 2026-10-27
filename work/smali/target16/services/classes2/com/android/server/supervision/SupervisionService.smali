.class public Lcom/android/server/supervision/SupervisionService;
.super Landroid/app/supervision/ISupervisionManager$Stub;
.source "SupervisionService.java"


# static fields
.field static final ACTION_CONFIRM_SUPERVISION_CREDENTIALS:Ljava/lang/String; = "android.app.supervision.action.CONFIRM_SUPERVISION_CREDENTIALS"

.field static final SYSTEM_ENTITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

.field public final mInternal:Landroid/app/supervision/SupervisionManagerInternal;

.field public final mLockDoNoUseDirectly:Ljava/lang/Object;

.field public final mRoleObserver:Lcom/android/server/supervision/SupervisionService$RoleObserver;

.field public final mServiceThread:Lcom/android/server/ServiceThread;

.field public final mSupervisionListeners:Landroid/util/ArrayMap;

.field public final mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

.field public final mUserData:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$3Y8XBaiJv5BOnrsu1Vxt-hZ0WpM(IZLandroid/app/supervision/ISupervisionListener;)V
    .registers 3

    .line 418
    invoke-interface {p2, p0, p1}, Landroid/app/supervision/ISupervisionListener;->onSetSupervisionEnabled(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bol8tNHAkK_fvTEVLHxaWHt8Tzw(ILjava/util/ArrayList;Landroid/os/IBinder;Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;)V
    .registers 4

    .line 482
    iget p2, p3, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->userId:I

    if-eq p2, p0, :cond_9

    const/4 p0, -0x1

    if-ne p2, p0, :cond_8

    goto :goto_9

    :cond_8
    return-void

    .line 483
    :cond_9
    :goto_9
    iget-object p0, p3, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->listener:Landroid/app/supervision/ISupervisionListener;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$IfIrgI-GkRpiw0o1HoCIepvZkx0(Lcom/android/server/supervision/SupervisionService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/supervision/SupervisionService;->lambda$setSupervisionEnabledForUserInternal$1(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/supervision/SupervisionService;)Lcom/android/server/supervision/SupervisionService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclearSuspendedPackagesFor(Lcom/android/server/supervision/SupervisionService;ILjava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/supervision/SupervisionService;->clearSuspendedPackagesFor(ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemovedSupervisionRoleHolders(Lcom/android/server/supervision/SupervisionService;I)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getRemovedSupervisionRoleHolders(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeApplyUserRestrictionsFor(Lcom/android/server/supervision/SupervisionService;Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->maybeApplyUserRestrictionsFor(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msyncStateWithDevicePolicyManager(Lcom/android/server/supervision/SupervisionService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->syncStateWithDevicePolicyManager(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSupervisionRoleHolders(Lcom/android/server/supervision/SupervisionService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->updateSupervisionRoleHolders(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 107
    sget-object v0, Landroid/app/supervision/SupervisionManager;->SUPERVISION_SYSTEM_ENTITY:Ljava/lang/String;

    .line 108
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/supervision/SupervisionService;->SYSTEM_ENTITIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 133
    new-instance v0, Lcom/android/server/supervision/SupervisionService$Injector;

    const-string v1, "SupervisionService"

    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/supervision/SupervisionService;-><init>(Lcom/android/server/supervision/SupervisionService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/supervision/SupervisionService$Injector;)V
    .registers 4

    .line 137
    invoke-direct {p0}, Landroid/app/supervision/ISupervisionManager$Stub;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;-><init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInternal:Landroid/app/supervision/SupervisionManagerInternal;

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionListeners:Landroid/util/ArrayMap;

    .line 130
    invoke-static {}, Lcom/android/server/supervision/SupervisionSettings;->getInstance()Lcom/android/server/supervision/SupervisionSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    .line 138
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    .line 139
    invoke-virtual {p1}, Lcom/android/server/supervision/SupervisionService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    new-instance v0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;-><init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 141
    new-instance p1, Lcom/android/server/supervision/SupervisionService$RoleObserver;

    invoke-direct {p1, p0}, Lcom/android/server/supervision/SupervisionService$RoleObserver;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService;->mRoleObserver:Lcom/android/server/supervision/SupervisionService$RoleObserver;

    .line 142
    invoke-virtual {p1}, Lcom/android/server/supervision/SupervisionService$RoleObserver;->register()V

    return-void
.end method

.method public static isSystemUser(Landroid/content/pm/UserInfo;)Z
    .registers 2

    .line 342
    iget p0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v0, 0x800

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final clearAllDevicePoliciesAndSuspendedPackages(I)V
    .registers 7

    .line 526
    const-string v0, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 527
    const-string v0, "android.app.role.SYSTEM_SUPERVISION"

    const-string v1, "android.app.role.SUPERVISION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 531
    iget-object v3, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    .line 532
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/supervision/SupervisionService$Injector;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 533
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 534
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/supervision/SupervisionService;->clearSuspendedPackagesFor(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_1a

    .line 537
    :cond_37
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Injector;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 543
    invoke-virtual {p0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->removePoliciesForAdmins(ILjava/util/List;)V

    .line 547
    sget-object v0, Lcom/android/server/supervision/SupervisionService;->SYSTEM_ENTITIES:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->removeLocalPoliciesForSystemEntities(ILjava/util/List;)V

    :cond_47
    return-void
.end method

.method public final clearSuspendedPackagesFor(ILjava/util/List;Ljava/lang/String;)V
    .registers 8

    .line 553
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 554
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 556
    invoke-virtual {v0, v1, p1, p1}, Landroid/content/pm/PackageManagerInternal;->unsuspendForSuspendingPackage(Ljava/lang/String;II)V

    .line 558
    :cond_1b
    const-string v2, "android.app.role.SUPERVISION"

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 559
    iget-object v2, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, p3, v1, v3}, Lcom/android/server/supervision/SupervisionService$Injector;->removeRoleHoldersAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_a

    :cond_2d
    return-void
.end method

.method public createConfirmSupervisionCredentialsIntent(I)Landroid/content/Intent;
    .registers 4

    .line 208
    const-string v0, "android.permission.QUERY_USERS"

    const-string v1, "android.permission.MANAGE_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforceAnyPermission([Ljava/lang/String;)V

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 210
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 212
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->isSupervisionEnabledForUser(I)Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->hasSupervisionCredentials()Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_34

    .line 215
    :cond_27
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.app.supervision.action.CONFIRM_SUPERVISION_CREDENTIALS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    const-string p1, "com.android.settings"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dispatchSupervisionEvent(ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)V
    .registers 6

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/android/server/supervision/SupervisionService;->getSupervisionAppServiceListeners(ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 480
    :try_start_e
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionListeners:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0}, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda2;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 486
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    .line 488
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_1d
    move-exception p0

    .line 486
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 361
    iget-object p1, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object p1, p1, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    const-string p3, "SupervisionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 365
    :cond_d
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 366
    :try_start_14
    const-string p2, "SupervisionService state:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 369
    iget-object p2, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {p2}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p2

    .line 370
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_52

    .line 371
    :try_start_2c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 372
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/supervision/SupervisionUserData;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 373
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_30

    :catchall_49
    move-exception p0

    goto :goto_50

    .line 375
    :cond_4b
    monitor-exit p3
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_49

    .line 376
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return-void

    .line 375
    :goto_50
    :try_start_50
    monitor-exit p3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_49

    :try_start_51
    throw p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    .line 365
    :try_start_53
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw p0
.end method

.method public final varargs enforceAnyPermission([Ljava/lang/String;)V
    .registers 6

    .line 674
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 675
    invoke-virtual {p0, v3}, Lcom/android/server/supervision/SupervisionService;->hasCallingPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v1, 0x1

    goto :goto_12

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 680
    :cond_12
    :goto_12
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    return-void
.end method

.method public final enforceCallerCanSetSupervisionEnabled()V
    .registers 2

    .line 691
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "android.permission.BYPASS_ROLE_QUALIFICATION"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->hasCallingPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    return-void
.end method

.method public final enforcePermission(Ljava/lang/String;)V
    .registers 2

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->hasCallingPermission(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    return-void
.end method

.method public final executeOnSupervisionEnabled(Ljava/lang/Runnable;)V
    .registers 2

    .line 431
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getActiveSupervisionAppPackage(I)Ljava/lang/String;
    .registers 3

    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 186
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 188
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final getLockObject()Ljava/lang/Object;
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    return-object p0
.end method

.method public final getRemovedSupervisionRoleHolders(I)Ljava/util/List;
    .registers 6

    .line 717
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    const-string v1, "android.app.role.SUPERVISION"

    .line 718
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/supervision/SupervisionService$Injector;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 720
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 721
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p1

    .line 722
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 723
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 724
    iget-object v3, p1, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 725
    iget-object p1, p1, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 727
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionSettings;->saveUserData()V

    .line 729
    monitor-exit v1

    return-object v2

    :catchall_30
    move-exception p0

    .line 730
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final getSupervisionAppServiceConnections(I)Ljava/util/List;
    .registers 3

    .line 173
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Injector;->getAppBindingService()Lcom/android/server/appbinding/AppBindingService;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 175
    const-class v0, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appbinding/AppBindingService;->getAppServiceConnectionsBlocking(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 176
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getSupervisionAppServiceListeners(ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/List;
    .registers 7

    .line 440
    const-string p2, "SupervisionService"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getSupervisionAppServiceConnections(I)Ljava/util/List;

    move-result-object p0

    .line 446
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appbinding/AppServiceConnection;

    .line 447
    invoke-virtual {p1}, Lcom/android/server/appbinding/AppServiceConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 450
    :try_start_1f
    invoke-virtual {p1}, Lcom/android/server/am/PersistentConnection;->getServiceBinder()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/supervision/ISupervisionListener;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_40

    :catch_26
    move-exception p1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_40
    if-nez p1, :cond_4c

    .line 456
    const-string p1, "Failed to bind to SupervisionAppService for %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 463
    :cond_4c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_50
    return-object v0
.end method

.method public final getSupervisionProfileOwnerComponent()Landroid/content/ComponentName;
    .registers 2

    .line 654
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040276

    .line 658
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 654
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getSupervisionRecoveryInfo()Landroid/app/supervision/SupervisionRecoveryInfo;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionSettings;->getRecoveryInfo()Landroid/app/supervision/SupervisionRecoveryInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemSupervisionPackage()Ljava/lang/String;
    .registers 2

    .line 663
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104003c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;
    .registers 2

    .line 387
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionSettings;->getUserData(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    return-object p0
.end method

.method public final hasCallingPermission(Ljava/lang/String;)Z
    .registers 2

    .line 695
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final hasNonTestDefaultUsers()Z
    .registers 4

    .line 332
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 333
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 334
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isForTesting()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v1}, Lcom/android/server/supervision/SupervisionService;->isSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public hasSupervisionCredentials()Z
    .registers 5

    .line 274
    const-string v0, "android.permission.QUERY_USERS"

    const-string v1, "android.permission.MANAGE_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforceAnyPermission([Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getSupervisingProfileId()I

    move-result v0

    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/16 v3, -0x2710

    if-eq v0, v3, :cond_34

    .line 280
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2f

    if-nez p0, :cond_2a

    goto :goto_34

    .line 285
    :cond_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_2f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    throw p0

    .line 285
    :cond_34
    :goto_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isCallerSystem()Z
    .registers 2

    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public isSupervisionEnabledForUser(I)Z
    .registers 4

    .line 153
    const-string v0, "android.permission.QUERY_USERS"

    const-string v1, "android.permission.MANAGE_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforceAnyPermission([Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 155
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 157
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    .line 159
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final synthetic lambda$setSupervisionEnabledForUserInternal$1(IZ)V
    .registers 4

    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/android/server/supervision/SupervisionService;->updateWebContentFilters(IZ)V

    .line 416
    new-instance v0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda1;-><init>(IZ)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/supervision/SupervisionService;->dispatchSupervisionEvent(ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)V

    if-nez p2, :cond_11

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->clearAllDevicePoliciesAndSuspendedPackages(I)V

    return-void

    .line 422
    :cond_11
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->maybeApplyUserRestrictionsFor(Landroid/os/UserHandle;)V

    return-void
.end method

.method public final maybeApplyUserRestrictions()V
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    .line 566
    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 569
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/supervision/SupervisionService;->maybeApplyUserRestrictionsFor(Landroid/os/UserHandle;)V

    goto :goto_f

    :cond_23
    return-void
.end method

.method public final maybeApplyUserRestrictionsFor(Landroid/os/UserHandle;)V
    .registers 5

    .line 574
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->shouldApplyFactoryResetRestriction(Landroid/os/UserHandle;)Z

    move-result p0

    .line 577
    sget-object v1, Landroid/app/supervision/SupervisionManager;->SUPERVISION_SYSTEM_ENTITY:Ljava/lang/String;

    const-string/jumbo v2, "no_factory_reset"

    .line 581
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 577
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->setUserRestrictionForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_18
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 354
    new-instance v0, Lcom/android/server/supervision/SupervisionServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/supervision/SupervisionServiceShellCommand;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 355
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerSupervisionListener(ILandroid/app/supervision/ISupervisionListener;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_37

    .line 296
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 297
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 300
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 301
    :try_start_17
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionListeners:Landroid/util/ArrayMap;

    invoke-interface {p2}, Landroid/app/supervision/ISupervisionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_34

    if-nez v1, :cond_36

    .line 304
    :try_start_25
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionListeners:Landroid/util/ArrayMap;

    .line 305
    invoke-interface {p2}, Landroid/app/supervision/ISupervisionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;-><init>(Lcom/android/server/supervision/SupervisionService;Landroid/app/supervision/ISupervisionListener;I)V

    .line 304
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_33} :catch_36
    .catchall {:try_start_25 .. :try_end_33} :catchall_34

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 310
    :catch_36
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit v0

    :goto_37
    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_34

    throw p0
.end method

.method public setSupervisionEnabledForUser(IZ)V
    .registers 4

    .line 164
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->enforceCallerCanSetSupervisionEnabled()V

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 166
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 168
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSystemSupervisionPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V

    return-void
.end method

.method public final setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V
    .registers 6

    .line 405
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 406
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object v1

    .line 407
    iput-boolean p2, v1, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    if-eqz p2, :cond_e

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    .line 408
    :goto_f
    iput-object p3, v1, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    .line 410
    iget-object p3, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {p3}, Lcom/android/server/supervision/SupervisionSettings;->saveUserData()V

    .line 412
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_20

    .line 413
    new-instance p3, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/supervision/SupervisionService;IZ)V

    invoke-virtual {p0, p3}, Lcom/android/server/supervision/SupervisionService;->executeOnSupervisionEnabled(Ljava/lang/Runnable;)V

    return-void

    :catchall_20
    move-exception p0

    .line 412
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setSupervisionRecoveryInfo(Landroid/app/supervision/SupervisionRecoveryInfo;)V
    .registers 4

    .line 231
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_5
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/supervision/SupervisionSettings;->saveRecoveryInfo(Landroid/app/supervision/SupervisionRecoveryInfo;)V

    .line 233
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 235
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->maybeApplyUserRestrictions()V

    return-void

    :catchall_f
    move-exception p0

    .line 233
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public shouldAllowBypassingSupervisionRoleQualification()Z
    .registers 3

    .line 249
    const-string v0, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->hasNonTestDefaultUsers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 255
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 257
    :try_start_12
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionSettings;->anySupervisedUser()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 258
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception p0

    goto :goto_21

    .line 267
    :cond_1e
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_1c

    throw p0
.end method

.method public final shouldApplyFactoryResetRestriction(Landroid/os/UserHandle;)Z
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    const-string v1, "android.app.role.SUPERVISION"

    .line 587
    invoke-virtual {v0, v1, p1}, Lcom/android/server/supervision/SupervisionService$Injector;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 590
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 594
    :try_start_11
    iget-object v2, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {v2}, Lcom/android/server/supervision/SupervisionSettings;->getRecoveryInfo()Landroid/app/supervision/SupervisionRecoveryInfo;

    move-result-object v2

    .line 595
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    if-eqz p0, :cond_31

    if-eqz v2, :cond_31

    .line 598
    invoke-virtual {v2}, Landroid/app/supervision/SupervisionRecoveryInfo;->getState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_31

    goto :goto_32

    :catchall_2f
    move-exception p0

    goto :goto_34

    :cond_31
    const/4 p1, 0x0

    :goto_32
    monitor-exit v1

    return p1

    .line 599
    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_2f

    throw p0
.end method

.method public final syncStateWithDevicePolicyManager(I)V
    .registers 6

    .line 634
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 636
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x1

    if-eqz v0, :cond_27

    .line 638
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSystemSupervisionPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 639
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSystemSupervisionPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V

    return-void

    :cond_27
    if-eqz v0, :cond_3a

    .line 640
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSupervisionProfileOwnerComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 643
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public unregisterSupervisionListener(Landroid/app/supervision/ISupervisionListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 319
    :try_start_8
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/supervision/ISupervisionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;

    if-eqz p0, :cond_1c

    .line 321
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->unlinkToDeath()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 323
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public final updateContentFilterSetting(IZLjava/lang/String;)V
    .registers 5

    .line 616
    :try_start_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 617
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_11

    const/4 p2, 0x1

    if-eq v0, p2, :cond_16

    :cond_11
    mul-int/lit8 v0, v0, -0x1

    .line 619
    invoke-static {p0, p3, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_16
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public final updateSupervisionRoleHolders(I)V
    .registers 5

    .line 703
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    const-string v1, "android.app.role.SUPERVISION"

    .line 704
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/supervision/SupervisionService$Injector;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 706
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 707
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p1

    .line 708
    iget-object v2, p1, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 709
    iget-object p1, p1, Lcom/android/server/supervision/SupervisionUserData;->supervisionRoleHolders:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 711
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionSettings;->saveUserData()V

    .line 713
    monitor-exit v1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final updateWebContentFilters(IZ)V
    .registers 4

    .line 610
    const-string v0, "browser_content_filters_enabled"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/supervision/SupervisionService;->updateContentFilterSetting(IZLjava/lang/String;)V

    .line 611
    const-string/jumbo v0, "search_content_filters_enabled"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/supervision/SupervisionService;->updateContentFilterSetting(IZLjava/lang/String;)V

    return-void
.end method
