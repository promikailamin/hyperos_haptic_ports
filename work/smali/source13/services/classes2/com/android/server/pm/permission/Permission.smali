.class public final Lcom/android/server/pm/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/Permission$ProtectionLevel;,
        Lcom/android/server/pm/permission/Permission$PermissionType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Permission"

.field public static final TYPE_CONFIG:I = 0x1

.field public static final TYPE_DYNAMIC:I = 0x2

.field public static final TYPE_MANIFEST:I


# instance fields
.field private mDefinitionChanged:Z

.field private mGids:[I

.field private mGidsPerUser:Z

.field private mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private mReconciled:Z

.field private final mType:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .registers 4
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "type"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 105
    iput p2, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 95
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 96
    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x2

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 100
    iput p3, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 101
    return-void
.end method

.method private static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .registers 5
    .param p0, "pi1"    # Landroid/content/pm/PermissionInfo;
    .param p1, "pi2"    # Landroid/content/pm/PermissionInfo;

    .line 576
    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 577
    :cond_8
    iget v0, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_f

    return v2

    .line 578
    :cond_f
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_16

    return v2

    .line 579
    :cond_16
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    return v2

    .line 580
    :cond_21
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    return v2

    .line 582
    :cond_2c
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    return v2

    .line 588
    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public static createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;
    .registers 21
    .param p0, "permission"    # Lcom/android/server/pm/permission/Permission;
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "isOverridingSystemPermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/content/pm/PermissionInfo;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;Z)",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    .line 415
    .local p3, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 416
    .local v2, "ownerChanged":Z
    const/high16 v3, 0x40000000    # 2.0f

    const-string v4, "Permission"

    const/4 v5, 0x1

    if-eqz v0, :cond_75

    iget-object v6, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_75

    .line 418
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 419
    iget v6, v0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v6, v5, :cond_38

    iget-boolean v6, v0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v6, :cond_38

    .line 421
    iget v6, v1, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr v6, v3

    iput v6, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 422
    iput-object v1, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 423
    iput-boolean v5, v0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 424
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    iput v6, v0, Lcom/android/server/pm/permission/Permission;->mUid:I

    move-object/from16 v7, p2

    goto :goto_77

    .line 425
    :cond_38
    if-nez p4, :cond_6f

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New decl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " of permission  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is system; overriding "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, 0x1

    .line 430
    const/4 v0, 0x0

    .end local p0    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    goto :goto_77

    .line 425
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local p0    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_6f
    move-object/from16 v7, p2

    goto :goto_77

    .line 418
    :cond_72
    move-object/from16 v7, p2

    goto :goto_77

    .line 416
    :cond_75
    move-object/from16 v7, p2

    .line 434
    .end local p0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :goto_77
    const/4 v6, 0x0

    if-eqz v0, :cond_86

    iget v8, v0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-eq v8, v5, :cond_86

    .line 435
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v8

    if-nez v8, :cond_86

    move v8, v5

    goto :goto_87

    :cond_86
    move v8, v6

    .line 436
    .local v8, "wasNonInternal":Z
    :goto_87
    if-eqz v0, :cond_95

    iget v9, v0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-eq v9, v5, :cond_95

    .line 437
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v9

    if-nez v9, :cond_95

    move v9, v5

    goto :goto_96

    :cond_95
    move v9, v6

    .line 438
    .local v9, "wasNonRuntime":Z
    :goto_96
    if-nez v0, :cond_a2

    .line 439
    new-instance v10, Lcom/android/server/pm/permission/Permission;

    iget-object v11, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v6}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v10

    .line 442
    :cond_a2
    const/4 v6, 0x0

    .line 443
    .local v6, "r":Ljava/lang/StringBuilder;
    iget-boolean v10, v0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v10, :cond_16d

    .line 444
    iget-object v10, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v13, " from package "

    const-string v14, "Permission "

    if-eqz v10, :cond_f0

    iget-object v10, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 445
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    goto :goto_f0

    .line 468
    :cond_be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " ignored: original from "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, p3

    goto/16 :goto_18d

    .line 446
    :cond_f0
    :goto_f0
    iget-object v10, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v15, p3

    invoke-static {v15, v10}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    .line 447
    .local v10, "tree":Lcom/android/server/pm/permission/Permission;
    if-eqz v10, :cond_144

    iget-object v12, v10, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 448
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_107

    goto :goto_144

    .line 462
    :cond_107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " ignored: base tree "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v10, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " is from package "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v10, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16c

    .line 449
    :cond_144
    :goto_144
    iget v11, v1, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr v3, v11

    iput v3, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 450
    iput-object v1, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 451
    iput-boolean v5, v0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 452
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    iput v3, v0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 453
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_16c

    .line 454
    if-nez v6, :cond_162

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v3

    goto :goto_167

    .line 457
    :cond_162
    const/16 v3, 0x20

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    :goto_167
    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .end local v10    # "tree":Lcom/android/server/pm/permission/Permission;
    :cond_16c
    :goto_16c
    goto :goto_18d

    .line 472
    :cond_16d
    move-object/from16 v15, p3

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_18d

    .line 473
    if-nez v6, :cond_17e

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v3

    goto :goto_183

    .line 476
    :cond_17e
    const/16 v3, 0x20

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    :goto_183
    const-string v3, "DUP:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_18d
    :goto_18d
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v3

    if-eqz v3, :cond_197

    if-nez v2, :cond_1a1

    if-nez v8, :cond_1a1

    .line 482
    :cond_197
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_1a3

    if-nez v2, :cond_1a1

    if-eqz v9, :cond_1a3

    .line 485
    :cond_1a1
    iput-boolean v5, v0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    .line 487
    :cond_1a3
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_1bf

    if-eqz v6, :cond_1bf

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1bf
    return-object v0
