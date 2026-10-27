.class public final Lcom/android/server/permission/access/util/PackageVersionMigration;
.super Ljava/lang/Object;
.source "PackageVersionMigration.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/access/util/PackageVersionMigration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/android/server/permission/access/util/PackageVersionMigration;

    invoke-direct {v0}, Lcom/android/server/permission/access/util/PackageVersionMigration;-><init>()V

    sput-object v0, Lcom/android/server/permission/access/util/PackageVersionMigration;->INSTANCE:Lcom/android/server/permission/access/util/PackageVersionMigration;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I
    .registers 9

    .line 35
    const-class p0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    .line 36
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissionStateVersion(I)I

    move-result p0

    .line 38
    const-class p1, Lcom/android/server/appop/AppOpMigrationHelper;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpMigrationHelper;

    .line 39
    invoke-interface {p1}, Lcom/android/server/appop/AppOpMigrationHelper;->getLegacyAppOpVersion()I

    move-result p1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_26

    if-eq p1, v0, :cond_1e

    goto :goto_26

    .line 43
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    const-string p1, "getVersion() called when there are no legacy files"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    const/16 v1, 0xb

    const/4 v2, 0x3

    if-lt p0, v1, :cond_30

    if-lt p1, v2, :cond_30

    const/16 p0, 0xf

    return p0

    :cond_30
    const/16 v3, 0xa

    if-lt p0, v3, :cond_39

    if-lt p1, v2, :cond_39

    const/16 p0, 0xe

    return p0

    :cond_39
    const/4 v4, 0x1

    if-lt p0, v3, :cond_41

    if-lt p1, v4, :cond_41

    const/16 p0, 0xd

    return p0

    :cond_41
    const/16 v5, 0x9

    if-lt p0, v5, :cond_4a

    if-lt p1, v4, :cond_4a

    const/16 p0, 0xc

    return p0

    :cond_4a
    const/16 v6, 0x8

    if-lt p0, v6, :cond_51

    if-lt p1, v4, :cond_51

    return v1

    :cond_51
    const/4 v1, 0x7

    if-lt p0, v1, :cond_57

    if-lt p1, v4, :cond_57

    return v3

    :cond_57
    const/4 v3, 0x6

    if-lt p0, v3, :cond_5d

    if-lt p1, v4, :cond_5d

    return v5

    :cond_5d
    const/4 v5, 0x5

    if-lt p0, v5, :cond_63

    if-lt p1, v4, :cond_63

    return v6

    :cond_63
    const/4 v6, 0x4

    if-lt p0, v6, :cond_69

    if-lt p1, v4, :cond_69

    return v1

    :cond_69
    if-lt p0, v2, :cond_6e

    if-lt p1, v4, :cond_6e

    return v3

    :cond_6e
    const/4 v1, 0x2

    if-lt p0, v1, :cond_74

    if-lt p1, v4, :cond_74

    return v5

    :cond_74
    if-lt p0, v4, :cond_79

    if-lt p1, v4, :cond_79

    return v6

    :cond_79
    if-ltz p0, :cond_7e

    if-lt p1, v4, :cond_7e

    return v2

    :cond_7e
    if-ltz p0, :cond_83

    if-ltz p1, :cond_83

    return v1

    :cond_83
    if-lt p0, v0, :cond_88

    if-ltz p1, :cond_88

    return v4

    :cond_88
    const/4 p0, 0x0

    return p0
.end method
