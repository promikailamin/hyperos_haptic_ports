.class public Lcom/android/server/pm/pkg/PackageStateUtils;
.super Ljava/lang/Object;
.source "PackageStateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEarliestFirstInstallTime(Landroid/util/SparseArray;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            ">;)J"
        }
    .end annotation

    .line 94
    .local p0, "userStatesInternal":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Lcom/android/server/pm/pkg/PackageUserStateInternal;>;"
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_39

    .line 97
    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    .line 98
    .local v2, "earliestFirstInstallTime":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 99
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v5

    .line 100
    .local v5, "firstInstallTime":J
    cmp-long v7, v5, v0

    if-eqz v7, :cond_2a

    cmp-long v7, v5, v2

    if-gez v7, :cond_2a

    .line 101
    move-wide v2, v5

    .line 98
    .end local v5    # "firstInstallTime":J
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 104
    .end local v4    # "i":I
    :cond_2d
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_37

    goto :goto_38

    :cond_37
    move-wide v0, v2

    :goto_38
    return-wide v0

    .line 95
    .end local v2    # "earliestFirstInstallTime":J
    :cond_39
    :goto_39
    return-wide v0
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z
    .registers 7
    .param p0, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 59
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 61
    :cond_4
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 62
    .local v0, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v1

    return v1
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z
    .registers 22
    .param p0, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p1, "component"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p4

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 68
    return v2

    .line 71
    :cond_8
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 72
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v3, :cond_f

    .line 73
    return v2

    .line 75
    :cond_f
    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    .line 78
    .local v10, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v4

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v5

    move-wide/from16 v8, p2

    invoke-virtual {v4, v8, v9, v5, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceMatch(JZI)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 79
    invoke-interface {v0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 80
    .local v2, "systemUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v12

    .line 81
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v13

    .line 80
    move-object v11, v2

    move-object/from16 v14, p1

    move-wide/from16 v15, p2

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v4

    return v4

    .line 84
    .end local v2    # "systemUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_39
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v5

    .line 85
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v6

    .line 84
    move-object v4, v10

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v2

    return v2
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z
    .registers 7
    .param p0, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p1, "flags"    # J

    .line 32
    const-wide/32 v0, 0x100000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    return v0

    .line 35
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I
    .registers 9
    .param p0, "pkgState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "num":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_17

    aget v4, p1, v3

    .line 42
    .local v4, "user":I
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v5

    if-ne v5, p2, :cond_14

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 41
    .end local v4    # "user":I
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 46
    :cond_17
    new-array v1, v0, [I

    .line 47
    .local v1, "res":[I
    const/4 v0, 0x0

    .line 48
    array-length v3, p1

    :goto_1b
    if-ge v2, v3, :cond_30

    aget v4, p1, v2

    .line 49
    .restart local v4    # "user":I
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v5

    if-ne v5, p2, :cond_2d

    .line 50
    aput v4, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 48
    .end local v4    # "user":I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 54
    :cond_30
    return-object v1
.end method
