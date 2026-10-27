.class public Landroid/content/res/AssetManagerImpl;
.super Landroid/content/res/AssetManagerStub;
.source "AssetManagerImpl.java"


# static fields
.field private static final blacklist FRAMEWORK_EXT_RES_PATH:Ljava/lang/String; = "/system_ext/framework/framework-ext-res/framework-ext-res.apk"

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 13
    const-string v0, "AssetManagerImpl "

    sput-object v0, Landroid/content/res/AssetManagerImpl;->TAG:Ljava/lang/String;

    .line 19
    :try_start_4
    const-string v1, "Load libmiui_runtime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v0, "miui_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_e} :catch_f

    .line 23
    goto :goto_17

    .line 21
    :catch_f
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Landroid/content/res/AssetManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "can\'t loadLibrary libmiui_runtime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_17
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/content/res/AssetManagerStub;-><init>()V

    return-void
.end method

.method private static native blacklist nativeCreateIdmapsForStaticOverlaysTargetingMiui()[Ljava/lang/String;
.end method


# virtual methods
.method blacklist addMiuiAssets(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/res/ApkAssets;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    .local p1, "apkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    const-string v0, "/system_ext/framework/framework-ext-res/framework-ext-res.apk"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {}, Landroid/content/res/AssetManagerImpl;->nativeCreateIdmapsForStaticOverlaysTargetingMiui()[Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "systemIdmapPaths":[Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 34
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 35
    .local v4, "idmapPath":Ljava/lang/String;
    invoke-static {v4, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v4    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 38
    :cond_20
    sget-object v1, Landroid/content/res/AssetManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "\'idmap2 --scan\' failed: no static=\"true\" overlays targeting \"miui\" will be loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_27
    return-void
.end method
