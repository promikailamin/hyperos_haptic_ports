.class Lcom/miui/enterprise/ApplicationHelper$Stub;
.super Ljava/lang/Object;
.source "ApplicationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/ApplicationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist get()Lcom/miui/enterprise/ApplicationHelper$Stub;
    .registers 1

    .line 21
    const-class v0, Lcom/miui/enterprise/ApplicationHelper$Stub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/enterprise/ApplicationHelper$Stub;

    return-object v0
.end method


# virtual methods
.method public blacklist allowAutoStart(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowAutoStart(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAPNActiveMode()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTrustedAppStores(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getXSpaceBlackApps(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isTrustedAppStoresEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTrustedAppStoresEnabled(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist protectedFromDelete(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 29
    const/4 v0, 0x0

    return v0
.end method
