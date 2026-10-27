.class public Lcom/android/internal/util/custom/CustomUtils;
.super Ljava/lang/Object;
.source "CustomUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 25
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/custom/CustomUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    .line 11
    if-eqz p1, :cond_17

    .line 13
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_15

    if-nez p0, :cond_14

    if-nez p2, :cond_14

    .line 15
    return v0

    .line 19
    :cond_14
    goto :goto_17

    .line 17
    :catch_15
    move-exception p0

    .line 18
    return v0

    .line 21
    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method
