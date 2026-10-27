.class public Landroid/content/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDefaultBrowserPackageNameAsUser(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .registers 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 14
    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist setDefaultBrowserPackageNameAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 27
    return-void
.end method
