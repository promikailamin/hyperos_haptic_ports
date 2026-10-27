.class public Lmiui/util/CustomizeUtil;
.super Ljava/lang/Object;
.source "CustomizeUtil.java"


# static fields
.field public static final blacklist ADJUST:Ljava/lang/String; = "adjust"

.field public static final blacklist ANDROID_MAX_ASPECT:Ljava/lang/String; = "android.max_aspect"

.field private static final blacklist CARRIER_REGION_PROP_DIR:Ljava/io/File;

.field private static final blacklist CUST_VARIANT:Ljava/lang/String; = "cust_variant"

.field private static final blacklist CUST_VARIANT_FILE:Ljava/io/File;

.field private static final blacklist DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final blacklist ENABLE_CONFIG:Ljava/lang/String; = "enable_config"

.field public static final blacklist EXTRA_PRIVATE_FLAG_SPECIAL_MODE:I = 0x80

.field public static final blacklist HAS_NOTCH:Z

.field public static final blacklist MAX_ASPECT_RATIO:F = 3.0f

.field private static final blacklist MIUI_APP_DIR:Ljava/io/File;

.field private static final blacklist MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final blacklist MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

.field private static final blacklist MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

.field private static final blacklist MIUI_CUST_DIR:Ljava/io/File;

.field private static final blacklist MIUI_CUST_PROP_DIR:Ljava/io/File;

.field public static final blacklist NEED_ADJUST:Ljava/lang/String; = "need_adjust"

.field public static final blacklist NOTCH_CONFIG:Ljava/lang/String; = "notch.config"

.field public static final blacklist PACKAGE:Ljava/lang/String; = "pkg"

.field private static final blacklist PRODUCT_CARRIER_APP_DIR:Ljava/io/File;

.field private static final blacklist PRODUCT_CARRIER_REGION_DIR:Ljava/io/File;

.field private static final blacklist PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final blacklist RESTRICT_ASPECT_RATIO:F

.field private static final blacklist SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final blacklist TYPE_DEFAULT:I = 0x0

.field public static final blacklist TYPE_METADATA:I = 0x1

.field public static final blacklist TYPE_OTHER:I = 0x5

.field public static final blacklist TYPE_RESIZEABLE:I = 0x2

.field public static final blacklist TYPE_RESTRICT:I = 0x4

.field public static final blacklist TYPE_SUGGEST:I = 0x3

.field public static final blacklist UPDATE_SPECIAL_MODE:Ljava/lang/String; = "upate_specail_mode"

.field private static final blacklist VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static blacklist sCustVariant:Ljava/lang/String;

.field private static blacklist sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNeedCompatNotchPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cust"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    .line 34
    new-instance v0, Ljava/io/File;

    const-string v1, "/system_ext/cust"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_PROP_DIR:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/app/noncustomized"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    const-string v1, "/product/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "customized"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 48
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    .line 52
    const-string v0, ""

    sput-object v0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "/opcust/regionconfig/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->CARRIER_REGION_PROP_DIR:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/product/opcust/regionlist/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->PRODUCT_CARRIER_REGION_DIR:Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v1, "/product/opcust/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->PRODUCT_CARRIER_APP_DIR:Ljava/io/File;

    .line 60
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lithium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const v0, 0x3fe38e39

    goto :goto_9c

    :cond_99
    const v0, 0x3fea9fbe    # 1.833f

    :goto_9c
    sput v0, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    .line 64
    const-string v0, "ro.miui.notch"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    .line 82
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.miui.aod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgamece"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgmhdce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.speedmobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.speedmobileEx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.cf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.hyxd.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.hyxd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.dwrg.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.dwrg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.mrzh.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.mrzh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.h48"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.h48.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustDisplay(Landroid/view/DisplayInfo;ILjava/lang/String;)Landroid/view/DisplayInfo;
    .registers 11
    .param p0, "info"    # Landroid/view/DisplayInfo;
    .param p1, "callingUid"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;

    .line 290
    move-object v0, p0

    .line 292
    .local v0, "localDisplayInfo":Landroid/view/DisplayInfo;
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_63

    if-eqz p1, :cond_63

    .line 293
    move-object v1, p2

    .line 294
    .local v1, "pkg":Ljava/lang/String;
    :try_start_8
    invoke-static {v1}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 295
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    move-object v0, v2

    .line 296
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 297
    .local v2, "width":I
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 298
    .local v3, "height":I
    const/high16 v4, 0x3f000000    # 0.5f

    if-ge v2, v3, :cond_3b

    .line 299
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v5, v5

    sget v6, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 300
    .local v5, "maxHeight":I
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 302
    iget v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 303
    .end local v5    # "maxHeight":I
    .local v4, "maxHeight":I
    iget v5, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 304
    .end local v4    # "maxHeight":I
    goto :goto_63

    .line 305
    :cond_3b
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    sget v6, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 306
    .local v5, "maxWidth":I
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 308
    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 309
    .end local v5    # "maxWidth":I
    .local v4, "maxWidth":I
    iget v5, v0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/view/DisplayInfo;->appWidth:I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_59} :catch_5a

    goto :goto_63

    .line 313
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "maxWidth":I
    :catch_5a
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CustomizeUtil"

    const-string v3, "ajsustDisplay failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 315
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_63
    :goto_63
    nop

    .line 316
    :goto_64
    return-object v0
