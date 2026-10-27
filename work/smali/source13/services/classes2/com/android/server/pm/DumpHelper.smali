.class final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field private final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field private final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mProtectedBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequiredVerifierPackage:Ljava/lang/String;

.field private final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;)V
    .registers 12
    .param p1, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "apexManager"    # Lcom/android/server/pm/ApexManager;
    .param p3, "storageEventHelper"    # Lcom/android/server/pm/StorageEventHelper;
    .param p4, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p5, "installerService"    # Lcom/android/server/pm/PackageInstallerService;
    .param p6, "requiredVerifierPackage"    # Ljava/lang/String;
    .param p7, "knownPackages"    # Lcom/android/server/pm/KnownPackages;
    .param p8, "changedPackagesTracker"    # Lcom/android/server/pm/ChangedPackagesTracker;
    .param p11, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Lcom/android/server/pm/ApexManager;",
            "Lcom/android/server/pm/StorageEventHelper;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/PackageInstallerService;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/KnownPackages;",
            "Lcom/android/server/pm/ChangedPackagesTracker;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            ")V"
        }
    .end annotation

    .line 74
    .local p9, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    .local p10, "protectedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 76
    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 78
    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 79
    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 80
    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 82
    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 83
    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 84
    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 85
    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 86
    return-void
.end method

