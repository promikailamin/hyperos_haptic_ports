.class public Lcom/android/server/pm/verify/domain/DomainVerificationDebug;
.super Ljava/lang/Object;
.source "DomainVerificationDebug.java"


# static fields
.field public static final DEBUG_ALL:Z = false

.field public static final DEBUG_ANY:Z = false

.field public static final DEBUG_APPROVAL:Z = false

.field public static final DEBUG_BROADCASTS:Z = false

.field public static final DEBUG_PROXIES:Z = false


# instance fields
.field private final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;


# direct methods
.method constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V
    .registers 2
    .param p1, "collector"    # Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 62
    return-void
.end method


# virtual methods
.method public printOwners(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 22
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 108
    .local p3, "userIdToApprovalLevelToOwners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string/jumbo v5, "none"

    if-nez v2, :cond_2f

    .line 112
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 114
    return-void

    .line 117
    :cond_2f
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 118
    .local v2, "usersSize":I
    const/4 v6, 0x0

    .local v6, "userIndex":I
    :goto_34
    if-ge v6, v2, :cond_e4

    .line 119
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 120
    .local v7, "userId":I
    nop

    .line 121
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 123
    .local v8, "approvalLevelToOwners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-nez v9, :cond_49

    .line 124
    goto/16 :goto_de

    .line 127
    :cond_49
    const/4 v9, 0x0

    .line 128
    .local v9, "printedUserHeader":Z
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 129
    .local v10, "approvalsSize":I
    const/4 v11, 0x0

    .local v11, "approvalIndex":I
    :goto_4f
    if-ge v11, v10, :cond_d9

    .line 130
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 131
    .local v12, "approvalLevel":I
    const/4 v13, -0x1

    if-ge v12, v13, :cond_5a

    .line 132
    goto/16 :goto_d3

    .line 135
    :cond_5a
    if-nez v9, :cond_7a

    .line 136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "User "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 138
    const/4 v9, 0x1

    .line 141
    :cond_7a
    nop

    .line 142
    invoke-static {v12}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelToDebugString(I)Ljava/lang/String;

    move-result-object v13

    .line 143
    .local v13, "approvalString":Ljava/lang/String;
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 144
    .local v14, "owners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v1, "["

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, "]:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 147
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b5

    .line 148
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 150
    goto :goto_d3

    .line 153
    :cond_b5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .line 154
    .local v1, "ownersSize":I
    const/4 v15, 0x0

    .local v15, "ownersIndex":I
    :goto_ba
    if-ge v15, v1, :cond_ce

    .line 155
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v1

    .end local v1    # "ownersSize":I
    .local v17, "ownersSize":I
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 154
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    goto :goto_ba

    .end local v17    # "ownersSize":I
    .restart local v1    # "ownersSize":I
    :cond_ce
    move/from16 v17, v1

    .line 157
    .end local v1    # "ownersSize":I
    .end local v15    # "ownersIndex":I
    .restart local v17    # "ownersSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 129
    .end local v12    # "approvalLevel":I
    .end local v13    # "approvalString":Ljava/lang/String;
    .end local v14    # "owners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "ownersSize":I
    :goto_d3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p3

    goto/16 :goto_4f

    .line 160
    .end local v11    # "approvalIndex":I
    :cond_d9
    if-eqz v9, :cond_de

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 118
    .end local v7    # "userId":I
    .end local v8    # "approvalLevelToOwners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "printedUserHeader":Z
    .end local v10    # "approvalsSize":I
    :cond_de
    :goto_de
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p3

    goto/16 :goto_34

    .line 164
    .end local v6    # "userIndex":I
    :cond_e4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 165
    return-void
.end method

.method printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/Integer;Landroid/util/ArraySet;Z)V
    .registers 22
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "userId"    # Ljava/lang/Integer;
    .param p6, "wasHeaderPrinted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 230
    .local p5, "reusedSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p4, :cond_3

    .line 231
    return-void

    .line 234
    :cond_3
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    move-object/from16 v9, p3

    invoke-virtual {v0, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v10

    .line 235
    .local v10, "allWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    nop

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v11

    .line 237
    .local v11, "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_52

    .line 238
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 239
    .local v12, "size":I
    if-nez v12, :cond_31

    .line 240
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move-object v6, v10

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Z

    goto :goto_51

    .line 243
    :cond_31
    const/4 v0, 0x0

    move v13, v0

    .local v13, "index":I
    :goto_33
    if-ge v13, v12, :cond_51

    .line 244
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 245
    .local v14, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-virtual {v14}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v14

    move-object/from16 v5, p5

    move-object v6, v10

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Z

    .line 243
    .end local v14    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    .line 249
    .end local v12    # "size":I
    .end local v13    # "index":I
    :cond_51
    :goto_51
    goto :goto_6f

    .line 250
    :cond_52
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 251
    .local v12, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v12

    move-object/from16 v5, p5

    move-object v6, v10

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Z

    .line 254
    .end local v12    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_6f
    return-void
.end method

.method public printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;)V
    .registers 28
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .param p4, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 68
    .local p5, "stateMap":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 69
    .local v7, "reusedMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 71
    .local v14, "reusedSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_63

    .line 72
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v15

    .line 73
    .local v15, "size":I
    const/4 v3, 0x0

    move v13, v3

    .local v13, "index":I
    :goto_18
    if-ge v13, v15, :cond_60

    .line 74
    invoke-virtual {v2, v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 75
    .local v16, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, "pkgName":Ljava/lang/String;
    invoke-interface {v1, v12}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v17

    .line 77
    .local v17, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v17, :cond_59

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_35

    .line 78
    move v4, v13

    move v6, v15

    goto :goto_5c

    .line 81
    :cond_35
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Z)Z

    move-result v3

    .line 83
    .local v3, "wasHeaderPrinted":Z
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v16

    move-object v5, v12

    .end local v12    # "pkgName":Ljava/lang/String;
    .local v5, "pkgName":Ljava/lang/String;
    move-object v12, v4

    move v4, v13

    .end local v13    # "index":I
    .local v4, "index":I
    move-object/from16 v13, p3

    move v6, v15

    .end local v15    # "size":I
    .local v6, "size":I
    move v15, v3

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/Integer;Landroid/util/ArraySet;Z)V

    goto :goto_5c

    .line 77
    .end local v3    # "wasHeaderPrinted":Z
    .end local v4    # "index":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "size":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v13    # "index":I
    .restart local v15    # "size":I
    :cond_59
    move-object v5, v12

    move v4, v13

    move v6, v15

    .line 73
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v15    # "size":I
    .end local v16    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v17    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "index":I
    .restart local v6    # "size":I
    :goto_5c
    add-int/lit8 v13, v4, 0x1

    move v15, v6

    .end local v4    # "index":I
    .restart local v13    # "index":I
    goto :goto_18

    .end local v6    # "size":I
    .restart local v15    # "size":I
    :cond_60
    move v4, v13

    move v6, v15

    .line 86
    .end local v13    # "index":I
    .end local v15    # "size":I
    goto :goto_97

    .line 87
    :cond_63
    invoke-virtual {v2, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 88
    .local v3, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v3, :cond_9d

    .line 92
    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 93
    .local v4, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_98

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_98

    .line 97
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 98
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v3

    move-object v11, v5

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Z)Z

    .line 99
    const/16 v21, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, p3

    move-object/from16 v20, v14

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/Integer;Landroid/util/ArraySet;Z)V

    .line 101
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v4    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_97
    return-void

    .line 94
    .restart local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v4    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_98
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v5

    throw v5

    .line 89
    .end local v4    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_9d
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v4

    throw v4