.end method

.method public static blacklist forceLayoutHideNavigation(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 258
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist geCarrierRegionPropDir()Ljava/io/File;
    .registers 3

    .line 199
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->CARRIER_REGION_PROP_DIR:Ljava/io/File;

    sget-object v2, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getCallingUidPackage(I)Ljava/lang/String;
    .registers 4
    .param p0, "callingUid"    # I

    .line 276
    if-lez p0, :cond_1c

    .line 278
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    .line 280
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_14

    return-object v1

    .line 284
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_13
    goto :goto_1c

    .line 282
    :catch_14
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomizeUtil"

    const-string v2, "getCallingUidPackage failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMiuiAppDir()Ljava/io/File;
    .registers 1

    .line 142
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getMiuiCustDir()Ljava/io/File;
    .registers 1

    .line 150
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getMiuiCustPropDir()Ljava/io/File;
    .registers 1

    .line 154
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_PROP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getMiuiCustVariantDir()Ljava/io/File;
    .registers 1

    .line 158
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir(Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMiuiCustVariantDir(Z)Ljava/io/File;
    .registers 10
    .param p0, "isCustProp"    # Z

    .line 162
    const-string v0, "getMiuiCustVariantDir finally Exception e:"

    const-string v1, "CustomizeUtil"

    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v2, :cond_23

    sget-object v2, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 163
    new-instance v0, Ljava/io/File;

    if-eqz p0, :cond_19

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustPropDir()Ljava/io/File;

    move-result-object v1

    goto :goto_1d

    :cond_19
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v1

    :goto_1d
    sget-object v2, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 165
    :cond_23
    sget-object v2, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_113

    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 169
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_2e
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 170
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v2

    .line 171
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "cust_variant":Ljava/lang/String;
    if-eqz v2, :cond_80

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 174
    new-instance v6, Ljava/io/File;

    if-eqz p0, :cond_56

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustPropDir()Ljava/io/File;

    move-result-object v7

    goto :goto_5a

    :cond_56
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v7

    :goto_5a
    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_5d} :catch_be
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_5d} :catch_a6
    .catchall {:try_start_2e .. :try_end_5d} :catchall_a4

    .line 184
    nop

    .line 185
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 187
    nop

    .line 188
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_66

    .line 192
    goto :goto_7f

    .line 190
    :catch_66
    move-exception v4

    .line 191
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7f
    return-object v6

    .line 176
    :cond_80
    nop

    .line 184
    nop

    .line 185
    :try_start_82
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 187
    nop

    .line 188
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_8a

    .line 192
    goto :goto_a3

    .line 190
    :catch_8a
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_a3
    return-object v4

    .line 183
    .end local v2    # "cust_variant":Ljava/lang/String;
    :catchall_a4
    move-exception v2

    goto :goto_ea

    .line 180
    :catch_a6
    move-exception v2

    .line 181
    .local v2, "e":Ljava/io/IOException;
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_a4

    .line 184
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_b2

    .line 185
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_b2

    .line 190
    :catch_b0
    move-exception v2

    goto :goto_b8

    .line 187
    :cond_b2
    :goto_b2
    if-eqz v5, :cond_e9

    .line 188
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b7} :catch_b0

    goto :goto_e9

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    :goto_b8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d5

    .line 178
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_be
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_bf
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_a4

    .line 184
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_ca

    .line 185
    :try_start_c4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_ca

    .line 190
    :catch_c8
    move-exception v2

    goto :goto_d0

    .line 187
    :cond_ca
    :goto_ca
    if-eqz v5, :cond_e9

    .line 188
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cf} :catch_c8

    goto :goto_e9

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    :goto_d0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_113

    .line 192
    :cond_e9
    :goto_e9
    goto :goto_113

    .line 184
    :goto_ea
    if-eqz v3, :cond_f2

    .line 185
    :try_start_ec
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_f2

    .line 190
    :catch_f0
    move-exception v4

    goto :goto_f8

    .line 187
    :cond_f2
    :goto_f2
    if-eqz v5, :cond_111

    .line 188
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f7} :catch_f0

    goto :goto_111

    .line 191
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_f8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 192
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_111
    :goto_111
    nop

    .line 193
    :goto_112
    throw v2

    .line 195
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "br":Ljava/io/BufferedReader;
    :cond_113
    :goto_113
    return-object v4