.method private dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 706
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 707
    iget-object v2, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 706
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 709
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V
    .registers 19
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 667
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    nop

    .line 668
    const-wide v4, 0x10b00000001L

    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 669
    .local v4, "requiredVerifierPackageToken":J
    iget-object v6, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    const-wide v7, 0x10900000001L

    invoke-virtual {v2, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 671
    iget-object v6, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 673
    const-wide/32 v9, 0x10000000

    const/4 v11, 0x0

    invoke-interface {v1, v6, v9, v10, v11}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 671
    const-wide v12, 0x10500000002L

    invoke-virtual {v2, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 677
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 679
    iget-object v6, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v6

    .line 680
    .local v6, "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    .line 681
    .local v14, "verifierComponent":Landroid/content/ComponentName;
    if-eqz v14, :cond_60

    .line 682
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 683
    .local v15, "verifierPackageName":Ljava/lang/String;
    const-wide v12, 0x10b00000002L

    .line 684
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 685
    .local v12, "verifierPackageToken":J
    invoke-virtual {v2, v7, v8, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 686
    nop

    .line 688
    invoke-interface {v1, v15, v9, v10, v11}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    .line 686
    const-wide v8, 0x10500000002L

    invoke-virtual {v2, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 692
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 695
    .end local v12    # "verifierPackageToken":J
    .end local v15    # "verifierPackageName":Ljava/lang/String;
    :cond_60
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 696
    invoke-direct {v0, v2}, Lcom/android/server/pm/DumpHelper;->dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 697
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 698
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 699
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V

    .line 700
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 701
    return-void
.end method

.method static synthetic lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .registers 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sequenceNumber"    # Ljava/lang/Integer;
    .param p2, "values"    # Landroid/util/SparseArray;

    .line 488
    const-string v0, "  Sequence number="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 490
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 491
    .local v0, "numChangedPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_5e

    .line 492
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 493
    .local v2, "changes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v3, "  User "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 495
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 497
    .local v3, "numChanges":I
    const-string v4, "    "

    if-nez v3, :cond_37

    .line 498
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    const-string v4, "No packages changed"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5b

    .line 501
    :cond_37
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_38
    if-ge v5, v3, :cond_5b

    .line 502
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 503
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 504
    .local v7, "userSequenceNumber":I
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v8, "seq="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 507
    const-string v8, ", package="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "userSequenceNumber":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 491
    .end local v2    # "changes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "numChanges":I
    .end local v5    # "j":I
    :cond_5b
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 512
    .end local v1    # "i":I
    :cond_5e
    return-void
.end method

.method private printHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 626
    const-string v0, "Package manager dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    const-string v0, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    const-string v0, "    --checkin: dump for a checkin"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v0, "    -f: print details of intent filters"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const-string v0, "    -h: print this help"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const-string v0, "    --all-components: include all component names in package dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    const-string v0, "  cmd may be one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    const-string v0, "    apex: list active APEXes and APEX session state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const-string v0, "    l[ibraries]: list known shared libraries"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    const-string v0, "    f[eatures]: list device features"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string v0, "    k[eysets]: print known keysets"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const-string v0, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v0, "    perm[issions]: dump permissions"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string v0, "    permission [name ...]: dump declaration and use of given permission"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const-string v0, "    pref[erred]: print preferred package settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    const-string v0, "    preferred-xml [--full]: print preferred package settings as xml"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    const-string v0, "    prov[iders]: dump content providers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const-string v0, "    p[ackages]: dump installed packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const-string v0, "    q[ueries]: dump app queryability calculations"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string v0, "    s[hared-users]: dump shared user IDs"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string v0, "    m[essages]: print collected runtime messages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string v0, "    v[erifiers]: print package verifier info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v0, "    d[omain-preferred-apps]: print domains preferred apps"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v0, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const-string v0, "    t[imeouts]: print read timeouts for known digesters"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    const-string v0, "    version: print database version info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const-string v0, "    write: write current settings now"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    const-string v0, "    installs: details about install sessions"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const-string v0, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const-string v0, "    dexopt: dump dexopt state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    const-string v0, "    compiler-stats: dump compiler statistics"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    const-string v0, "    service-permissions: dump permissions required by services"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    const-string v0, "    snapshot: dump snapshot statistics"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string v0, "    protected-broadcasts: print list of protected broadcast actions"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    const-string v0, "    known-packages: dump known packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    const-string v0, "    <package.name>: info about given package"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    return-void
.end method


# virtual methods
.method public doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 90
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    new-instance v0, Lcom/android/server/pm/DumpState;

    invoke-direct {v0}, Lcom/android/server/pm/DumpState;-><init>()V

    move-object v12, v0

    .line 91
    .local v12, "dumpState":Lcom/android/server/pm/DumpState;
    const/4 v2, 0x0

    .line 93
    .local v2, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 96
    .local v3, "dumpDexoptOnly":Z
    const/4 v0, 0x0

    .line 97
    .local v0, "opti":I
    :goto_13
    array-length v4, v11

    const/4 v5, 0x2

    const/4 v13, 0x0

    const/4 v6, 0x1

    if-ge v0, v4, :cond_8d

    .line 98
    aget-object v4, v11, v0

    .line 99
    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_8d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8d

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v14, 0x2d

    if-eq v7, v14, :cond_2c

    .line 100
    goto :goto_8d

    .line 102
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    .line 104
    const-string v7, "-a"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    goto :goto_8c

    .line 106
    :cond_37
    const-string v7, "-h"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 107
    invoke-direct {v1, v10}, Lcom/android/server/pm/DumpHelper;->printHelp(Ljava/io/PrintWriter;)V

    .line 108
    return-void

    .line 109
    :cond_43
    const-string v7, "--checkin"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 110
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setCheckIn(Z)V

    goto :goto_8c

    .line 111
    :cond_4f
    const-string v7, "--all-components"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 112
    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_8c

    .line 113
    :cond_5b
    const-string v5, "-f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 114
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_8c

    .line 115
    :cond_67
    const-string v5, "--proto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 119
    return-void

    .line 121
    :cond_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; use -h for help"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .end local v4    # "opt":Ljava/lang/String;
    :goto_8c
    goto :goto_13

    .line 126
    :cond_8d
    :goto_8d
    array-length v4, v11

    const/high16 v15, 0x100000

    const/high16 v7, 0x80000

    const/16 v13, 0x2000

    const v14, 0x8000

    if-ge v0, v4, :cond_461

    .line 127
    aget-object v4, v11, v0

    .line 128
    .local v4, "cmd":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 130
    const-string v5, "logging"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 131
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerDebugUtils;->dumpLogText(Ljava/io/PrintWriter;)V

    .line 132
    return-void

    .line 136
    :cond_a9
    const-string v5, "android"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_457

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bb

    goto/16 :goto_457

    .line 141
    :cond_bb
    const-string v5, "check-permission"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 142
    array-length v5, v11

    if-lt v0, v5, :cond_cc

    .line 143
    const-string v5, "Error: check-permission missing permission argument"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void

    .line 146
    :cond_cc
    aget-object v5, v11, v0

    .line 147
    .local v5, "perm":Ljava/lang/String;
    add-int/2addr v0, v6

    .line 148
    array-length v7, v11

    if-lt v0, v7, :cond_d8

    .line 149
    const-string v6, "Error: check-permission missing package argument"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return-void

    .line 153
    :cond_d8
    aget-object v7, v11, v0

    .line 154
    .local v7, "pkg":Ljava/lang/String;
    add-int/2addr v6, v0

    .line 155
    .end local v0    # "opti":I
    .local v6, "opti":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 156
    .local v13, "user":I
    array-length v0, v11

    if-ge v6, v0, :cond_108

    .line 158
    :try_start_e6
    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_ec
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_ec} :catch_ee

    move v13, v0

    .line 163
    goto :goto_108

    .line 159
    :catch_ee
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: check-permission user argument is not a number: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v11, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    return-void

    .line 167
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_108
    :goto_108
    const-wide/16 v14, -0x1

    invoke-interface {v8, v7, v14, v15}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 170
    .end local v7    # "pkg":Ljava/lang/String;
    .local v0, "pkg":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v7, v5, v0, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 171
    return-void

    .line 172
    .end local v5    # "perm":Ljava/lang/String;
    .end local v6    # "opti":I
    .end local v13    # "user":I
    .local v0, "opti":I
    :cond_118
    const-string v5, "l"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_453

    const-string v5, "libraries"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12a

    goto/16 :goto_453

    .line 174
    :cond_12a
    const-string v5, "f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44e

    const-string v5, "features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13c

    goto/16 :goto_44e

    .line 176
    :cond_13c
    const-string/jumbo v5, "r"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c2

    const-string/jumbo v5, "resolvers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    goto/16 :goto_3c2

    .line 200
    :cond_150
    const-string/jumbo v5, "perm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3bb

    const-string/jumbo v5, "permissions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_164

    goto/16 :goto_3bb

    .line 202
    :cond_164
    const-string/jumbo v5, "permission"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_191

    .line 203
    array-length v5, v11

    if-lt v0, v5, :cond_176

    .line 204
    const-string v5, "Error: permission requires permission name"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    return-void

    .line 207
    :cond_176
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v5

    .line 208
    :goto_17c
    array-length v5, v11

    if-ge v0, v5, :cond_187

    .line 209
    aget-object v5, v11, v0

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_17c

    .line 212
    :cond_187
    const/16 v5, 0x1c0

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    move-object v13, v2

    move/from16 v18, v3

    goto/16 :goto_464

    .line 214
    :cond_191
    const-string/jumbo v5, "pref"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b4

    const-string/jumbo v5, "preferred"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a5

    goto/16 :goto_3b4

    .line 216
    :cond_1a5
    const-string/jumbo v5, "preferred-xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c8

    .line 217
    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 218
    array-length v5, v11

    if-ge v0, v5, :cond_45d

    aget-object v5, v11, v0

    const-string v13, "--full"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 219
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setFullPreferred(Z)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    move-object v13, v2

    move/from16 v18, v3

    goto/16 :goto_464

    .line 222
    :cond_1c8
    const-string v5, "d"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3ad

    const-string v5, "domain-preferred-apps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1da

    goto/16 :goto_3ad

    .line 224
    :cond_1da
    const-string/jumbo v5, "p"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a6

    const-string/jumbo v5, "packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ee

    goto/16 :goto_3a6

    .line 226
    :cond_1ee
    const-string/jumbo v5, "q"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39f

    const-string/jumbo v5, "queries"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_202

    goto/16 :goto_39f

    .line 228
    :cond_202
    const-string/jumbo v5, "s"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_386

    const-string/jumbo v5, "shared-users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_216

    goto/16 :goto_386

    .line 233
    :cond_216
    const-string/jumbo v5, "prov"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37f

    const-string/jumbo v5, "providers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22a

    goto/16 :goto_37f

    .line 235
    :cond_22a
    const-string v5, "m"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_378

    const-string/jumbo v5, "messages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23d

    goto/16 :goto_378

    .line 237
    :cond_23d
    const-string/jumbo v5, "v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_371

    const-string/jumbo v5, "verifiers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_251

    goto/16 :goto_371

    .line 239
    :cond_251
    const-string v5, "dv"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36a

    const-string v5, "domain-verifier"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_263

    goto/16 :goto_36a

    .line 241
    :cond_263
    const-string/jumbo v5, "version"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_271

    .line 242
    invoke-virtual {v12, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 243
    :cond_271
    const-string v5, "k"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_363

    const-string v5, "keysets"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_283

    goto/16 :goto_363

    .line 245
    :cond_283
    const-string v5, "installs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_292

    .line 246
    const/high16 v5, 0x10000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 247
    :cond_292
    const-string v5, "frozen"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29f

    .line 248
    invoke-virtual {v12, v7}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 249
    :cond_29f
    const-string/jumbo v5, "volumes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2af

    .line 250
    const/high16 v5, 0x800000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 251
    :cond_2af
    const-string v5, "dexopt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c0

    .line 252
    invoke-virtual {v12, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 254
    const/4 v3, 0x1

    move-object v13, v2

    move/from16 v18, v3

    goto/16 :goto_464

    .line 256
    :cond_2c0
    const-string v5, "compiler-stats"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2cf

    .line 257
    const/high16 v5, 0x200000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 258
    :cond_2cf
    const/high16 v5, 0x200000

    const-string v13, "changes"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e0

    .line 259
    const/high16 v13, 0x400000

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 260
    :cond_2e0
    const-string/jumbo v13, "service-permissions"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f0

    .line 261
    const/high16 v13, 0x1000000

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 262
    :cond_2f0
    const-string v13, "known-packages"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2ff

    .line 263
    const/high16 v13, 0x8000000

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 264
    :cond_2ff
    const-string/jumbo v13, "t"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_35c

    const-string/jumbo v13, "timeouts"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_312

    goto :goto_35c

    .line 266
    :cond_312
    const-string/jumbo v13, "snapshot"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34c

    .line 267
    const/high16 v13, 0x20000000

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 268
    array-length v13, v11

    if-ge v0, v13, :cond_45d

    .line 269
    aget-object v13, v11, v0

    const-string v5, "--full"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_338

    .line 270
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    move-object v13, v2

    move/from16 v18, v3

    goto/16 :goto_464

    .line 272
    :cond_338
    aget-object v5, v11, v0

    const-string v13, "--brief"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 273
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    move-object v13, v2

    move/from16 v18, v3

    goto/16 :goto_464

    .line 277
    :cond_34c
    const-string/jumbo v5, "protected-broadcasts"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 278
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 265
    :cond_35c
    :goto_35c
    const/high16 v5, 0x10000000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 244
    :cond_363
    :goto_363
    const/16 v5, 0x4000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 240
    :cond_36a
    :goto_36a
    const/high16 v5, 0x20000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 238
    :cond_371
    :goto_371
    const/16 v5, 0x800

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 236
    :cond_378
    :goto_378
    const/16 v5, 0x200

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 234
    :cond_37f
    :goto_37f
    const/16 v5, 0x400

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 229
    :cond_386
    :goto_386
    const/16 v5, 0x100

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 230
    array-length v5, v11

    if-ge v0, v5, :cond_45d

    aget-object v5, v11, v0

    const-string/jumbo v13, "noperm"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 231
    const/4 v5, 0x4

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto/16 :goto_45d

    .line 227
    :cond_39f
    :goto_39f
    const/high16 v5, 0x4000000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 225
    :cond_3a6
    :goto_3a6
    const/16 v5, 0x80

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 223
    :cond_3ad
    :goto_3ad
    const/high16 v5, 0x40000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 215
    :cond_3b4
    :goto_3b4
    const/16 v5, 0x1000

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 201
    :cond_3bb
    :goto_3bb
    const/16 v5, 0x40

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 177
    :cond_3c2
    :goto_3c2
    array-length v5, v11

    if-lt v0, v5, :cond_3cc

    .line 178
    const/16 v5, 0x3c

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_45d

    .line 183
    :cond_3cc
    :goto_3cc
    array-length v5, v11

    if-ge v0, v5, :cond_44a

    .line 184
    aget-object v5, v11, v0

    .line 185
    .local v5, "name":Ljava/lang/String;
    const-string v13, "a"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_442

    const-string v13, "activity"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e2

    goto :goto_442

    .line 187
    :cond_3e2
    const-string/jumbo v13, "s"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_43c

    const-string/jumbo v13, "service"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f5

    goto :goto_43c

    .line 189
    :cond_3f5
    const-string/jumbo v13, "r"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_436

    const-string/jumbo v13, "receiver"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_408

    goto :goto_436

    .line 191
    :cond_408
    const-string v13, "c"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_430

    const-string v13, "content"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_419

    goto :goto_430

    .line 194
    :cond_419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown resolver table type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    return-void

    .line 192
    :cond_430
    :goto_430
    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_446

    .line 190
    :cond_436
    :goto_436
    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_446

    .line 188
    :cond_43c
    :goto_43c
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_446

    .line 186
    :cond_442
    :goto_442
    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 197
    :goto_446
    nop

    .end local v5    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 198
    goto :goto_3cc

    .line 183
    :cond_44a
    move-object v13, v2

    move/from16 v18, v3

    goto :goto_464

    .line 175
    :cond_44e
    :goto_44e
    const/4 v5, 0x2

    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_45d

    .line 173
    :cond_453
    :goto_453
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_45d

    .line 137
    :cond_457
    :goto_457
    invoke-virtual {v12, v4}, Lcom/android/server/pm/DumpState;->setTargetPackageName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    .line 282
    .end local v4    # "cmd":Ljava/lang/String;
    :cond_45d
    :goto_45d
    move-object v13, v2

    move/from16 v18, v3

    goto :goto_464

    .line 126
    :cond_461
    move-object v13, v2

    move/from16 v18, v3

    .line 282
    .end local v2    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "dumpDexoptOnly":Z
    .local v13, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v18, "dumpDexoptOnly":Z
    :goto_464
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v19

    .line 286
    .local v19, "checkin":Z
    if-eqz v5, :cond_493

    .line 287
    invoke-interface {v8, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_493

    iget-object v2, v1, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 288
    invoke-virtual {v2, v5}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_493

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    return-void

    .line 293
    :cond_493
    if-eqz v19, :cond_49b

    .line 294
    const-string/jumbo v2, "vers,1"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    :cond_49b
    if-nez v19, :cond_4a8

    .line 299
    invoke-virtual {v12, v14}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_4a8

    if-nez v5, :cond_4a8

    .line 301
    invoke-interface {v8, v14, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 304
    :cond_4a8
    const/16 v14, 0x78

    const-string v4, "  "

    if-nez v19, :cond_522

    .line 305
    const/high16 v2, 0x8000000

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_51f

    if-nez v5, :cond_51f

    .line 307
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_4c1

    .line 308
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 310
    :cond_4c1
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v10, v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 311
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v3, "Known Packages:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 313
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4cf
    const/16 v7, 0x12

    if-gt v3, v7, :cond_519

    .line 314
    invoke-static {v3}, Lcom/android/server/pm/KnownPackages;->knownPackageToString(I)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "knownPackage":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string v14, ":"

    invoke-virtual {v2, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 317
    iget-object v14, v1, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v3, v15}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v14

    .line 319
    .local v14, "pkgNames":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 320
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4f8

    .line 321
    const-string/jumbo v15, "none"

    invoke-virtual {v2, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move/from16 v20, v0

    goto :goto_50a

    .line 323
    :cond_4f8
    array-length v15, v14

    const/4 v6, 0x0

    :goto_4fa
    if-ge v6, v15, :cond_508

    move/from16 v20, v0

    .end local v0    # "opti":I
    .local v20, "opti":I
    aget-object v0, v14, v6

    .line 324
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 323
    .end local v0    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v20

    goto :goto_4fa

    .end local v20    # "opti":I
    .local v0, "opti":I
    :cond_508
    move/from16 v20, v0

    .line 327
    .end local v0    # "opti":I
    .restart local v20    # "opti":I
    :goto_50a
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 313
    .end local v7    # "knownPackage":Ljava/lang/String;
    .end local v14    # "pkgNames":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v20

    const/4 v6, 0x1

    const/high16 v7, 0x80000

    const/16 v14, 0x78

    const/high16 v15, 0x100000

    goto :goto_4cf

    .end local v20    # "opti":I
    .restart local v0    # "opti":I
    :cond_519
    move/from16 v20, v0

    .line 329
    .end local v0    # "opti":I
    .end local v3    # "i":I
    .restart local v20    # "opti":I
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_524

    .line 305
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v20    # "opti":I
    .restart local v0    # "opti":I
    :cond_51f
    move/from16 v20, v0

    .end local v0    # "opti":I
    .restart local v20    # "opti":I
    goto :goto_524

    .line 304
    .end local v20    # "opti":I
    .restart local v0    # "opti":I
    :cond_522
    move/from16 v20, v0

    .line 332
    .end local v0    # "opti":I
    .restart local v20    # "opti":I
    :goto_524
    const/16 v0, 0x800

    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    const-string v14, ")"

    const-string v2, ","

    const-wide/32 v6, 0x10000000

    if-eqz v0, :cond_576

    if-nez v5, :cond_576

    .line 334
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 335
    .local v0, "requiredVerifierPackage":Ljava/lang/String;
    if-nez v19, :cond_560

    .line 336
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_542

    .line 337
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 339
    :cond_542
    const-string v3, "Verifiers:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string v3, "  Required: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    const-string v3, " (uid="

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const/4 v3, 0x0

    invoke-interface {v8, v0, v6, v7, v3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 345
    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_576

    .line 346
    :cond_560
    if-eqz v0, :cond_576

    .line 347
    const-string/jumbo v3, "vrfy,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    const/4 v3, 0x0

    invoke-interface {v8, v0, v6, v7, v3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->println(I)V

    .line 355
    .end local v0    # "requiredVerifierPackage":Ljava/lang/String;
    :cond_576
    :goto_576
    const/high16 v0, 0x20000

    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_5e8

    if-nez v5, :cond_5e8

    .line 357
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v0

    .line 358
    .local v0, "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 359
    .local v3, "verifierComponent":Landroid/content/ComponentName;
    if-eqz v3, :cond_5dc

    .line 360
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 361
    .local v15, "verifierPackageName":Ljava/lang/String;
    if-nez v19, :cond_5bf

    .line 362
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v17

    if-eqz v17, :cond_59b

    .line 363
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 365
    :cond_59b
    const-string v6, "Domain Verifier:"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const-string v6, "  Using: "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    const-string v6, " (uid="

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    move-object/from16 v17, v0

    const/4 v0, 0x0

    const-wide/32 v6, 0x10000000

    .end local v0    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .local v17, "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    invoke-interface {v8, v15, v6, v7, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 371
    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_5db

    .line 372
    .end local v17    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .restart local v0    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    :cond_5bf
    move-object/from16 v17, v0

    .end local v0    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .restart local v17    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    if-eqz v15, :cond_5da

    .line 373
    const-string v0, "dv,"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    const-wide/32 v6, 0x10000000

    invoke-interface {v8, v15, v6, v7, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5db

    .line 372
    :cond_5da
    const/4 v0, 0x0

    .line 379
    .end local v15    # "verifierPackageName":Ljava/lang/String;
    :goto_5db
    goto :goto_5e9

    .line 380
    .end local v17    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .restart local v0    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    :cond_5dc
    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .restart local v17    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 381
    const-string v6, "No Domain Verifier available!"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5e9

    .line 355
    .end local v3    # "verifierComponent":Landroid/content/ComponentName;
    .end local v17    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    :cond_5e8
    const/4 v0, 0x0

    .line 385
    :goto_5e9
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_5f5

    if-nez v5, :cond_5f5

    .line 387
    invoke-interface {v8, v3, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 390
    :cond_5f5
    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_653

    if-nez v5, :cond_653

    .line 392
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_607

    .line 393
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 395
    :cond_607
    if-nez v19, :cond_60e

    .line 396
    const-string v3, "Features:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    :cond_60e
    iget-object v3, v1, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_618
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_653

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/FeatureInfo;

    .line 400
    .local v6, "feat":Landroid/content/pm/FeatureInfo;
    if-nez v19, :cond_640

    .line 401
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-object v7, v6, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    iget v7, v6, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v7, :cond_63c

    .line 404
    const-string v7, " version="

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    iget v7, v6, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 407
    :cond_63c
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_652

    .line 409
    :cond_640
    const-string v7, "feat,"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-object v7, v6, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    iget v7, v6, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 414
    .end local v6    # "feat":Landroid/content/pm/FeatureInfo;
    :goto_652
    goto :goto_618

    .line 417
    :cond_653
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v15

    .line 418
    .local v15, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    if-nez v19, :cond_663

    .line 419
    const/4 v2, 0x4

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_663

    .line 420
    invoke-interface {v15, v10, v12, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 422
    :cond_663
    if-nez v19, :cond_670

    const/16 v2, 0x10

    .line 423
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_670

    .line 424
    invoke-interface {v15, v10, v12, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 426
    :cond_670
    if-nez v19, :cond_67d

    const/16 v2, 0x8

    .line 427
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_67d

    .line 428
    invoke-interface {v15, v10, v12, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 430
    :cond_67d
    if-nez v19, :cond_68a

    const/16 v2, 0x20

    .line 431
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_68a

    .line 432
    invoke-interface {v15, v10, v12, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 435
    :cond_68a
    if-nez v19, :cond_697

    .line 436
    const/16 v2, 0x1000

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_697

    .line 437
    invoke-interface {v8, v2, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 440
    :cond_697
    if-nez v19, :cond_6a6

    .line 441
    const/16 v2, 0x2000

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_6a6

    if-nez v5, :cond_6a6

    .line 442
    invoke-interface {v8, v2, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 445
    :cond_6a6
    if-nez v19, :cond_6b3

    .line 446
    const/high16 v2, 0x40000

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_6b3

    .line 447
    invoke-interface {v8, v2, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 450
    :cond_6b3
    if-nez v19, :cond_6c0

    const/16 v2, 0x40

    .line 451
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6c0

    .line 452
    invoke-interface {v8, v10, v5, v13, v12}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    .line 455
    :cond_6c0
    if-nez v19, :cond_6cd

    const/16 v2, 0x400

    .line 456
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6cd

    .line 457
    invoke-interface {v15, v8, v10, v12, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 461
    :cond_6cd
    if-nez v19, :cond_6da

    const/16 v2, 0x4000

    .line 462
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6da

    .line 463
    invoke-interface {v8, v10, v5, v12}, Lcom/android/server/pm/Computer;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    .line 466
    :cond_6da
    const/16 v2, 0x80

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6f9

    .line 467
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v7, v4

    move-object v4, v5

    move-object v6, v5

    const/high16 v0, 0x200000

    .end local v5    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    move-object v5, v13

    move-object/from16 v16, v6

    .end local v6    # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    move-object v6, v12

    move-object/from16 v21, v7

    const/high16 v0, 0x80000

    move/from16 v7, v19

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    goto :goto_6ff

    .line 466
    .end local v16    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_6f9
    move-object/from16 v21, v4

    move-object/from16 v16, v5

    const/high16 v0, 0x80000

    .line 470
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    :goto_6ff
    if-nez v19, :cond_70c

    .line 471
    const/high16 v2, 0x4000000

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_70c

    .line 472
    invoke-interface {v8, v2, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 475
    :cond_70c
    const/16 v2, 0x100

    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_721

    .line 476
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object v5, v13

    move-object v6, v12

    move/from16 v7, v19

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 480
    :cond_721
    if-nez v19, :cond_74b

    const/high16 v2, 0x400000

    .line 481
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_748

    move-object/from16 v2, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_74d

    .line 483
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_738

    .line 484
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 486
    :cond_738
    const-string v3, "Package Changes:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    iget-object v3, v1, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v4, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v10}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ChangedPackagesTracker;->iterateAll(Ljava/util/function/BiConsumer;)V

    goto :goto_74d

    .line 481
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_748
    move-object/from16 v2, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    goto :goto_74d

    .line 480
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_74b
    move-object/from16 v2, v16

    .line 515
    .end local v16    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_74d
    :goto_74d
    if-nez v19, :cond_75a

    .line 516
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_75a

    if-nez v2, :cond_75a

    .line 518
    invoke-interface {v8, v0, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 521
    :cond_75a
    if-nez v19, :cond_76b

    const/high16 v0, 0x800000

    .line 522
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_76b

    if-nez v2, :cond_76b

    .line 524
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/StorageEventHelper;->dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 527
    :cond_76b
    if-nez v19, :cond_77a

    const/high16 v0, 0x1000000

    .line 528
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_77a

    if-nez v2, :cond_77a

    .line 530
    invoke-interface {v15, v10, v12}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 536
    :cond_77a
    if-nez v19, :cond_78d

    .line 537
    const/high16 v0, 0x100000

    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_78d

    if-nez v18, :cond_788

    if-eqz v2, :cond_78d

    .line 539
    :cond_788
    const/high16 v0, 0x100000

    invoke-interface {v8, v0, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 542
    :cond_78d
    if-nez v19, :cond_79a

    .line 543
    const/high16 v0, 0x200000

    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_79a

    .line 544
    invoke-interface {v8, v0, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 547
    :cond_79a
    const/16 v0, 0x200

    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_7c7

    if-nez v2, :cond_7c7

    .line 549
    if-nez v19, :cond_7c1

    .line 550
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_7af

    .line 551
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 553
    :cond_7af
    const/16 v0, 0x200

    invoke-interface {v8, v0, v9, v10, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 555
    const-string v0, "Package warning messages:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_7c7

    .line 558
    :cond_7c1
    const-string/jumbo v0, "msg,"

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 563
    :cond_7c7
    :goto_7c7
    if-nez v19, :cond_7ee

    const/high16 v0, 0x10000

    .line 564
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_7eb

    if-nez v2, :cond_7eb

    .line 568
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_7dc

    .line 569
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 571
    :cond_7dc
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    move-object/from16 v5, v21

    const/16 v4, 0x78

    invoke-direct {v3, v10, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_7f0

    .line 564
    :cond_7eb
    move-object/from16 v5, v21

    goto :goto_7f0

    .line 563
    :cond_7ee
    move-object/from16 v5, v21

    .line 574
    :goto_7f0
    if-nez v19, :cond_809

    const/high16 v0, 0x2000000

    .line 575
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_809

    if-eqz v2, :cond_804

    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 576
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_809

    .line 577
    :cond_804
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v10, v2}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 580
    :cond_809
    if-nez v19, :cond_908

    const/high16 v0, 0x10000000

    .line 581
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_908

    if-nez v2, :cond_908

    .line 583
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_81e

    .line 584
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 586
    :cond_81e
    const-string v0, "Per UID read timeouts:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Default timeouts flag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Known digesters list flag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 589
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Timeouts ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_87a
    if-ge v4, v3, :cond_908

    aget-object v6, v0, v4

    .line 593
    .local v6, "item":Landroid/os/incremental/PerUidReadTimeouts;
    const-string v7, "        ("

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "uid="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    const-string/jumbo v3, "minTimeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v6, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minPendingTimeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v6, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxPendingTimeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, v6, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    .end local v6    # "item":Landroid/os/incremental/PerUidReadTimeouts;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, v16

    move/from16 v3, v17

    goto/16 :goto_87a

    .line 602
    :cond_908
    if-nez v19, :cond_91d

    const/high16 v0, 0x20000000

    .line 603
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_91d

    if-nez v2, :cond_91d

    .line 605
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_91d

    .line 606
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 610
    :cond_91d
    if-nez v19, :cond_951

    const/high16 v0, 0x40000000    # 2.0f

    .line 611
    invoke-virtual {v12, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_951

    if-nez v2, :cond_951

    .line 613
    invoke-virtual {v12}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_932

    .line 614
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 616
    :cond_932
    const-string v0, "Protected broadcast actions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_938
    iget-object v3, v1, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_951

    .line 618
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget-object v3, v1, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_938

    .line 623
    .end local v0    # "i":I
    :cond_951
    return-void
.end method
