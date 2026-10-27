.class public Lcom/android/server/appbinding/AppBindingService;
.super Landroid/os/Binder;
.source "AppBindingService.java"


# instance fields
.field public final mApps:Ljava/util/ArrayList;

.field public final mConnections:Ljava/util/ArrayList;

.field public mConstants:Lcom/android/server/appbinding/AppBindingConstants;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

.field public final mLock:Ljava/lang/Object;

.field final mPackageUserMonitor:Landroid/content/BroadcastReceiver;

.field public final mRunningUsers:Landroid/util/SparseBooleanArray;

.field public final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$74taiIo0jz2bqs2agXCRToMgdXo(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 3

    .line 657
    const-string v0, "    "

    invoke-virtual {p1, v0, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TT8pSjvUg1ykLLlQWcXzJ2vIJUM(Lcom/android/server/appbinding/AppBindingService;Lcom/android/server/appbinding/finders/AppServiceFinder;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->onAppChanged(Lcom/android/server/appbinding/finders/AppServiceFinder;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJJF9W1bOyjht8IuGNEkMdA8Zyk(ILcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 2

    .line 423
    invoke-virtual {p1, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->onUserRemoved(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tvIwJPpivK224lS3eKKEJbebz_w(Ljava/io/PrintWriter;Lcom/android/server/appbinding/finders/AppServiceFinder;)V
    .registers 2

    .line 691
    invoke-virtual {p1, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->dumpSimple(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/appbinding/AppBindingService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->handlePackageAddedReplacing(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAppRemoved(Lcom/android/server/appbinding/AppBindingService;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->onAppRemoved(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStartUser(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onStartUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onStopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onUnlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/appbinding/AppBindingService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshConstants(Lcom/android/server/appbinding/AppBindingService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->refreshConstants()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindServicesLocked(Lcom/android/server/appbinding/AppBindingService;ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V
    .registers 6

    .line 217
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    .line 302
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/appbinding/AppBindingService$2;-><init>(Lcom/android/server/appbinding/AppBindingService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 324
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$3;

    invoke-direct {v1, p0}, Lcom/android/server/appbinding/AppBindingService$3;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    iput-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    .line 218
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    .line 219
    iput-object p2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {p1}, Lcom/android/server/appbinding/AppBindingService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 223
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    new-instance v2, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    invoke-direct {v1, p2, v2, p1}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;

    new-instance v2, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    invoke-direct {v1, p2, v2, p1}, Lcom/android/server/appbinding/finders/SupervisionAppServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string p1, ""

    invoke-static {p1}, Lcom/android/server/appbinding/AppBindingConstants;->initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;-><init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    .line 545
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 546
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/appbinding/finders/AppServiceFinder;

    if-eqz p2, :cond_18

    if-eq p2, v7, :cond_18

    :cond_16
    :goto_16
    move v4, p1

    goto :goto_5d

    .line 555
    :cond_18
    invoke-virtual {p0, p1, v7, p3}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 558
    invoke-virtual {v7, p1, v1, v2}, Lcom/android/server/appbinding/finders/AppServiceFinder;->findServices(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 559
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_16

    .line 562
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_3f

    goto :goto_30

    :cond_3f
    move-object v3, v2

    .line 570
    new-instance v2, Lcom/android/server/appbinding/AppServiceConnection;

    move-object v4, v3

    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-object v6, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 572
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/appbinding/AppServiceConnection;-><init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 573
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->bind()V

    move p1, v4

    goto :goto_30

    :goto_5d
    add-int/lit8 v0, v0, 0x1

    move p1, v4

    goto :goto_1

    :cond_61
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 622
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    const-string v0, "AppBindingService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 624
    :cond_b
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_1d

    const-string p1, "-s"

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 625
    invoke-virtual {p0, p2}, Lcom/android/server/appbinding/AppBindingService;->dumpSimple(Ljava/io/PrintWriter;)V

    return-void

    .line 629
    :cond_1d
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 630
    :try_start_20
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    const-string v1, "  "

    invoke-virtual {p3, v1, p2}, Lcom/android/server/appbinding/AppBindingConstants;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 632
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 633
    const-string p3, "  Running users:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p3, v0

    .line 634
    :goto_30
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge p3, v1, :cond_54

    .line 635
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 636
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_51

    :catchall_4f
    move-exception p0

    goto :goto_a6

    :cond_51
    :goto_51
    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    .line 641
    :cond_54
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 642
    const-string p3, "  Connections:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    :goto_5c
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_87

    .line 644
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appbinding/AppServiceConnection;

    .line 645
    const-string v1, "    App type: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p3}, Lcom/android/server/appbinding/AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 649
    const-string v1, "      "

    invoke-virtual {p3, v1, p2}, Lcom/android/server/am/PersistentConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 651
    :cond_87
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_94

    .line 652
    const-string p3, "    None:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    :cond_94
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 656
    const-string p3, "  Finders:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance p3, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p3}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 658
    monitor-exit p1

    return-void

    :goto_a6
    monitor-exit p1
    :try_end_a7
    .catchall {:try_start_20 .. :try_end_a7} :catchall_4f

    throw p0
.end method

.method public final dumpSimple(Ljava/io/PrintWriter;)V
    .registers 6

    .line 665
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 666
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b1

    .line 667
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appbinding/AppServiceConnection;

    .line 669
    const-string v3, "conn,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2}, Lcom/android/server/appbinding/AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 673
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->isBound()Z

    move-result v3

    if-eqz v3, :cond_60

    const-string v3, "bound"

    goto :goto_63

    :catchall_5e
    move-exception p0

    goto :goto_bb

    :cond_60
    const-string/jumbo v3, "not-bound"

    :goto_63
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_74

    const-string v3, "connected"

    goto :goto_77

    :cond_74
    const-string/jumbo v3, "not-connected"

    :goto_77
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    const-string v3, ",#con="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumConnected()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 683
    const-string v3, ",#dis="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumDisconnected()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 685
    const-string v3, ",#died="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNumBindingDied()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 687
    const-string v3, ",backoff="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->getNextBackoffMs()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 689
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 691
    :cond_b1
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 692
    monitor-exit v0

    return-void

    :goto_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_4 .. :try_end_bc} :catchall_5e

    throw p0
.end method

.method public final findFinderLocked(ILjava/lang/String;)Lcom/android/server/appbinding/finders/AppServiceFinder;
    .registers 6

    const/4 v0, 0x0

    .line 462
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 463
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 465
    invoke-virtual {v1, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getTargetPackages(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final forAllAppsLocked(Ljava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x0

    .line 234
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 235
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/finders/AppServiceFinder;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public getAppServiceConnectionsBlocking(Ljava/lang/Class;I)Ljava/util/List;
    .registers 10

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 159
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 160
    iget-object v4, p0, Lcom/android/server/appbinding/AppBindingService;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 161
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, p1, :cond_21

    goto :goto_28

    .line 164
    :cond_21
    invoke-virtual {p0, p2, v4}, Lcom/android/server/appbinding/AppBindingService;->getConnectionsLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :catchall_2b
    move-exception p0

    goto :goto_6b

    .line 166
    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2b

    .line 168
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_37
    if-ge v2, p1, :cond_6a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/server/appbinding/AppServiceConnection;

    .line 170
    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->bind()V

    .line 171
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppServiceConnection;->awaitConnection()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 172
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 174
    :cond_4e
    const-string v3, "AppBindingService"

    const-string v4, "Failed to establish connection for %s, user %d, package %s"

    .line 175
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/appbinding/AppServiceConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 174
    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37

    :cond_6a
    return-object p0

    .line 166
    :goto_6b
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_2b

    throw p0
.end method

.method public final getConnectionsLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;)Ljava/util/List;
    .registers 6

    .line 206
    invoke-virtual {p2, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getTargetPackages(I)Ljava/util/Set;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/appbinding/AppBindingService;->getOrCreateConnectionLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)Lcom/android/server/appbinding/AppServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 211
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v1
.end method

.method public final getOrCreateConnectionLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)Lcom/android/server/appbinding/AppServiceConnection;
    .registers 13

    const/4 v0, 0x0

    .line 491
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 492
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appbinding/AppServiceConnection;

    .line 493
    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->getUserId()I

    move-result v2

    if-ne v2, p1, :cond_28

    .line 494
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v2

    if-ne v2, p2, :cond_28

    .line 495
    invoke-virtual {v1}, Lcom/android/server/appbinding/AppServiceConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    return-object v1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    :cond_2b
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 501
    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->findService(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 503
    new-instance v1, Lcom/android/server/appbinding/AppServiceConnection;

    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    .line 511
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appbinding/AppServiceConnection;-><init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 512
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handlePackageAddedReplacing(Ljava/lang/String;I)V
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appbinding/AppBindingService;->findFinderLocked(ILjava/lang/String;)Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 525
    const-string/jumbo v1, "package update"

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "package update"

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 528
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public final onAppChanged(Lcom/android/server/appbinding/finders/AppServiceFinder;I)V
    .registers 6

    .line 453
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 457
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final onAppRemoved(ILjava/lang/String;)V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appbinding/AppBindingService;->findFinderLocked(ILjava/lang/String;)Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 440
    const-string/jumbo v1, "package removed"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 442
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    throw p0
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_15

    const/16 v0, 0x226

    if-eq p1, v0, :cond_11

    const/16 v0, 0x258

    if-eq p1, v0, :cond_d

    return-void

    .line 248
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->onPhaseThirdPartyAppsCanStart()V

    return-void

    .line 245
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->onPhaseActivityManagerReady()V

    return-void

    .line 252
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->registerSupervisionListener()V

    return-void
.end method

.method public final onPhaseActivityManagerReady()V
    .registers 11

    .line 281
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 291
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService;->mPackageUserMonitor:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/appbinding/AppBindingService;->mHandler:Landroid/os/Handler;

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 296
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_binding_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/appbinding/AppBindingService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/server/appbinding/AppBindingService;->refreshConstants()V

    return-void
.end method

.method public final onPhaseThirdPartyAppsCanStart()V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 382
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onStartUser(I)V
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 392
    const-string/jumbo v1, "user start"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 393
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final onStopUser(I)V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_3
    const-string/jumbo v1, "user stop"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 415
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final onUnlockUser(I)V
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    const-string/jumbo v1, "user unlock"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 403
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 425
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 426
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final rebindAllLocked(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 532
    :goto_1
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 533
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1f

    .line 536
    :cond_12
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    .line 538
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->bindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method

.method public final refreshConstants()V
    .registers 6

    .line 310
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mInjector:Lcom/android/server/appbinding/AppBindingService$Injector;

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_binding_constants"

    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appbinding/AppBindingService$Injector;->getGlobalSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_11
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget-object v2, v2, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 315
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_43

    .line 317
    :cond_1f
    const-string v2, "AppBindingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating constants with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v0}, Lcom/android/server/appbinding/AppBindingConstants;->initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 320
    const-string/jumbo v0, "settings update"

    invoke-virtual {p0, v0}, Lcom/android/server/appbinding/AppBindingService;->rebindAllLocked(Ljava/lang/String;)V

    .line 321
    monitor-exit v1

    return-void

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_1d

    throw p0
.end method

.method public final registerSupervisionListener()V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/supervision/SupervisionManager;

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/supervision/SupervisionManager;

    if-eqz v0, :cond_14

    .line 262
    new-instance v1, Lcom/android/server/appbinding/AppBindingService$1;

    invoke-direct {v1, p0}, Lcom/android/server/appbinding/AppBindingService$1;-><init>(Lcom/android/server/appbinding/AppBindingService;)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/supervision/SupervisionManager;->registerSupervisionListener(Landroid/app/supervision/SupervisionManager$SupervisionListener;)V

    :cond_14
    return-void
.end method

.method public final unbindServicesLocked(ILcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/String;)V
    .registers 6

    .line 604
    iget-object p3, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_8
    if-ltz p3, :cond_2c

    .line 605
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appbinding/AppServiceConnection;

    .line 606
    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->getUserId()I

    move-result v1

    if-ne v1, p1, :cond_29

    if-eqz p2, :cond_21

    .line 607
    invoke-virtual {v0}, Lcom/android/server/appbinding/AppServiceConnection;->getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;

    move-result-object v1

    if-eq v1, p2, :cond_21

    goto :goto_29

    .line 615
    :cond_21
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->unbind()V

    :cond_29
    :goto_29
    add-int/lit8 p3, p3, -0x1

    goto :goto_8

    :cond_2c
    return-void
.end method