.end method

.method public static blacklist getMiuiCustVariantFile()Ljava/io/File;
    .registers 3

    .line 246
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    const-string v1, "cust_variant"

    if-eqz v0, :cond_13

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_b

    goto :goto_13

    .line 249
    :cond_b
    new-instance v0, Ljava/io/File;

    sget-object v2, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 247
    :cond_13
    :goto_13
    new-instance v0, Ljava/io/File;

    sget-object v2, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getMiuiCustomizedAppDir()Ljava/io/File;
    .registers 1

    .line 146
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getMiuiCustomizedDir()Ljava/io/File;
    .registers 1

    .line 114
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    .line 115
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    return-object v0

    .line 117
    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getMiuiNoCustomizedAppDir()Ljava/io/File;
    .registers 1

    .line 121
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    .line 122
    sget-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    .line 124
    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getMiuiProductNoCustomizedAppDir()Ljava/io/File;
    .registers 1

    .line 135
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    .line 136
    sget-object v0, Lmiui/util/CustomizeUtil;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    .line 138
    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getMiuiVendorNoCustomizedAppDir()Ljava/io/File;
    .registers 1

    .line 128
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    .line 129
    sget-object v0, Lmiui/util/CustomizeUtil;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    .line 131
    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getProductCarrierAppDir()Ljava/io/File;
    .registers 1

    .line 203
    sget-object v0, Lmiui/util/CustomizeUtil;->PRODUCT_CARRIER_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getProductCarrierRegionAppFile()Ljava/io/File;
    .registers 9

    .line 207
    const-string v0, "getProductCarrierRegionAppFile finally Exception e:"

    const-string v1, "CustomizeUtil"

    sget-object v2, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 208
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->PRODUCT_CARRIER_REGION_DIR:Ljava/io/File;

    sget-object v2, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 210
    :cond_16
    sget-object v2, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_fc

    .line 211
    const/4 v3, 0x0

    .line 212
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 214
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_21
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 215
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v2

    .line 216
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "cust_variant":Ljava/lang/String;
    if-eqz v2, :cond_6a

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 219
    new-instance v6, Ljava/io/File;

    sget-object v7, Lmiui/util/CustomizeUtil;->PRODUCT_CARRIER_REGION_DIR:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_47} :catch_90
    .catchall {:try_start_21 .. :try_end_47} :catchall_8e

    .line 227
    nop

    .line 228
    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 230
    nop

    .line 231
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_50

    .line 235
    goto :goto_69

    .line 233
    :catch_50
    move-exception v4

    .line 234
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_69
    return-object v6

    .line 221
    :cond_6a
    nop

    .line 227
    nop

    .line 228
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 230
    nop

    .line 231
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_73} :catch_74

    .line 235
    goto :goto_8d

    .line 233
    :catch_74
    move-exception v6

    .line 234
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8d
    return-object v4

    .line 226
    .end local v2    # "cust_variant":Ljava/lang/String;
    :catchall_8e
    move-exception v2

    goto :goto_d3

    .line 223
    :catch_90
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    :try_start_91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProductCarrierRegionAppFile Exception e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_8e

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_b3

    .line 228
    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_b3

    .line 233
    :catch_b1
    move-exception v2

    goto :goto_b9

    .line 230
    :cond_b3
    :goto_b3
    if-eqz v5, :cond_d2

    .line 231
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b8} :catch_b1

    goto :goto_d2

    .line 234
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_b9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_fc

    .line 235
    :cond_d2
    :goto_d2
    goto :goto_fc

    .line 227
    :goto_d3
    if-eqz v3, :cond_db

    .line 228
    :try_start_d5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_db

    .line 233
    :catch_d9
    move-exception v4

    goto :goto_e1

    .line 230
    :cond_db
    :goto_db
    if-eqz v5, :cond_fa

    .line 231
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e0} :catch_d9

    goto :goto_fa

    .line 234
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_e1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    .line 235
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_fa
    :goto_fa
    nop

    .line 236
    :goto_fb
    throw v2

    .line 238
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "br":Ljava/io/BufferedReader;
    :cond_fc
    :goto_fc
    return-object v4
.end method

.method public static blacklist getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 9
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 263
    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v1, "getRealSize"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 268
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_2f

    .line 265
    :catch_24
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomizeUtil"

    const-string v2, "no getRealSize hack method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method public static blacklist isRestrict(F)Z
    .registers 2
    .param p0, "maxAspect"    # F

    .line 272
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static blacklist needChangeSize()Z
    .registers 1

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needCompatNotch(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 320
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v0, :cond_e

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist setMiuiCustVariatDir(Ljava/lang/String;)V
    .registers 1
    .param p0, "custVariant"    # Ljava/lang/String;

    .line 242
    sput-object p0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    .line 243
    return-void
.end method