.end method

.method printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Z
    .registers 15
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p3, "userId"    # I
    .param p4, "userState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .param p7, "wasHeaderPrinted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "I",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 261
    .local p5, "reusedSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "allWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p5}, Landroid/util/ArraySet;->clear()V

    .line 262
    invoke-virtual {p5, p6}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 263
    if-eqz p4, :cond_f

    .line 264
    invoke-virtual {p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 267
    :cond_f
    const/4 v0, 0x0

    .line 269
    .local v0, "printedHeader":Z
    if-nez p4, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v1

    .line 270
    .local v1, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_18
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v2

    .line 271
    .local v2, "enabledSize":I
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 272
    .local v3, "disabledSize":I
    if-gtz v2, :cond_24

    if-lez v3, :cond_c7

    .line 273
    :cond_24
    const-string v4, ":"

    if-nez p7, :cond_4f

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x1

    .line 278
    :cond_4f
    if-eqz p4, :cond_5a

    invoke-virtual {p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_5a

    :cond_58
    const/4 v5, 0x0

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 v5, 0x1

    .line 280
    .local v5, "isLinkHandlingAllowed":Z
    :goto_5b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 281
    const-string v6, "User "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 282
    const/4 v6, -0x1

    if-ne p3, v6, :cond_69

    const-string v6, "all"

    goto :goto_6d

    :cond_69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_6d
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 285
    const-string v4, "Verification link handling allowed: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 287
    const-string v4, "Selection state:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 290
    if-lez v2, :cond_a2

    .line 291
    const-string v4, "Enabled:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 293
    const/4 v4, 0x0

    .local v4, "enabledIndex":I
    :goto_91
    if-ge v4, v2, :cond_9f

    .line 295
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 297
    .end local v4    # "enabledIndex":I
    :cond_9f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 300
    :cond_a2
    if-lez v3, :cond_be

    .line 301
    const-string v4, "Disabled:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 303
    const/4 v4, 0x0

    .local v4, "disabledIndex":I
    :goto_ad
    if-ge v4, v3, :cond_bb

    .line 304
    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 306
    .end local v4    # "disabledIndex":I
    :cond_bb
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 309
    :cond_be
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 310
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 311
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 314
    .end local v5    # "isLinkHandlingAllowed":Z
    :cond_c7
    return v0
.end method

.method printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Z)Z
    .registers 15
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "wasHeaderPrinted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .line 170
    .local p4, "reusedMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->clear()V

    .line 171
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v0

    .line 174
    .local v0, "declaredDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 175
    .local v1, "declaredSize":I
    const/4 v2, 0x0

    .local v2, "declaredIndex":I
    :goto_15
    if-ge v2, v1, :cond_28

    .line 176
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 177
    .local v3, "domain":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v3    # "domain":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 180
    .end local v2    # "declaredIndex":I
    :cond_28
    const/4 v2, 0x0

    .line 182
    .local v2, "printedHeader":Z
    invoke-virtual {p4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_102

    .line 183
    if-nez p5, :cond_9e

    .line 184
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    .line 185
    .local v3, "signatures":[Landroid/content/pm/Signature;
    const-string v4, ":"

    if-nez v3, :cond_3f

    const/4 v5, 0x0

    goto :goto_4f

    .line 187
    :cond_3f
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 186
    invoke-static {v5, v4}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "signaturesDigest":Ljava/lang/String;
    :goto_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signatures: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 194
    const/4 v2, 0x1

    .line 197
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    .end local v5    # "signaturesDigest":Ljava/lang/String;
    :cond_9e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 198
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectInvalidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v3

    .line 199
    .local v3, "invalidDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_cb

    .line 200
    const-string v4, "Invalid autoVerify domains:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 202
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 203
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_ba
    if-ge v5, v4, :cond_c8

    .line 204
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_ba

    .line 206
    .end local v5    # "index":I
    :cond_c8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 209
    .end local v4    # "size":I
    :cond_cb
    const-string v4, "Domain verification state:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 211
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 212
    .local v4, "stateSize":I
    const/4 v5, 0x0

    .local v5, "stateIndex":I
    :goto_d8
    if-ge v5, v4, :cond_fc

    .line 213
    invoke-virtual {p4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 214
    .local v6, "domain":Ljava/lang/String;
    invoke-virtual {p4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 215
    .local v7, "state":Ljava/lang/Integer;
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string v8, ": "

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/content/pm/verify/domain/DomainVerificationState;->stateToDebugString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .end local v6    # "domain":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/Integer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_d8

    .line 219
    .end local v5    # "stateIndex":I
    :cond_fc
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 220
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 223
    .end local v3    # "invalidDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "stateSize":I
    :cond_102
    return v2
.end method