.end method

.method public static enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;
    .registers 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    .line 496
    .local p0, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    if-eqz p1, :cond_13

    .line 497
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 499
    .local v0, "permissionTree":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_13

    .line 500
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v1

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_13

    .line 501
    return-object v0

    .line 505
    .end local v0    # "permissionTree":Lcom/android/server/pm/permission/Permission;
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to add to or remove from the permission tree"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .registers 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    .line 512
    .local p0, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/Permission;

    .line 513
    .local v1, "permissionTree":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "permissionTreeName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_31

    .line 516
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_31

    .line 517
    return-object v1

    .line 519
    .end local v1    # "permissionTree":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "permissionTreeName":Ljava/lang/String;
    :cond_31
    goto :goto_4

    .line 520
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .registers 6
    .param p0, "permission"    # Lcom/android/server/pm/permission/Permission;
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;

    .line 395
    const/4 v0, 0x0

    if-eqz p0, :cond_25

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_25

    .line 399
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v1, :cond_15

    .line 400
    return v0

    .line 402
    :cond_15
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 404
    .local v1, "currentPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_20

    .line 405
    return v0

    .line 407
    :cond_20
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    return v0

    .line 397
    .end local v1    # "currentPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_25
    :goto_25
    return v0
.end method


# virtual methods
.method public addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z
    .registers 8
    .param p1, "protectionLevel"    # I
    .param p2, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p3, "permissionTree"    # Lcom/android/server/pm/permission/Permission;

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v2, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 366
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 368
    invoke-static {v0, p2}, Lcom/android/server/pm/permission/Permission;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v0, v1

    .line 369
    .local v0, "changed":Z
    :goto_2b
    new-instance v2, Landroid/content/pm/PermissionInfo;

    invoke-direct {v2, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 370
    iget-object v3, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 371
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput p1, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 372
    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 373
    iget v1, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 374
    return v0
.end method

.method public areGidsPerUser()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return v0
.end method

.method public calculateFootprint(Lcom/android/server/pm/permission/Permission;)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/permission/Permission;

    .line 189
    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v1, p1, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne v0, v1, :cond_16

    .line 190
    iget-object v0, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 191
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    return v0

    .line 193
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public computeGids(I)[I
    .registers 6
    .param p1, "userId"    # I

    .line 168
    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    if-eqz v0, :cond_1b

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 170
    .local v0, "userGids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 171
    aget v2, v2, v1

    .line 172
    .local v2, "gid":I
    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    aput v3, v0, v1

    .line 170
    .end local v2    # "gid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 174
    .end local v1    # "i":I
    :cond_1a
    return-object v0

    .line 176
    .end local v0    # "userGids":[I
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v1, v0

    if-eqz v1, :cond_26

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :cond_26
    return-object v0
.end method

.method public generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;
    .registers 3
    .param p1, "flags"    # I

    .line 543
    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .registers 6
    .param p1, "flags"    # I
    .param p2, "targetSdkVersion"    # I

    .line 549
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_15

    .line 550
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 551
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2c

    .line 552
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_2c

    .line 555
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_15
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 556
    .restart local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 557
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 560
    :cond_2c
    :goto_2c
    const/16 v1, 0x1a

    if-lt p2, v1, :cond_37

    .line 561
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    goto :goto_49

    .line 563
    :cond_37
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    .line 565
    .local v1, "protection":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_47

    .line 567
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v2, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    goto :goto_49

    .line 569
    :cond_47
    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 572
    .end local v1    # "protection":I
    :goto_49
    return-object v0
.end method

.method public getBackgroundPermission()Ljava/lang/String;
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    .line 530
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getKnownCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    return-object v0
.end method

.method public getProtection()I
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getProtectionFlags()I
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v1, 0xfff0

    and-int/2addr v0, v1

    return v0
.end method

.method public getProtectionLevel()I
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return v0
.end method

.method public getRawGids()[I
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    return v0
.end method

.method public hasGids()Z
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v0, v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isAppOp()Z
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isAppPredictor()Z
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isCompanion()Z
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isConfigurator()Z
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isDefinitionChanged()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    return v0
.end method

.method public isDevelopment()Z
    .registers 2

    .line 257
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isDynamic()Z
    .registers 3

    .line 205
    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isHardOrSoftRestricted()Z
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isHardRestricted()Z
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isImmutablyRestricted()Z
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isIncidentReportApprover()Z
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isInstalled()Z
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isInstaller()Z
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInstant()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInternal()Z
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isKnownSigner()Z
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isNormal()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isOem()Z
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 5
    .param p1, "parsedPermission"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 198
    return v1

    .line 200
    :cond_6
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 201
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 200
    :goto_23
    return v1
.end method

.method public isPre23()Z
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPreInstalled()Z
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isRecents()Z
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isRemoved()Z
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isRetailDemo()Z
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isRole()Z
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isRuntime()Z
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isRuntimeOnly()Z
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSetup()Z
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSignature()Z
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isSoftRestricted()Z
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSystemTextClassifier()Z
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isVendorPrivileged()Z
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isVerifier()Z
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setDefinitionChanged(Z)V
    .registers 2
    .param p1, "definitionChanged"    # Z

    .line 185
    iput-boolean p1, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    .line 186
    return-void
.end method

.method public setGids([IZ)V
    .registers 3
    .param p1, "gids"    # [I
    .param p2, "gidsPerUser"    # Z

    .line 162
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 163
    iput-boolean p2, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 164
    return-void
.end method

.method public setPermissionInfo(Landroid/content/pm/PermissionInfo;)V
    .registers 4
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 114
    if-eqz p1, :cond_5

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_1e

    .line 117
    :cond_5
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 118
    .local v0, "newPermissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 121
    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 123
    .end local v0    # "newPermissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_1e
    if-eqz p1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 124
    return-void
.end method

.method public transfer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "oldPackageName"    # Ljava/lang/String;
    .param p2, "newPackageName"    # Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 347
    return-void

    .line 349
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 350
    .local v0, "newPermissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 351
    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 353
    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 354
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 355
    iput v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 356
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 357
    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 358
    return-void
.end method

.method public updateDynamicPermission(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 378
    .local p1, "permissionTrees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v0, :cond_3a

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dynamic permission: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_3a
    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 384
    .local v0, "tree":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_58

    .line 385
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 387
    iget v1, v0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 390
    .end local v0    # "tree":Lcom/android/server/pm/permission/Permission;
    :cond_58
    return-void
.end method
