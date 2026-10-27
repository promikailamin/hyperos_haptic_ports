.class public final Lcom/android/internal/util/custom/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# static fields
.field private static final blacklist FLAG_SUSPENDED:I = 0x40000000


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static blacklist getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 100
    :try_start_4
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_8} :catch_9

    .line 103
    goto :goto_b

    .line 101
    :catch_9
    move-exception p0

    .line 102
    const/4 p0, 0x0

    .line 104
    :goto_b
    return-object p0
.end method

.method public static blacklist isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/custom/PackageManagerUtils;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isAppEnabled(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/custom/PackageManagerUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 40
    if-eqz p0, :cond_c

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static blacklist isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/custom/PackageManagerUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static blacklist isAppOnSdcard(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 63
    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/custom/PackageManagerUtils;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isAppSuspended(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/custom/PackageManagerUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/custom/PackageManagerUtils;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 84
    if-eqz p0, :cond_b

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method
