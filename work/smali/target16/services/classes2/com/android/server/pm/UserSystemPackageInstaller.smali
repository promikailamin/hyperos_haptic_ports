.class public Lcom/android/server/pm/UserSystemPackageInstaller;
.super Ljava/lang/Object;
.source "UserSystemPackageInstaller.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UserSystemPackageInstaller"


# instance fields
.field public final mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

.field public final mUm:Lcom/android/server/pm/UserManagerService;

.field public final mUserTypes:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8ii9Gh9XC-2s-XU40Z0_ZIZOK_A(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$getInstallablePackagesForUserType$3(Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-D84Af-kfzbidA4l5E-hhp9V9g(Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_2
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_6e

    .line 241
    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 242
    invoke-virtual {p0, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    move v4, v0

    :goto_11
    if-ge v4, v3, :cond_6b

    .line 244
    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 245
    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 246
    invoke-virtual {p1, v5}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v7

    .line 247
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v7

    .line 248
    invoke-interface {v7, v6}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v7

    xor-int/lit8 v8, v6, 0x1

    .line 249
    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setUninstallReason(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CommitDebug"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_51

    const-string v6, "Installed "

    goto :goto_53

    :cond_51
    const-string v6, "Uninstalled "

    :goto_53
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6e
    return-void
.end method

.method public static synthetic $r8$lambda$YfsufJLkNnUTWtjA9t6zbnQlq0k(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 5

    .line 386
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 387
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p3

    if-eqz p3, :cond_34

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p3

    if-eqz p3, :cond_13

    goto :goto_34

    .line 388
    :cond_13
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p3

    .line 389
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    .line 390
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_34

    .line 391
    const-string p0, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_34
    return-void
.end method

.method public static synthetic $r8$lambda$pAB7zLOvxDZ_nCs7zGPAf5fda00(Ljava/util/Set;IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 13

    .line 225
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_48

    :cond_d
    if-eqz p0, :cond_19

    .line 229
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 230
    :cond_19
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    :goto_24
    move v1, p0

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_24

    .line 231
    :goto_28
    invoke-interface {p6, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-eq p0, v1, :cond_48

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v0, p6

    .line 232
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 234
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p5, v2, p0, p1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    :goto_48
    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V
    .registers 5

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 168
    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 169
    array-length p1, p1

    const/16 v0, 0x40

    if-gt p1, v0, :cond_1b

    .line 177
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->determineAllowlistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    return-void

    .line 170
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device contains "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user types. However, UserSystemPackageInstaller does not work if there are more than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user types."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 185
    iput-object p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;
    .registers 4

    .line 726
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 727
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 728
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 730
    :cond_18
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isEnforceMode(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isIgnoreOtaMode(I)Z
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isImplicitAllowlistMode(I)Z
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isImplicitAllowlistSystemMode(I)Z
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isLogMode(I)Z
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 4

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_14

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    .line 498
    const-string v0, "USER_TYPE_PACKAGE_ALLOWLIST_MODE_"

    int-to-long v1, p0

    const-class p0, Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-static {p0, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 494
    :cond_11
    const-string p0, "DEVICE_DEFAULT"

    return-object p0

    .line 496
    :cond_14
    const-string p0, "NONE"

    return-object p0
.end method

.method public static shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    .line 281
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result p0

    if-ne p0, v1, :cond_f

    return v1

    :cond_f
    return v0

    :cond_10
    if-nez p3, :cond_20

    if-eqz p4, :cond_1f

    .line 286
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_20

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public static shouldInstallPackage(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 561
    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 562
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_f
    if-eqz p3, :cond_17

    .line 563
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 564
    :cond_17
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 565
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldUseOverlayTargetName(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1

    .line 446
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result p0

    return p0
.end method

.method public static showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V
    .registers 6

    .line 808
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_35

    .line 811
    const-string p1, "No "

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_11
    if-eqz p1, :cond_21

    .line 816
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_21
    const/4 p3, 0x0

    :goto_22
    if-ge p3, v0, :cond_30

    .line 820
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    :cond_30
    if-eqz p1, :cond_35

    .line 823
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_35
    return-void
.end method


# virtual methods
.method public final checkAllowlistedSystemPackages(I)V
    .registers 10

    .line 295
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_e6

    .line 298
    :cond_e
    sget-object v0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Checking that all system packages are allowlisted."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesAllowlistWarnings()Ljava/util/List;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    .line 303
    const-string v4, ") has "

    const-string v5, "checkAllowlistedSystemPackages(mode="

    if-nez v2, :cond_40

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has no warnings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 307
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " warnings:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_62
    if-ge v0, v2, :cond_72

    .line 310
    sget-object v6, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 315
    :cond_72
    :goto_72
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitAllowlistMode(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_e6

    .line 319
    :cond_7f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesAllowlistErrors(I)Ljava/util/List;

    move-result-object p0

    .line 320
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a7

    .line 323
    sget-object p0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") has no errors"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 327
    :cond_a7
    sget-object v1, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " errors:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitAllowlistMode(I)Z

    move-result p1

    :goto_ce
    if-ge v3, v0, :cond_e6

    .line 332
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez p1, :cond_de

    .line 334
    sget-object v2, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 336
    :cond_de
    sget-object v2, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_ce

    :cond_e6
    :goto_e6
    return-void
.end method

.method public determineAllowlistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getBaseTypeBitSets()Ljava/util/Map;

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeAllowlist()Landroid/util/ArrayMap;

    move-result-object v1

    .line 625
    new-instance v2, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    .line 627
    :goto_15
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_3f

    .line 628
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-virtual {p0, v8, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_3c

    .line 631
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 636
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeDenylist()Landroid/util/ArrayMap;

    move-result-object p1

    .line 637
    :goto_43
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v3, v1, :cond_81

    .line 638
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-virtual {p0, v4, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v4

    .line 640
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_73

    .line 642
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    not-long v4, v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_73
    cmp-long v4, v4, v6

    if-eqz v4, :cond_7e

    .line 645
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_81
    const-wide/16 p0, -0x1

    .line 649
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "android"

    invoke-virtual {v2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 14

    .line 735
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAllowlistMode()I

    move-result v0

    .line 736
    const-string v1, "Allowlisted packages per user type"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 739
    const-string v1, "Mode: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 741
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1f

    const-string v1, " (enforced)"

    goto :goto_20

    :cond_1f
    move-object v1, v2

    :goto_20
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 742
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, " (logged)"

    goto :goto_2d

    :cond_2c
    move-object v1, v2

    :goto_2d
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 743
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitAllowlistMode(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, " (implicit)"

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 744
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v2, " (ignore OTAs)"

    :cond_45
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 746
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 748
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 749
    const-string v1, "Legend"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 751
    :goto_5b
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7e

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 754
    :cond_7e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 756
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 757
    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_98

    .line 759
    const-string p0, "No packages"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 763
    :cond_98
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " packages:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    :goto_a4
    const/4 v4, 0x1

    if-ge v3, v2, :cond_e4

    .line 766
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 767
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 768
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move v7, v1

    .line 769
    :goto_c4
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_de

    shl-int v8, v4, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_db

    .line 771
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v8, " "

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_db
    add-int/lit8 v7, v7, 0x1

    goto :goto_c4

    .line 774
    :cond_de
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 776
    :cond_e4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 778
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 779
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageAllowlistProblems(Landroid/util/IndentingPrintWriter;IZZ)V

    .line 780
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpPackageAllowlistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    .registers 8

    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_9

    .line 787
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAllowlistMode()I

    move-result p2

    goto :goto_10

    :cond_9
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 789
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultAllowlistMode()I

    move-result p2

    :cond_10
    :goto_10
    if-eqz p4, :cond_14

    and-int/lit8 p2, p2, -0x3

    .line 795
    :cond_14
    sget-object v0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpPackageAllowlistProblems(): using mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesAllowlistErrors(I)Ljava/util/List;

    move-result-object p2

    .line 798
    const-string v0, "errors"

    invoke-static {p1, p3, p2, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    if-eqz p4, :cond_3a

    return-void

    .line 802
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesAllowlistWarnings()Ljava/util/List;

    move-result-object p0

    .line 803
    const-string/jumbo p2, "warnings"

    invoke-static {p1, p3, p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final getAllowlistMode()I
    .registers 3

    .line 476
    const-string/jumbo v0, "persist.debug.user.package_whitelist_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_b

    return v0

    .line 481
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultAllowlistMode()I

    move-result p0

    return p0
.end method

.method public getAllowlistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 10
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

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v0

    .line 575
    new-instance p1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v2, 0x0

    .line 576
    :goto_10
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 577
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 578
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_36

    .line 580
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_39
    return-object p1
.end method

.method public final getAllowlistedSystemPackages()Ljava/util/Set;
    .registers 1

    .line 595
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getBaseTypeBitSets()Ljava/util/Map;
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v6, v2

    move-wide v2, v4

    .line 675
    :goto_6
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_3d

    .line 676
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfFull(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1a

    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v0, v9

    .line 679
    :cond_1a
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v2, v9

    .line 682
    :cond_2a
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    shl-int v7, v8, v6

    int-to-long v7, v7

    or-long/2addr v4, v7

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 687
    :cond_3d
    new-instance p0, Landroid/util/ArrayMap;

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 688
    const-string v6, "FULL"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v0, "SYSTEM"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v0, "PROFILE"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getDeviceDefaultAllowlistMode()I
    .registers 2

    .line 486
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0176

    .line 487
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final getInstallablePackagesForUserId(I)Ljava/util/Set;
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 6

    .line 519
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAllowlistMode()I

    move-result v0

    .line 520
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 523
    :cond_c
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitAllowlistMode(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 524
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitAllowlistSystemMode(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 525
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAllowlistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 527
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 528
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 529
    new-instance v3, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public final getPackagesAllowlistErrors(I)Ljava/util/List;
    .registers 4

    .line 373
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitAllowlistMode(I)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_c
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result p1

    if-nez p1, :cond_15

    .line 374
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 377
    :cond_15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAllowlistedSystemPackages()Ljava/util/Set;

    move-result-object p0

    .line 379
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 385
    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final getPackagesAllowlistWarnings()Ljava/util/List;
    .registers 6

    .line 346
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAllowlistedSystemPackages()Ljava/util/Set;

    move-result-object p0

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 354
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 355
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_29

    const/4 v4, 0x0

    goto :goto_2d

    .line 356
    :cond_29
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    :goto_2d
    if-nez v4, :cond_3d

    .line 358
    const-string v3, "%s is allowlisted but not present."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 359
    :cond_3d
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-nez v3, :cond_51

    .line 360
    const-string v3, "%s is allowlisted and present but not a system package."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 361
    :cond_51
    invoke-static {v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 362
    const-string v3, "%s is allowlisted unnecessarily since it\'s a static overlay."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_65
    return-object v0
.end method

.method public final getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J
    .registers 11

    .line 706
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 708
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_21

    .line 710
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    or-long/2addr v2, v4

    goto :goto_7

    .line 714
    :cond_21
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2b

    or-long/2addr v2, v5

    goto :goto_7

    .line 719
    :cond_2b
    sget-object v5, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemConfig contained an invalid user type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_42
    return-wide v2
.end method

.method public getUserTypeMask(Ljava/lang/String;)J
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_d

    const/4 p1, 0x1

    shl-int p0, p1, p0

    int-to-long p0, p0

    return-wide p0

    :cond_d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public installAllowlistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .registers 15

    .line 202
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAllowlistMode()I

    move-result v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->checkAllowlistedSystemPackages(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_13

    .line 204
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result p2

    if-nez p2, :cond_13

    move v7, v1

    goto :goto_14

    :cond_13
    move v7, v2

    :goto_14
    if-nez v7, :cond_19

    if-nez p1, :cond_19

    return v2

    :cond_19
    if-eqz p1, :cond_22

    .line 208
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result p2

    if-nez p2, :cond_22

    return v2

    .line 213
    :cond_22
    sget-object p2, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reviewing allowlisted packages due to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v3, ""

    if-eqz p1, :cond_35

    const-string v4, "[firstBoot]"

    goto :goto_36

    :cond_35
    move-object v4, v3

    :goto_36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_3d

    const-string v3, "[upgrade]"

    :cond_3d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 218
    new-instance v9, Landroid/util/SparseArrayMap;

    invoke-direct {v9}, Landroid/util/SparseArrayMap;-><init>()V

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v10, v0

    :goto_5b
    if-ge v2, v10, :cond_70

    aget v5, v0, v2

    .line 222
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserId(I)Ljava/util/Set;

    move-result-object v4

    .line 224
    new-instance v3, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;

    move v6, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;)V

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 239
    :cond_70
    new-instance p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;

    invoke-direct {p0, v9}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;-><init>(Landroid/util/SparseArrayMap;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/content/pm/PackageManagerInternal;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return v1
.end method

.method public final synthetic lambda$getInstallablePackagesForUserType$3(Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 6

    .line 530
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 531
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p4

    if-nez p4, :cond_d

    goto :goto_1c

    .line 534
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mAllowlistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldInstallPackage(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 537
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method
