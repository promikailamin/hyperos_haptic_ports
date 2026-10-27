.class public Lcom/android/server/RescueParty$RescuePartyObserver;
.super Ljava/lang/Object;
.source "RescueParty.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescuePartyObserver"
.end annotation


# static fields
.field static sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;


# instance fields
.field private final mCallingPackageNamespaceSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mNamespaceCallingPackageSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->getAffectedNamespaceSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAllAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getAllAffectedNamespaceSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCallingPackagesSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->getCallingPackagesSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrecordDeviceConfigAccess(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/RescueParty$RescuePartyObserver;->recordDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 601
    iput-object p1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 602
    return-void
.end method

.method private declared-synchronized getAffectedNamespaceSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 750
    :try_start_1
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 750
    .end local p0    # "this":Lcom/android/server/RescueParty$RescuePartyObserver;
    .end local p1    # "failedPackage":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getAllAffectedNamespaceSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 754
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 754
    .end local p0    # "this":Lcom/android/server/RescueParty$RescuePartyObserver;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCallingPackagesSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 758
    :try_start_1
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 758
    .end local p0    # "this":Lcom/android/server/RescueParty$RescuePartyObserver;
    .end local p1    # "namespace":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 606
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    .line 607
    :try_start_3
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    if-nez v1, :cond_e

    .line 608
    new-instance v1, Lcom/android/server/RescueParty$RescuePartyObserver;

    invoke-direct {v1, p0}, Lcom/android/server/RescueParty$RescuePartyObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 610
    :cond_e
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-exit v0

    return-object v1

    .line 611
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static getInstanceIfCreated()Lcom/android/server/RescueParty$RescuePartyObserver;
    .registers 2

    .line 617
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    .line 618
    :try_start_3
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-exit v0

    return-object v1

    .line 619
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isPersistentSystemApp(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 724
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 725
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_14

    const/16 v4, 0x9

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 726
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_14
    move-exception v2

    .line 727
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private mayPerformFactoryReset(Landroid/content/pm/VersionedPackage;)Z
    .registers 3
    .param p1, "failingPackage"    # Landroid/content/pm/VersionedPackage;

    .line 714
    if-nez p1, :cond_4

    .line 715
    const/4 v0, 0x0

    return v0

    .line 718
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/RescueParty$RescuePartyObserver;->isPersistentSystemApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized recordDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    monitor-enter p0

    .line 734
    :try_start_1
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 735
    .local v0, "namespaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_16

    .line 736
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 737
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .end local p0    # "this":Lcom/android/server/RescueParty$RescuePartyObserver;
    :cond_16
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 742
    .local v1, "callingPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_29

    .line 743
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 745
    :cond_29
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v2, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 747
    monitor-exit p0

    return-void

    .line 733
    .end local v0    # "namespaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "callingPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "namespace":Ljava/lang/String;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static reset()V
    .registers 2

    .line 624
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    .line 625
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;II)Z
    .registers 7
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "failureReason"    # I
    .param p3, "mitigationCount"    # I

    .line 644
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 645
    return v1

    .line 647
    :cond_8
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    goto :goto_10

    .line 655
    :cond_f
    return v1

    .line 649
    :cond_10
    :goto_10
    nop

    .line 650
    invoke-direct {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->mayPerformFactoryReset(Landroid/content/pm/VersionedPackage;)Z

    move-result v0

    .line 649
    invoke-static {p3, v0}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZ)I

    move-result v0

    .line 651
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 652
    if-nez p1, :cond_1f

    const/4 v2, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 651
    :goto_23
    invoke-static {v1, v2, v0}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 653
    const/4 v1, 0x1

    return v1
.end method

.method public executeBootLoopMitigation(I)Z
    .registers 6
    .param p1, "mitigationCount"    # I

    .line 695
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 696
    const/4 v0, 0x0

    return v0

    .line 698
    :cond_8
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 699
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZ)I

    move-result v3

    .line 698
    invoke-static {v0, v1, v3}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 700
    return v2
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 705
    const-string/jumbo v0, "rescue-party-observer"

    return-object v0
.end method

.method public isPersistent()Z
    .registers 2

    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public mayObservePackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 669
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_10

    if-eqz v1, :cond_f

    .line 670
    return v2

    .line 673
    :cond_f
    goto :goto_11

    .line 672
    :catch_10
    move-exception v1

    .line 677
    :goto_11
    invoke-static {}, Lcom/android/server/RescuePartyStub;->getInstance()Lcom/android/server/RescuePartyStub;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p1}, Lcom/android/server/RescuePartyStub;->isLauncher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 678
    return v2

    .line 682
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->isPersistentSystemApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onBootLoop(I)I
    .registers 3
    .param p1, "mitigationCount"    # I

    .line 687
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 688
    const/4 v0, 0x0

    return v0

    .line 690
    :cond_8
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    move-result v0

    return v0
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
    .registers 5
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "failureReason"    # I
    .param p3, "mitigationCount"    # I

    .line 632
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    .line 634
    :cond_c
    nop

    .line 635
    invoke-direct {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->mayPerformFactoryReset(Landroid/content/pm/VersionedPackage;)Z

    move-result v0

    .line 634
    invoke-static {p3, v0}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    move-result v0

    return v0

    .line 637
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
