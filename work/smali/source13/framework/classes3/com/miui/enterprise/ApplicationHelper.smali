.class public final Lcom/miui/enterprise/ApplicationHelper;
.super Ljava/lang/Object;
.source "ApplicationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/ApplicationHelper$Stub;
    }
.end annotation


# static fields
.field private static final blacklist ENTERPRISE_PACKAGE_PREFIX:Ljava/lang/String; = "pkg_"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowAutoStart(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/ApplicationHelper$Stub;->allowAutoStart(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist allowAutoStart(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 114
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper$Stub;->allowAutoStart(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/ApplicationHelper$Stub;->checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getAPNActiveMode()I
    .registers 1

    .line 142
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/enterprise/ApplicationHelper$Stub;->getAPNActiveMode()I

    move-result v0

    return v0
.end method

.method public static blacklist getTrustedAppStores(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
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

    .line 122
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/ApplicationHelper$Stub;->getTrustedAppStores(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
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

    .line 118
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/ApplicationHelper$Stub;->getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getXSpaceBlackApps(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
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

    .line 138
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/ApplicationHelper$Stub;->getXSpaceBlackApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isTrustedAppStoresEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/ApplicationHelper$Stub;->isTrustedAppStoresEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTrustedAppStoresEnabled(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 126
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/ApplicationHelper$Stub;->isTrustedAppStoresEnabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist protectedFromDelete(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/ApplicationHelper$Stub;->protectedFromDelete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 98
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper$Stub;->protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/ApplicationHelper$Stub;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 106
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper$Stub;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/ApplicationHelper$Stub;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 90
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper$Stub;->get()Lcom/miui/enterprise/ApplicationHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper$Stub;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
