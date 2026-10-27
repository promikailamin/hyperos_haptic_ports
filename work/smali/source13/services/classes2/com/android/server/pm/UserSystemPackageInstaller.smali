.class Lcom/android/server/pm/UserSystemPackageInstaller;
.super Ljava/lang/Object;
.source "UserSystemPackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserSystemPackageInstaller$PackageWhitelistMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final PACKAGE_WHITELIST_MODE_PROP:Ljava/lang/String; = "persist.debug.user.package_whitelist_mode"

.field private static final TAG:Ljava/lang/String;

.field static final USER_TYPE_PACKAGE_WHITELIST_MODE_DEVICE_DEFAULT:I = -0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_DISABLE:I = 0x0

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_ENFORCE:I = 0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IGNORE_OTA:I = 0x10

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST:I = 0x4

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST_SYSTEM:I = 0x8

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_LOG:I = 0x2

.field static final USER_TYPE_PACKAGE_WHITELIST_MODE_NONE:I = -0x3e8


# instance fields
.field private final mUm:Lcom/android/server/pm/UserManagerService;

.field private final mUserTypes:[Ljava/lang/String;

.field private final mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    const-class v0, Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V
    .registers 7
    .param p1, "um"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p2, "userTypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 168
    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 169
    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_1c

    .line 176
    nop

    .line 177
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 178
    return-void

    .line 170
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user types. However, UserSystemPackageInstaller does not work if there are more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user types."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;[Ljava/lang/String;)V
    .registers 4
    .param p1, "ums"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "sortedUserTypes"    # [Ljava/lang/String;
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
    .local p2, "whitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 185
    iput-object p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 187
    return-void
.end method

.method private checkWhitelistedSystemPackages(I)V
    .registers 10
    .param p1, "mode"    # I

    .line 312
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 313
    return-void

    .line 315
    :cond_d
    sget-object v0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Checking that all system packages are whitelisted."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object v1

    .line 319
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 320
    .local v2, "numberWarnings":I
    const-string v3, ") has "

    const-string v4, "checkWhitelistedSystemPackages(mode="

    if-nez v2, :cond_41

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") has no warnings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 324
    :cond_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " warnings:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_68
    if-ge v0, v2, :cond_78

    .line 327
    sget-object v5, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 332
    .end local v0    # "i":I
    :cond_78
    :goto_78
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_85

    .line 333
    return-void

    .line 336
    :cond_85
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 339
    .local v5, "numberErrors":I
    if-nez v5, :cond_b0

    .line 340
    sget-object v3, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") has no errors"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 344
    :cond_b0
    sget-object v6, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errors:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 348
    .local v3, "doWtf":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_df
    if-ge v4, v5, :cond_f7

    .line 349
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 350
    .local v6, "msg":Ljava/lang/String;
    if-eqz v3, :cond_ef

    .line 351
    sget-object v7, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 353
    :cond_ef
    sget-object v7, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v6    # "msg":Ljava/lang/String;
    :goto_f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 356
    .end local v4    # "i":I
    :cond_f7
    return-void
.end method

.method private static getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 744
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 745
    .local v0, "userTypeList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 746
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 748
    .end local v1    # "i":I
    :cond_18
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 749
    return-object v0
.end method

.method private getBaseTypeBitSets()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 690
    const-wide/16 v0, 0x0

    .line 691
    .local v0, "typesBitSetFull":J
    const-wide/16 v2, 0x0

    .line 692
    .local v2, "typesBitSetSystem":J
    const-wide/16 v4, 0x0

    .line 693
    .local v4, "typesBitSetProfile":J
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_7
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_3e

    .line 694
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfFull(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1b

    .line 695
    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v0, v9

    .line 697
    :cond_1b
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 698
    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v2, v9

    .line 700
    :cond_2b
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 701
    shl-int v7, v8, v6

    int-to-long v7, v7

    or-long/2addr v4, v7

    .line 693
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 705
    .end local v6    # "idx":I
    :cond_3e
    new-instance v6, Landroid/util/ArrayMap;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 706
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "FULL"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "SYSTEM"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "PROFILE"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-object v6
.end method

.method private getDeviceDefaultWhitelistMode()I
    .registers 3

    .line 500
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 501
    const v1, 0x10e00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 500
    return v0
.end method

.method private getInstallablePackagesForUserId(I)Ljava/util/Set;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getPackagesWhitelistErrors(I)Ljava/util/List;
    .registers 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 393
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object v1

    .line 395
    .local v1, "allWhitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 398
    .local v2, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    .line 400
    .local v3, "logMessageFmt":Ljava/lang/String;
    new-instance v4, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 409
    return-object v0
.end method

.method private getPackagesWhitelistWarnings()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object v0

    .line 364
    .local v0, "allWhitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 368
    .local v2, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "%s is allowlisted but not present."

    .line 369
    .local v3, "notPresentFmt":Ljava/lang/String;
    const-string v4, "%s is allowlisted and present but not a system package."

    .line 370
    .local v4, "notSystemFmt":Ljava/lang/String;
    const-string v5, "%s is allowlisted unnecessarily since it\'s a static overlay."

    .line 371
    .local v5, "overlayFmt":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 372
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 373
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_3d

    .line 374
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is allowlisted but not present."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 375
    :cond_3d
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v11

    if-nez v11, :cond_51

    .line 376
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is allowlisted and present but not a system package."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 377
    :cond_51
    invoke-static {v8}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-eqz v11, :cond_64

    .line 378
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is allowlisted unnecessarily since it\'s a static overlay."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_64
    :goto_64
    goto :goto_1b

    .line 381
    :cond_65
    return-object v1
.end method

.method private getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 723
    .local p1, "userTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p2, "baseTypeBitSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 724
    .local v0, "resultBitSet":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 726
    .local v3, "type":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 727
    .local v4, "baseTypeBitSet":Ljava/lang/Long;
    if-eqz v4, :cond_20

    .line 728
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 729
    goto :goto_6

    .line 732
    :cond_20
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v5

    .line 733
    .local v5, "userTypeBitSet":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2c

    .line 734
    or-long/2addr v0, v5

    .line 735
    goto :goto_6

    .line 737
    :cond_2c
    sget-object v7, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemConfig contained an invalid user type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "baseTypeBitSet":Ljava/lang/Long;
    .end local v5    # "userTypeBitSet":J
    goto :goto_6

    .line 739
    :cond_45
    return-wide v0
.end method

.method private getWhitelistMode()I
    .registers 3

    .line 490
    const-string/jumbo v0, "persist.debug.user.package_whitelist_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 492
    .local v0, "runtimeMode":I
    if-eq v0, v1, :cond_b

    .line 493
    return v0

    .line 495
    :cond_b
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result v1

    return v1
.end method

.method private getWhitelistedSystemPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static isEnforceMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 465
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isIgnoreOtaMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 470
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isImplicitWhitelistMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 480
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isImplicitWhitelistSystemMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 485
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isLogMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 475
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$getPackagesWhitelistErrors$2(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .param p0, "allWhitelistedPackages"    # Ljava/util/Set;
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "errors"    # Ljava/util/List;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 401
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 402
    :cond_7
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 404
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 405
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_2a
    return-void
.end method

.method static synthetic lambda$installWhitelistedSystemPackages$0(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 13
    .param p0, "userId"    # I
    .param p1, "isFirstBoot"    # Z
    .param p2, "isConsideredUpgrade"    # Z
    .param p3, "preExistingPackages"    # Landroid/util/ArraySet;
    .param p4, "changesToCommit"    # Landroid/util/SparseArrayMap;
    .param p5, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 227
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_7

    .line 228
    return-void

    .line 230
    :cond_7
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 232
    .local v0, "install":Z
    invoke-interface {p5, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v1

    if-eq v1, v0, :cond_32

    .line 233
    move-object v1, p5

    move v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 235
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4, p0, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 237
    :cond_32
    return-void
.end method

.method static synthetic lambda$installWhitelistedSystemPackages$1(Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 11
    .param p0, "changesToCommit"    # Landroid/util/SparseArrayMap;
    .param p1, "packageStateMutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 257
    const/4 v0, 0x0

    .local v0, "userIndex":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 258
    invoke-virtual {p0, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 259
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v2

    .line 260
    .local v2, "packagesSize":I
    const/4 v3, 0x0

    .local v3, "packageIndex":I
    :goto_10
    if-ge v3, v2, :cond_73

    .line 261
    invoke-virtual {p0, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 262
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 263
    .local v5, "installed":Z
    invoke-virtual {p1, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v6

    .line 264
    invoke-interface {v6, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v6

    .line 265
    invoke-interface {v6, v5}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v6

    .line 266
    if-eqz v5, :cond_32

    .line 267
    const/4 v7, 0x0

    goto :goto_33

    .line 268
    :cond_32
    const/4 v7, 0x1

    .line 266
    :goto_33
    invoke-interface {v6, v7}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setUninstallReason(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CommitDebug"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_55

    const-string v8, "Installed "

    goto :goto_57

    :cond_55
    const-string v8, "Uninstalled "

    :goto_57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "installed":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 257
    .end local v1    # "userId":I
    .end local v2    # "packagesSize":I
    .end local v3    # "packageIndex":I
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "userIndex":I
    :cond_76
    return-void
.end method

.method static modeToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "mode"    # I

    .line 506
    sparse-switch p0, :sswitch_data_14

    .line 512
    const-class v0, Lcom/android/server/pm/UserSystemPackageInstaller;

    int-to-long v1, p0

    const-string v3, "USER_TYPE_PACKAGE_WHITELIST_MODE_"

    invoke-static {v0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :sswitch_d
    const-string v0, "DEVICE_DEFAULT"

    return-object v0

    .line 510
    :sswitch_10
    const-string v0, "NONE"

    return-object v0

    nop

    :sswitch_data_14
    .sparse-switch
        -0x3e8 -> :sswitch_10
        -0x1 -> :sswitch_d
    .end sparse-switch
.end method

.method private static shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z
    .registers 9
    .param p0, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p1, "install"    # Z
    .param p2, "userId"    # I
    .param p3, "isFirstBoot"    # Z
    .param p4, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "ZIZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 296
    .local p5, "preOtaPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    .line 298
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getUninstallReason()I

    move-result v2

    if-ne v2, v1, :cond_f

    move v0, v1

    :cond_f
    return v0

    .line 302
    :cond_10
    if-nez p3, :cond_20

    if-eqz p4, :cond_1f

    .line 303
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_20

    :cond_1f
    goto :goto_21

    :cond_20
    :goto_20
    move v0, v1

    .line 302
    :goto_21
    return v0
.end method

.method static shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z
    .registers 6
    .param p0, "sysPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "implicitlyWhitelist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 580
    .local p1, "userTypeWhitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p2, "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 581
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "pkgName":Ljava/lang/String;
    :goto_f
    if-eqz p3, :cond_17

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 583
    :cond_17
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 582
    :goto_20
    return v1
.end method

.method private static shouldUseOverlayTargetName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 460
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result v0

    return v0
.end method

.method private static showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "verbose"    # Z
    .param p3, "issueType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 826
    .local p2, "issues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 827
    .local v0, "size":I
    if-nez v0, :cond_11

    .line 828
    if-eqz p1, :cond_10

    .line 829
    const-string v1, "No "

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 831
    :cond_10
    return-void

    .line 833
    :cond_11
    if-eqz p1, :cond_21

    .line 834
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 837
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v0, :cond_30

    .line 838
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 840
    .end local v1    # "i":I
    :cond_30
    if-eqz p1, :cond_35

    .line 841
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 843
    :cond_35
    return-void
.end method


# virtual methods
.method determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;
    .registers 18
    .param p1, "sysConfig"    # Lcom/android/server/SystemConfig;
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

    .line 638
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getBaseTypeBitSets()Ljava/util/Map;

    move-result-object v1

    .line 640
    .local v1, "baseTypeBitSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    nop

    .line 641
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeWhitelist()Landroid/util/ArrayMap;

    move-result-object v2

    .line 643
    .local v2, "whitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 645
    .local v3, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_41

    .line 646
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v8

    .line 648
    .local v8, "typesBitSet":J
    cmp-long v6, v8, v6

    if-eqz v6, :cond_3e

    .line 649
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v8    # "typesBitSet":J
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 653
    .end local v4    # "i":I
    :cond_41
    nop

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeBlacklist()Landroid/util/ArrayMap;

    move-result-object v4

    .line 655
    .local v4, "blacklist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_85

    .line 656
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 657
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v9

    .line 658
    .local v9, "nonTypesBitSet":J
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 659
    .local v11, "typesBitSet":Ljava/lang/Long;
    if-eqz v11, :cond_77

    .line 660
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    not-long v14, v9

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 661
    :cond_77
    cmp-long v12, v9, v6

    if-eqz v12, :cond_82

    .line 663
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "nonTypesBitSet":J
    .end local v11    # "typesBitSet":Ljava/lang/Long;
    :cond_82
    :goto_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 667
    .end local v5    # "i":I
    :cond_85
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    return-object v3
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 14
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 753
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    .line 754
    .local v0, "mode":I
    const-string v1, "Whitelisted packages per user type"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 757
    const-string v1, "Mode: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 759
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

    .line 760
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, " (logged)"

    goto :goto_2d

    :cond_2c
    move-object v1, v2

    :goto_2d
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 761
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, " (implicit)"

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 762
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v2, " (ignore OTAs)"

    :cond_45
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 764
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 766
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 767
    const-string v1, "Legend"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 769
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_5a
    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_80

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 772
    .end local v1    # "idx":I
    :cond_80
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 774
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 775
    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 776
    .local v1, "size":I
    if-nez v1, :cond_9a

    .line 777
    const-string v2, "No packages"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 779
    return-void

    .line 781
    :cond_9a
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, " packages:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 783
    const/4 v2, 0x0

    .local v2, "pkgIdx":I
    :goto_a6
    const/4 v3, 0x1

    if-ge v2, v1, :cond_e6

    .line 784
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 785
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 786
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 787
    .local v5, "userTypesBitSet":J
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_c6
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_e0

    .line 788
    shl-int v8, v3, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_dd

    .line 789
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v8, " "

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 787
    :cond_dd
    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    .line 792
    .end local v7    # "idx":I
    :cond_e0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 783
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "userTypesBitSet":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 794
    .end local v2    # "pkgIdx":I
    :cond_e6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 796
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 797
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v3, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V

    .line 798
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 799
    return-void
.end method

.method dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    .registers 8
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "mode"    # I
    .param p3, "verbose"    # Z
    .param p4, "criticalOnly"    # Z

    .line 804
    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_9

    .line 805
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p2

    goto :goto_10

    .line 806
    :cond_9
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 807
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result p2

    .line 809
    :cond_10
    :goto_10
    if-eqz p4, :cond_14

    .line 811
    and-int/lit8 p2, p2, -0x3

    .line 813
    :cond_14
    sget-object v0, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpPackageWhitelistProblems(): using mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object v0

    .line 816
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "errors"

    invoke-static {p1, p3, v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 818
    if-eqz p4, :cond_3c

    return-void

    .line 820
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object v1

    .line 821
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "warnings"

    invoke-static {p1, p3, v1, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 13
    .param p1, "userType"    # Ljava/lang/String;
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

    .line 533
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    .line 534
    .local v0, "mode":I
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 535
    const/4 v1, 0x0

    return-object v1

    .line 537
    :cond_c
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 538
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    :goto_24
    move v6, v1

    .line 539
    .local v6, "implicitlyWhitelist":Z
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 541
    .local v1, "whitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v2

    .line 542
    .local v8, "installPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 543
    .local v9, "pmInt":Landroid/content/pm/PackageManagerInternal;
    new-instance v10, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 559
    return-object v8
.end method

.method getUserTypeMask(Ljava/lang/String;)J
    .registers 5
    .param p1, "userType"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 678
    .local v0, "userTypeIndex":I
    if-ltz v0, :cond_c

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_e

    :cond_c
    const-wide/16 v1, 0x0

    .line 679
    .local v1, "userTypeMask":J
    :goto_e
    return-wide v1
.end method

.method getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 13
    .param p1, "userType"    # Ljava/lang/String;
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

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v0

    .line 593
    .local v0, "userTypeMask":J
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 594
    .local v2, "installablePkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 595
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 596
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 597
    .local v5, "whitelistedUserTypes":J
    and-long v7, v0, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_37

    .line 598
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "whitelistedUserTypes":J
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 601
    .end local v3    # "i":I
    :cond_3a
    return-object v2
.end method

.method installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .registers 24
    .param p1, "isFirstBoot"    # Z
    .param p2, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 202
    .local p3, "preExistingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v7

    .line 203
    .local v7, "mode":I
    invoke-direct {v0, v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->checkWhitelistedSystemPackages(I)V

    .line 204
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-static {v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    move v9, v2

    .line 205
    .local v9, "isConsideredUpgrade":Z
    if-nez v9, :cond_1b

    if-nez p1, :cond_1b

    .line 206
    return v1

    .line 208
    :cond_1b
    if-eqz p1, :cond_24

    invoke-static {v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 211
    return v1

    .line 213
    :cond_24
    sget-object v2, Lcom/android/server/pm/UserSystemPackageInstaller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reviewing whitelisted packages due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 214
    const-string v4, ""

    if-eqz p1, :cond_38

    const-string v5, "[firstBoot]"

    goto :goto_39

    :cond_38
    move-object v5, v4

    :goto_39
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_41

    const-string v4, "[upgrade]"

    :cond_41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 218
    .local v10, "pmInt":Landroid/content/pm/PackageManagerInternal;
    new-instance v2, Landroid/util/SparseArrayMap;

    invoke-direct {v2}, Landroid/util/SparseArrayMap;-><init>()V

    move-object v11, v2

    .line 221
    .local v11, "changesToCommit":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v1

    :goto_63
    if-ge v14, v13, :cond_da

    aget v15, v12, v14

    .line 222
    .local v15, "userId":I
    invoke-direct {v0, v15}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserId(I)Ljava/util/Set;

    move-result-object v16

    .line 225
    .local v16, "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v16, :cond_7f

    .line 226
    new-instance v6, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;

    move-object v1, v6

    move v2, v15

    move/from16 v3, p1

    move v4, v9

    move-object/from16 v5, p3

    move-object v8, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;-><init>(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;)V

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    goto :goto_d7

    .line 239
    :cond_7f
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_83
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 240
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 241
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_9b

    .line 242
    goto :goto_83

    .line 245
    :cond_9b
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    move v4, v1

    .line 247
    .local v4, "install":Z
    invoke-interface {v5, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v1

    if-eq v1, v4, :cond_d0

    .line 248
    move-object v1, v5

    move v2, v4

    move v3, v15

    move/from16 v17, v4

    .end local v4    # "install":Z
    .local v17, "install":Z
    move/from16 v4, p1

    move-object/from16 v18, v5

    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v18, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    move v5, v9

    move-object/from16 v19, v6

    .end local v6    # "packageName":Ljava/lang/String;
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldChangeInstallationState(Lcom/android/server/pm/pkg/PackageStateInternal;ZIZZLandroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 250
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v15, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d6

    .line 247
    .end local v17    # "install":Z
    .end local v18    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v4    # "install":Z
    .restart local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_d0
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 252
    .end local v4    # "install":Z
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_d6
    :goto_d6
    goto :goto_83

    .line 221
    .end local v15    # "userId":I
    .end local v16    # "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d7
    :goto_d7
    add-int/lit8 v14, v14, 0x1

    goto :goto_63

    .line 256
    :cond_da
    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;

    invoke-direct {v2, v11}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;-><init>(Landroid/util/SparseArrayMap;)V

    invoke-virtual {v10, v1, v2}, Landroid/content/pm/PackageManagerInternal;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 276
    const/4 v1, 0x1

    return v1
.end method

.method isEnforceMode()Z
    .registers 2

    .line 414
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    return v0
.end method

.method isIgnoreOtaMode()Z
    .registers 2

    .line 427
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v0

    return v0
.end method

.method isImplicitWhitelistMode()Z
    .registers 2

    .line 442
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    return v0
.end method

.method isImplicitWhitelistSystemMode()Z
    .registers 2

    .line 450
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result v0

    return v0
.end method

.method isLogMode()Z
    .registers 2

    .line 434
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getInstallablePackagesForUserType$3$com-android-server-pm-UserSystemPackageInstaller(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 8
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "whitelistedPackages"    # Ljava/util/Set;
    .param p3, "implicitlyWhitelist"    # Z
    .param p4, "installPackages"    # Ljava/util/Set;
    .param p5, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 544
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7

    .line 545
    return-void

    .line 548
    :cond_7
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 549
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceStub;->shouldSkipInstallForUserType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 550
    return-void

    .line 553
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-static {p5, v0, p2, p3}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 556
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_25
    return-void
.end method
