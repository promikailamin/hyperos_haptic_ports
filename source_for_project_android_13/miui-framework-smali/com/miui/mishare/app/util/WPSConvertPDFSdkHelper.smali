.class public Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;
.super Ljava/lang/Object;
.source "WPSConvertPDFSdkHelper.java"


# static fields
.field public static final blacklist PACKAGE_WPS_LITE:Ljava/lang/String; = "cn.wps.moffice_eng.xiaomi.lite"

.field public static final blacklist SUPPORT_MIN_VERSIONCODE_LITE:I = 0xce

.field private static blacklist sOfficeFileExtension:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper$1;

    invoke-direct {v0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper$1;-><init>()V

    sput-object v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->sOfficeFileExtension:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isInstalled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 70
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "cn.wps.moffice_eng.xiaomi.lite"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 72
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    .line 73
    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    .line 75
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_14
    move-exception v1

    goto :goto_18

    .line 74
    :catch_16
    move-exception v1

    .line 76
    nop

    .line 77
    :goto_18
    return v0
.end method

.method public static blacklist isInstalledAndSupportConvert(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isOfficeFile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "fileExtension"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->sOfficeFileExtension:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupport(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 84
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "cn.wps.moffice_eng.xiaomi.lite"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 86
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_15

    .line 87
    .local v2, "versionCode":I
    const/16 v3, 0xce

    if-lt v2, v3, :cond_14

    .line 88
    const/4 v3, 0x1

    return v3

    .line 92
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "versionCode":I
    :cond_14
    goto :goto_19

    .line 90
    :catch_15
    move-exception v0

    .line 91
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_19
    const/4 v0, 0x0

    return v0
.end method
