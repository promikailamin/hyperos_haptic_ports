.class public final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# instance fields
.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field public final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method public static synthetic $r8$lambda$m4jNxRY74ZLb_Qhn1z5qrJf1Fyw(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .registers 12

    .line 480
    const-string v0, "  Sequence number="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_5f

    .line 484
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 485
    const-string v3, "  User "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 487
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 489
    const-string v4, "    "

    if-nez v3, :cond_38

    .line 490
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    const-string v2, "No packages changed"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5c

    :cond_38
    move v5, v0

    :goto_39
    if-ge v5, v3, :cond_5c

    .line 494
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 495
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 496
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    const-string/jumbo v8, "seq="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 499
    const-string v7, ", package="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_5f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V
    .registers 12

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 80
    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 81
    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 82
    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 84
    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 85
    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 86
    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 87
    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 88
    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    return-void
.end method


# virtual methods
.method public doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 93
    new-instance v5, Lcom/android/server/pm/DumpState;

    invoke-direct {v5}, Lcom/android/server/pm/DumpState;-><init>()V

    const/4 v8, 0x0

    move v4, v8

    .line 97
    :goto_11
    array-length v6, v3

    const/16 v9, 0x8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v4, v6, :cond_9a

    .line 98
    aget-object v6, v3, v4

    if-eqz v6, :cond_9a

    .line 99
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_9a

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_2c

    goto/16 :goto_9a

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    .line 104
    const-string v12, "-a"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    goto :goto_11

    .line 106
    :cond_37
    const-string v12, "-h"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_43

    .line 107
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DumpHelper;->printHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 109
    :cond_43
    const-string v12, "--checkin"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4f

    .line 110
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setCheckIn(Z)V

    goto :goto_11

    .line 111
    :cond_4f
    const-string v12, "--all-components"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5b

    .line 112
    invoke-virtual {v5, v10}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_11

    .line 113
    :cond_5b
    const-string v10, "-f"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 114
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_11

    .line 115
    :cond_67
    const-string v10, "--include-apex"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_73

    .line 116
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_11

    .line 117
    :cond_73
    const-string v9, "--proto"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 118
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/DumpHelper;->dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V

    return-void

    .line 121
    :cond_7f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown argument: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; use -h for help"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 126
    :cond_9a
    :goto_9a
    array-length v6, v3

    const/high16 v9, 0x100000

    const/high16 v12, 0x80000

    const v13, 0x8000

    const/16 v14, 0x2000

    if-ge v4, v6, :cond_427

    .line 127
    aget-object v6, v3, v4

    add-int/lit8 v15, v4, 0x1

    .line 130
    const-string v10, "android"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_421

    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_bc

    goto/16 :goto_421

    .line 135
    :cond_bc
    const-string v10, "check-permission"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_119

    .line 136
    array-length v5, v3

    if-lt v15, v5, :cond_cd

    .line 137
    const-string v0, "Error: check-permission missing permission argument"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 140
    :cond_cd
    aget-object v5, v3, v15

    add-int/lit8 v6, v4, 0x2

    .line 142
    array-length v7, v3

    if-lt v6, v7, :cond_da

    .line 143
    const-string v0, "Error: check-permission missing package argument"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_da
    aget-object v6, v3, v6

    add-int/lit8 v4, v4, 0x3

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 150
    array-length v8, v3

    if-ge v4, v8, :cond_107

    .line 152
    :try_start_e9
    aget-object v7, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_ef} :catch_f0

    goto :goto_107

    .line 154
    :catch_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: check-permission user argument is not a number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_107
    :goto_107
    const-wide/16 v3, -0x1

    .line 161
    invoke-interface {v1, v6, v3, v4}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v0, v0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v3, "default:0"

    invoke-interface {v0, v1, v5, v3, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    .line 167
    :cond_119
    const-string v4, "l"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41d

    const-string v4, "libraries"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12b

    goto/16 :goto_41d

    .line 169
    :cond_12b
    const-string v4, "f"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13b

    const-string v4, "features"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13e

    :cond_13b
    const/4 v3, 0x2

    goto/16 :goto_419

    .line 171
    :cond_13e
    const-string/jumbo v4, "r"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v8, "s"

    if-nez v10, :cond_39a

    const-string/jumbo v10, "resolvers"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_155

    goto/16 :goto_39a

    .line 195
    :cond_155
    const-string/jumbo v4, "perm"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_393

    const-string/jumbo v4, "permissions"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_169

    goto/16 :goto_393

    .line 197
    :cond_169
    const-string/jumbo v4, "permission"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_192

    .line 198
    array-length v4, v3

    if-lt v15, v4, :cond_17b

    .line 199
    const-string v0, "Error: permission requires permission name"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_17b
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 203
    :goto_180
    array-length v6, v3

    if-ge v15, v6, :cond_18b

    .line 204
    aget-object v6, v3, v15

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_180

    :cond_18b
    const/16 v3, 0x1c0

    .line 207
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_428

    .line 209
    :cond_192
    const-string/jumbo v4, "pref"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a4

    const-string/jumbo v4, "preferred"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a8

    :cond_1a4
    const/16 v3, 0x1000

    goto/16 :goto_38e

    .line 211
    :cond_1a8
    const-string/jumbo v4, "preferred-xml"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v10, "--full"

    if-eqz v4, :cond_1c6

    .line 212
    invoke-virtual {v5, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 213
    array-length v4, v3

    if-ge v15, v4, :cond_427

    aget-object v3, v3, v15

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_427

    .line 214
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setFullPreferred(Z)V

    goto/16 :goto_427

    .line 217
    :cond_1c6
    const-string v4, "d"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d6

    const-string v4, "domain-preferred-apps"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    :cond_1d6
    const/high16 v3, 0x40000

    goto/16 :goto_389

    .line 219
    :cond_1da
    const-string/jumbo v4, "p"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_382

    const-string/jumbo v4, "packages"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    goto/16 :goto_382

    .line 221
    :cond_1ee
    const-string/jumbo v4, "q"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_200

    const-string/jumbo v4, "queries"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_204

    :cond_200
    const/high16 v3, 0x4000000

    goto/16 :goto_37d

    .line 223
    :cond_204
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_364

    const-string/jumbo v4, "shared-users"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    goto/16 :goto_364

    .line 228
    :cond_215
    const-string/jumbo v4, "prov"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35d

    const-string/jumbo v4, "providers"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_229

    goto/16 :goto_35d

    .line 230
    :cond_229
    const-string v4, "m"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23a

    const-string/jumbo v4, "messages"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23e

    :cond_23a
    const/16 v3, 0x200

    goto/16 :goto_358

    .line 232
    :cond_23e
    const-string/jumbo v4, "v"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_351

    const-string/jumbo v4, "verifiers"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_252

    goto/16 :goto_351

    .line 234
    :cond_252
    const-string v4, "dv"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34a

    const-string v4, "domain-verifier"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_264

    goto/16 :goto_34a

    .line 236
    :cond_264
    const-string/jumbo v4, "version"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_272

    .line 237
    invoke-virtual {v5, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 238
    :cond_272
    const-string v4, "k"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_343

    const-string v4, "keysets"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_284

    goto/16 :goto_343

    .line 240
    :cond_284
    const-string v4, "installs"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_293

    const/high16 v3, 0x10000

    .line 241
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 242
    :cond_293
    const-string v4, "frozen"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a0

    .line 243
    invoke-virtual {v5, v12}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 244
    :cond_2a0
    const-string/jumbo v4, "volumes"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b0

    const/high16 v3, 0x800000

    .line 245
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 246
    :cond_2b0
    const-string v4, "dexopt"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bd

    .line 247
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 248
    :cond_2bd
    const-string v4, "changes"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cc

    const/high16 v3, 0x400000

    .line 249
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 250
    :cond_2cc
    const-string/jumbo v4, "service-permissions"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2dc

    const/high16 v3, 0x1000000

    .line 251
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 252
    :cond_2dc
    const-string v4, "known-packages"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2eb

    const/high16 v3, 0x8000000

    .line 253
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 254
    :cond_2eb
    const-string/jumbo v4, "t"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33c

    const-string/jumbo v4, "timeouts"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2fe

    goto :goto_33c

    .line 256
    :cond_2fe
    const-string/jumbo v4, "snapshot"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32c

    const/high16 v4, 0x20000000

    .line 257
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 258
    array-length v4, v3

    if-ge v15, v4, :cond_427

    .line 259
    aget-object v4, v3, v15

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31d

    const/4 v4, 0x0

    .line 260
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_427

    .line 262
    :cond_31d
    const-string v4, "--brief"

    aget-object v3, v3, v15

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_427

    .line 263
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_427

    .line 267
    :cond_32c
    const-string/jumbo v3, "protected-broadcasts"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_427

    const/high16 v3, 0x40000000    # 2.0f

    .line 268
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_33c
    :goto_33c
    const/high16 v3, 0x10000000

    .line 255
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_343
    :goto_343
    const/16 v3, 0x4000

    .line 239
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_34a
    :goto_34a
    const/high16 v3, 0x20000

    .line 235
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_351
    :goto_351
    const/16 v3, 0x800

    .line 233
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 231
    :goto_358
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_35d
    :goto_35d
    const/16 v3, 0x400

    .line 229
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_364
    :goto_364
    const/16 v4, 0x100

    .line 224
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 225
    array-length v4, v3

    if-ge v15, v4, :cond_427

    const-string/jumbo v4, "noperm"

    aget-object v3, v3, v15

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_427

    const/4 v3, 0x4

    .line 226
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto/16 :goto_427

    .line 222
    :goto_37d
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_382
    :goto_382
    const/16 v3, 0x80

    .line 220
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 218
    :goto_389
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 210
    :goto_38e
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    :cond_393
    :goto_393
    const/16 v3, 0x40

    .line 196
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 172
    :cond_39a
    :goto_39a
    array-length v6, v3

    if-lt v15, v6, :cond_3a4

    const/16 v3, 0x3c

    .line 173
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_427

    .line 178
    :cond_3a4
    :goto_3a4
    array-length v6, v3

    if-ge v15, v6, :cond_427

    .line 179
    aget-object v6, v3, v15

    .line 180
    const-string v10, "a"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b9

    const-string v10, "activity"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3bb

    :cond_3b9
    const/4 v6, 0x4

    goto :goto_413

    .line 182
    :cond_3bb
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3ca

    const-string/jumbo v10, "service"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3cd

    :cond_3ca
    const/16 v6, 0x8

    goto :goto_40f

    .line 184
    :cond_3cd
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_409

    const-string/jumbo v10, "receiver"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3dd

    goto :goto_409

    .line 186
    :cond_3dd
    const-string v10, "c"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_403

    const-string v10, "content"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3ee

    goto :goto_403

    .line 189
    :cond_3ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown resolver table type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_403
    :goto_403
    const/16 v6, 0x20

    .line 187
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_416

    :cond_409
    :goto_409
    const/16 v6, 0x10

    .line 185
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_416

    .line 183
    :goto_40f
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_416

    .line 181
    :goto_413
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    :goto_416
    add-int/lit8 v15, v15, 0x1

    goto :goto_3a4

    .line 170
    :goto_419
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_427

    .line 168
    :cond_41d
    :goto_41d
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_427

    .line 131
    :cond_421
    :goto_421
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setTargetPackageName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    :cond_427
    :goto_427
    const/4 v4, 0x0

    .line 272
    :goto_428
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v6

    if-eqz v3, :cond_453

    .line 277
    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    if-nez v8, :cond_453

    .line 278
    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_453

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_453
    if-eqz v6, :cond_45b

    .line 284
    const-string/jumbo v8, "vers,1"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_45b
    if-nez v6, :cond_468

    .line 289
    invoke-virtual {v5, v13}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v8

    if-eqz v8, :cond_468

    if-nez v3, :cond_468

    .line 291
    invoke-interface {v1, v13, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 294
    :cond_468
    const-string v8, "  "

    if-nez v6, :cond_4d3

    const/high16 v10, 0x8000000

    .line 295
    invoke-virtual {v5, v10}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v10

    if-eqz v10, :cond_4d3

    if-nez v3, :cond_4d3

    .line 297
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v10

    if-eqz v10, :cond_47f

    .line 298
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 300
    :cond_47f
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v13, 0x78

    invoke-direct {v10, v2, v8, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 301
    const-string v13, "Known Packages:"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v13, 0x0

    :goto_48f
    const/16 v15, 0x14

    if-gt v13, v15, :cond_4d0

    .line 304
    invoke-static {v13}, Lcom/android/server/pm/KnownPackages;->knownPackageToString(I)Ljava/lang/String;

    move-result-object v15

    .line 305
    invoke-virtual {v10, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    const-string v15, ":"

    invoke-virtual {v10, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object v15, v0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v9, 0x0

    invoke-virtual {v15, v1, v13, v9}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v15

    .line 309
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 310
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b6

    .line 311
    const-string/jumbo v9, "none"

    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c4

    .line 313
    :cond_4b6
    array-length v9, v15

    const/4 v12, 0x0

    :goto_4b8
    if-ge v12, v9, :cond_4c4

    aget-object v14, v15, v12

    .line 314
    invoke-virtual {v10, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    const/16 v14, 0x2000

    goto :goto_4b8

    .line 317
    :cond_4c4
    :goto_4c4
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v13, v13, 0x1

    const/high16 v9, 0x100000

    const/high16 v12, 0x80000

    const/16 v14, 0x2000

    goto :goto_48f

    .line 319
    :cond_4d0
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4d3
    const/16 v9, 0x800

    .line 322
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    const-string v10, ","

    const-string v12, ")"

    if-eqz v9, :cond_542

    if-nez v3, :cond_542

    if-nez v6, :cond_4f6

    .line 323
    iget-object v9, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_4f6

    .line 324
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_4f1

    .line 325
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 327
    :cond_4f1
    const-string v9, "Verifiers:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    :cond_4f6
    iget-object v9, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v15, v9

    const/4 v11, 0x0

    :goto_4fa
    if-ge v11, v15, :cond_542

    aget-object v13, v9, v11

    if-nez v6, :cond_520

    .line 331
    const-string v14, "  Required: "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const-string v14, " (uid="

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v16, v6

    move/from16 p4, v15

    const/4 v6, 0x0

    const-wide/32 v14, 0x10000000

    .line 334
    invoke-interface {v1, v13, v14, v15, v6}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 336
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53b

    :cond_520
    move/from16 v16, v6

    move/from16 p4, v15

    const-wide/32 v14, 0x10000000

    .line 338
    const-string/jumbo v6, "vrfy,"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 341
    invoke-interface {v1, v13, v14, v15, v6}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(I)V

    :goto_53b
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, p4

    move/from16 v6, v16

    goto :goto_4fa

    :cond_542
    move/from16 v16, v6

    const/high16 v6, 0x20000

    .line 347
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    if-nez v3, :cond_5ae

    .line 349
    iget-object v6, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v6

    .line 350
    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_5a4

    .line 352
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v16, :cond_58a

    .line 354
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_569

    .line 355
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 357
    :cond_569
    const-string v9, "Domain Verifier:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const-string v9, "  Using: "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string v9, " (uid="

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v9, 0x0

    const-wide/32 v14, 0x10000000

    .line 361
    invoke-interface {v1, v6, v14, v15, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 363
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5a2

    :cond_58a
    const/4 v9, 0x0

    const-wide/32 v14, 0x10000000

    if-eqz v6, :cond_5a2

    .line 365
    const-string v11, "dv,"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-interface {v1, v6, v14, v15, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_5a2
    :goto_5a2
    const/4 v6, 0x1

    goto :goto_5b0

    :cond_5a4
    const/4 v9, 0x0

    .line 372
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 373
    const-string v6, "No Domain Verifier available!"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5a2

    :cond_5ae
    const/4 v9, 0x0

    goto :goto_5a2

    .line 377
    :goto_5b0
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_5bb

    if-nez v3, :cond_5bb

    .line 379
    invoke-interface {v1, v6, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_5bb
    const/4 v6, 0x2

    .line 382
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_619

    if-nez v3, :cond_619

    .line 384
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v6

    if-eqz v6, :cond_5cd

    .line 385
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_5cd
    if-nez v16, :cond_5d4

    .line 388
    const-string v6, "Features:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    :cond_5d4
    iget-object v6, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5de
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_619

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/FeatureInfo;

    if-nez v16, :cond_606

    .line 393
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    iget-object v13, v11, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget v13, v11, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v13, :cond_602

    .line 396
    const-string v13, " version="

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget v11, v11, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    :cond_602
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_5de

    .line 401
    :cond_606
    const-string v13, "feat,"

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-object v13, v11, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget v11, v11, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5de

    .line 409
    :cond_619
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v10

    if-nez v16, :cond_629

    const/4 v6, 0x4

    .line 411
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_629

    .line 412
    invoke-interface {v10, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_629
    if-nez v16, :cond_636

    const/16 v6, 0x10

    .line 415
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_636

    .line 416
    invoke-interface {v10, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_636
    if-nez v16, :cond_643

    const/16 v6, 0x8

    .line 419
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_643

    .line 420
    invoke-interface {v10, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_643
    if-nez v16, :cond_650

    const/16 v6, 0x20

    .line 423
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_650

    .line 424
    invoke-interface {v10, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_650
    if-nez v16, :cond_65d

    const/16 v6, 0x1000

    .line 428
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_65d

    .line 429
    invoke-interface {v1, v6, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_65d
    if-nez v16, :cond_66c

    const/16 v6, 0x2000

    .line 433
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_66c

    if-nez v3, :cond_66c

    .line 434
    invoke-interface {v1, v6, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_66c
    if-nez v16, :cond_679

    const/high16 v6, 0x40000

    .line 438
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_679

    .line 439
    invoke-interface {v1, v6, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_679
    if-nez v16, :cond_686

    const/16 v6, 0x40

    .line 443
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_686

    .line 444
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    :cond_686
    if-nez v16, :cond_693

    const/16 v6, 0x400

    .line 448
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_693

    .line 449
    invoke-interface {v10, v1, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_693
    if-nez v16, :cond_6a0

    const/16 v6, 0x4000

    .line 454
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_6a0

    .line 455
    invoke-interface {v1, v2, v3, v5}, Lcom/android/server/pm/Computer;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    :cond_6a0
    const/16 v6, 0x80

    .line 458
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v6

    if-eqz v6, :cond_6ae

    move/from16 v6, v16

    .line 459
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    goto :goto_6b0

    :cond_6ae
    move/from16 v6, v16

    :goto_6b0
    if-nez v6, :cond_6bd

    const/high16 v11, 0x4000000

    .line 463
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_6bd

    .line 464
    invoke-interface {v1, v11, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6bd
    const/16 v11, 0x100

    .line 467
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_6c8

    .line 468
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    :cond_6c8
    move-object v13, v3

    move-object v11, v5

    move/from16 v16, v6

    if-nez v16, :cond_6f0

    const/high16 v3, 0x400000

    .line 473
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_6f0

    if-nez v13, :cond_6f0

    .line 475
    invoke-virtual {v11}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_6e1

    .line 476
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 478
    :cond_6e1
    const-string v3, "Package Changes:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v4, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ChangedPackagesTracker;->iterateAll(Ljava/util/function/BiConsumer;)V

    :cond_6f0
    if-nez v16, :cond_6ff

    const/high16 v3, 0x80000

    .line 508
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_6ff

    if-nez v13, :cond_6ff

    .line 510
    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6ff
    if-nez v16, :cond_710

    const/high16 v3, 0x800000

    .line 514
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_710

    if-nez v13, :cond_710

    .line 516
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v3, v2, v11}, Lcom/android/server/pm/StorageEventHelper;->dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_710
    if-nez v16, :cond_71f

    const/high16 v3, 0x1000000

    .line 520
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_71f

    if-nez v13, :cond_71f

    .line 522
    invoke-interface {v10, v2, v11}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_71f
    if-nez v16, :cond_72c

    const/high16 v3, 0x100000

    .line 526
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_72c

    .line 527
    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_72c
    const/16 v3, 0x200

    .line 530
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_757

    if-nez v13, :cond_757

    if-nez v16, :cond_751

    .line 533
    invoke-virtual {v11}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_741

    .line 534
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 536
    :cond_741
    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 537
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 538
    const-string v3, "Package warning messages:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 539
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_757

    .line 541
    :cond_751
    const-string/jumbo v3, "msg,"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_757
    :goto_757
    if-nez v16, :cond_778

    const/high16 v3, 0x10000

    .line 547
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_778

    if-nez v13, :cond_778

    .line 551
    invoke-virtual {v11}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_76c

    .line 552
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 554
    :cond_76c
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v5, 0x78

    invoke-direct {v4, v2, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_778
    if-nez v16, :cond_787

    const/high16 v3, 0x2000000

    .line 557
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_787

    const/high16 v3, 0x2000000

    .line 558
    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_787
    if-nez v16, :cond_867

    const/high16 v3, 0x10000000

    .line 562
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_867

    if-nez v13, :cond_867

    .line 564
    invoke-virtual {v11}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_79c

    .line 565
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 567
    :cond_79c
    const-string v3, "Per UID read timeouts:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Default timeouts flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Known digesters list flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Timeouts ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v4, v3

    move v5, v9

    :goto_7f1
    if-ge v5, v4, :cond_867

    aget-object v6, v3, v5

    .line 574
    const-string v7, "        ("

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uid="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "minTimeUs="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v6, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "minPendingTimeUs="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v6, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "maxPendingTimeUs="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v6, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7f1

    :cond_867
    if-nez v16, :cond_894

    const/high16 v3, 0x20000000

    .line 584
    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_894

    if-nez v13, :cond_894

    .line 586
    invoke-virtual {v11}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_87c

    .line 587
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 589
    :cond_87c
    const-string v3, "Snapshot statistics:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    .line 591
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result v6

    invoke-virtual {v11}, Lcom/android/server/pm/DumpState;->isBrief()Z

    move-result v7

    .line 590
    const-string v3, "   "

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JIZ)V

    :cond_894
    if-nez v16, :cond_8c7

    const/high16 v1, 0x40000000    # 2.0f

    .line 595
    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_8c7

    if-nez v13, :cond_8c7

    .line 597
    invoke-virtual {v11}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_8a9

    .line 598
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 600
    :cond_8a9
    const-string v1, "Protected broadcast actions:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    :goto_8ae
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v9, v1, :cond_8c7

    .line 602
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8ae

    :cond_8c7
    return-void
.end method

.method public final dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 696
    iget-object v0, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    .line 698
    iget-object v2, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public final dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V
    .registers 16

    .line 654
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 656
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const-wide/32 v4, 0x10000000

    const-wide v6, 0x10500000002L

    const-wide v8, 0x10900000001L

    if-ge v3, v1, :cond_34

    aget-object v10, p2, v3

    const-wide v11, 0x10b00000001L

    .line 658
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 659
    invoke-virtual {v0, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 663
    invoke-interface {p1, v10, v4, v5, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 661
    invoke-virtual {v0, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 667
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 670
    :cond_34
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object p2

    .line 671
    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 673
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-wide v10, 0x10b00000002L

    .line 675
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 676
    invoke-virtual {v0, v8, v9, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 679
    invoke-interface {p1, p2, v4, v5, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 677
    invoke-virtual {v0, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 683
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 686
    :cond_5a
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/server/pm/DumpHelper;->dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 688
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 689
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 690
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V

    .line 691
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final printHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 610
    const-string p0, "Package manager dump options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string p0, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const-string p0, "    --checkin: dump for a checkin"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    const-string p0, "    -f: print details of intent filters"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string p0, "    -h: print this help"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string p0, "    --proto: dump data to proto"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    const-string p0, "    --all-components: include all component names in package dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    const-string p0, "    --include-apex: includes the apex packages in package dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    const-string p0, "  cmd may be one of:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const-string p0, "    apex: list active APEXes and APEX session state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const-string p0, "    l[ibraries]: list known shared libraries"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    const-string p0, "    f[eatures]: list device features"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    const-string p0, "    k[eysets]: print known keysets"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const-string p0, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const-string p0, "    perm[issions]: dump permissions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    const-string p0, "    permission [name ...]: dump declaration and use of given permission"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const-string p0, "    pref[erred]: print preferred package settings"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    const-string p0, "    preferred-xml [--full]: print preferred package settings as xml"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    const-string p0, "    prov[iders]: dump content providers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string p0, "    p[ackages]: dump installed packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const-string p0, "    q[ueries]: dump app queryability calculations"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const-string p0, "    s[hared-users] [noperm]: dump shared user IDs"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    const-string p0, "    m[essages]: print collected runtime messages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    const-string p0, "    v[erifiers]: print package verifier info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const-string p0, "    d[omain-preferred-apps]: print domains preferred apps"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    const-string p0, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string p0, "    t[imeouts]: print read timeouts for known digesters"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const-string p0, "    version: print database version info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string p0, "    write: write current settings now"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string p0, "    installs: details about install sessions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const-string p0, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    const-string p0, "    dexopt: dump dexopt state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    const-string p0, "    compiler-stats: dump compiler statistics"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const-string p0, "    service-permissions: dump permissions required by services"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const-string p0, "    snapshot [--full|--brief]: dump snapshot statistics"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string p0, "    protected-broadcasts: print list of protected broadcast actions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string p0, "    known-packages: dump known packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string p0, "    changes: dump the packages that have been changed"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string p0, "    frozen: dump the frozen packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string p0, "    volumes: dump the loaded volumes"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const-string p0, "    <package.name>: info about given package"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
