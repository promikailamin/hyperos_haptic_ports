.class public Lmiui/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;,
        Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;,
        Lmiui/content/res/ThemeResources$ConfigType;,
        Lmiui/content/res/ThemeResources$FilterInfo;,
        Lmiui/content/res/ThemeResources$MetaData;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_FILTER_PATH:Ljava/lang/String; = "path"

.field static blacklist DBG:Z = false

.field public static final blacklist DISABLE_PROVISION_THEME:Ljava/lang/String; = "/data/system/theme_magic/disable_provision_theme"

.field public static final whitelist DYNAMIC_ICONS_NAME:Ljava/lang/String; = "dynamicicons"

.field private static final blacklist FILTER_DESCRIPTION_FILE:Ljava/lang/String; = "filters.xml"

.field private static final blacklist FRAMEWORK_EXT_RES_PATH:Ljava/lang/String; = "/system_ext/framework/framework-ext-res/framework-ext-res.apk"

.field public static final whitelist FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final whitelist FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist FRAMEWORK_RES_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field public static final whitelist ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final whitelist LANGUAGE_THEME_PATH:Ljava/lang/String; = "/data/system/language/"

.field public static final whitelist LOCKSCREEN_NAME:Ljava/lang/String; = "lockscreen"

.field public static final whitelist LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lock_wallpaper"

.field public static final whitelist MIUI_NAME:Ljava/lang/String; = "framework-miui-res"

.field public static final whitelist MIUI_PACKAGE:Ljava/lang/String; = "miui"

.field private static final blacklist MIUI_SDK_RES_PATH:Ljava/lang/String; = "/system/app/miui/miui.apk"

.field private static final blacklist MIUI_SYSTEMSDK_RES_PATH:Ljava/lang/String; = "/system/app/miuisystem/miuisystem.apk"

.field public static final blacklist PROVISION_THEME_PATH:Ljava/lang/String; = "/product/media/theme/provision/"

.field public static final whitelist SUPER_WALLPAPER_LOCKSCREEN_NAME:Ljava/lang/String; = "splockscreen"

.field public static final whitelist SUPER_WALLPAPER_PATH:Lmiui/content/res/ThemeResources$MetaData;

.field public static final whitelist SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final whitelist SYSTEM_LANGUAGE_THEME_PATH:Ljava/lang/String; = "/system/language/"

.field public static final whitelist SYSTEM_THEME_PATH:Ljava/lang/String; = "/product/media/theme/default/"

.field private static final blacklist TAG_FILTER:Ljava/lang/String; = "filter"

.field private static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final whitelist THEME_DATA_CONFIG_DIR_PATH:Ljava/lang/String; = "/data/system/theme_config/"

.field public static final blacklist THEME_MAGIC_PATH:Ljava/lang/String; = "/data/system/theme_magic/"

.field public static final whitelist THEME_PATH:Ljava/lang/String; = "/data/system/theme/"

.field public static final whitelist THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

.field public static final whitelist THEME_RIGHTS_PATH:Ljava/lang/String; = "/data/system/theme/rights/"

.field public static final whitelist THEME_VERSION_COMPATIBILITY_PATH:Ljava/lang/String; = "/data/system/theme/compatibility-v12/"

.field public static final whitelist WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field public static final whitelist sAppliedLockstyleConfigPath:Ljava/lang/String; = "/data/system/theme/config.config"

.field protected static whitelist sCookieFramework:I

.field protected static whitelist sCookieMiuiExtFramework:I

.field protected static whitelist sCookieMiuiFramework:I

.field protected static whitelist sCookieMiuiSdk:I

.field private static blacklist sHasUpdatedAfterZygote:Z

.field protected static blacklist sIsZygote:Z

.field private static blacklist sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

.field private static blacklist sLockWallpaperModifiedTime:J

.field private static blacklist sSystem:Lmiui/content/res/ThemeResourcesSystem;


# instance fields
.field private blacklist mFilterInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasInitedDefaultValue:Z

.field protected whitelist mIsTop:Z

.field protected whitelist mIsUserThemePath:Z

.field private blacklist mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

.field protected whitelist mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field protected blacklist mNightMode:Z

.field protected whitelist mPackageName:Ljava/lang/String;

.field protected blacklist mPackageZipFile:Lmiui/content/res/ThemeZipFile;

.field protected whitelist mResources:Landroid/content/res/MiuiResources;

.field protected whitelist mShouldFallbackDeeper:Z

.field protected whitelist mSupportWrapper:Z

.field protected whitelist mUpdatedTime:J

.field protected whitelist mWrapped:Lmiui/content/res/ThemeResources;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    .line 56
    sput-boolean v0, Lmiui/content/res/ThemeResources;->sIsZygote:Z

    .line 58
    sput-boolean v0, Lmiui/content/res/ThemeResources;->sHasUpdatedAfterZygote:Z

    .line 96
    new-instance v1, Lmiui/content/res/ThemeResources$MetaData;

    const-string v2, "/data/system/theme_magic/"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    sput-object v1, Lmiui/content/res/ThemeResources;->SUPER_WALLPAPER_PATH:Lmiui/content/res/ThemeResources$MetaData;

    .line 98
    const/4 v1, 0x3

    new-array v1, v1, [Lmiui/content/res/ThemeResources$MetaData;

    new-instance v2, Lmiui/content/res/ThemeResources$MetaData;

    const-string v4, "/product/media/theme/default/"

    invoke-direct {v2, v4, v3, v3}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v2, v1, v0

    new-instance v0, Lmiui/content/res/ThemeResources$MetaData;

    const-string v2, "/product/media/theme/provision/"

    invoke-direct {v0, v2, v3, v3}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v0, v1, v3

    new-instance v0, Lmiui/content/res/ThemeResources$MetaData;

    const-string v2, "/data/system/theme/"

    invoke-direct {v0, v2, v3, v3}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    .line 557
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    .line 558
    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    .line 559
    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    .line 560
    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    return-void
.end method

.method protected constructor whitelist <init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .registers 9
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResources;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/content/res/ThemeResources;->mIsTop:Z

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    .line 492
    new-instance v2, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;-><init>(Lmiui/content/res/ThemeResources;Lmiui/content/res/ThemeResources$LoadThemeConfigHelper-IA;)V

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    .line 240
    invoke-static {p2}, Lmiui/content/res/ThemeResources;->initSystemCookies(Landroid/content/res/Resources;)V

    .line 241
    if-eqz p1, :cond_21

    .line 242
    iput-object p1, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    .line 243
    iput-boolean v1, p1, Lmiui/content/res/ThemeResources;->mIsTop:Z

    .line 245
    :cond_21
    iput-object p2, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    .line 246
    invoke-static {p3}, Lmiui/content/res/ThemeResources;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 248
    iget-object v2, p4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v3, "/data/system/theme/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    .line 249
    invoke-static {p4, p3}, Lmiui/content/res/ThemeZipFile;->getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    .line 250
    const-string v2, "icons"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "lockscreen"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 251
    const-string v2, "splockscreen"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    iput-boolean v0, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    .line 252
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 253
    return-void
.end method

.method public static final whitelist clearLockWallpaperCache()V
    .registers 2

    .line 600
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 601
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 602
    return-void
.end method

.method private static blacklist getFallbackDrawablePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "resourcePath"    # Ljava/lang/String;
    .param p1, "originalName"    # Ljava/lang/String;
    .param p2, "fallbackName"    # Ljava/lang/String;

    .line 387
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 390
    .local v0, "resPathIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a
    add-int v3, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 391
    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 392
    .local v3, "resCh":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 393
    .local v4, "originCh":C
    if-eq v3, v4, :cond_26

    .line 394
    const/4 v5, 0x0

    return-object v5

    .line 396
    :cond_26
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_2b

    .line 397
    goto :goto_30

    .line 390
    .end local v3    # "resCh":C
    .end local v4    # "originCh":C
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 402
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_30
    :goto_30
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    .line 403
    .local v1, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {v1, p0, v0}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 404
    invoke-virtual {v1, p2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 407
    return-object v2
.end method

.method private blacklist getFilterInfos(Z)Ljava/util/List;
    .registers 19
    .param p1, "isNightMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation

    .line 507
    move/from16 v1, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 509
    .local v2, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    if-eqz v1, :cond_d

    const-string v0, "nightmode/"

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    move-object v3, v0

    .line 510
    .local v3, "basePath":Ljava/lang/String;
    new-instance v0, Lmiui/content/res/ThemeResources$FilterInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;Z)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    move-object/from16 v4, p0

    iget-object v0, v4, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "filters.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 513
    .local v5, "input":Ljava/io/InputStream;
    if-nez v5, :cond_37

    .line 514
    return-object v2

    .line 518
    :cond_37
    :try_start_37
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 519
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 520
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 522
    .local v7, "document":Lorg/w3c/dom/Document;
    const-string v8, "filter"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 523
    .local v8, "filters":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4a
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_c3

    .line 524
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 526
    .local v10, "filter":Lorg/w3c/dom/Element;
    const-string v11, "path"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 527
    .local v11, "path":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_bc

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_bc

    const-string v12, "res"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_76

    move-object/from16 v16, v0

    goto :goto_be

    .line 529
    :cond_76
    const-string v12, "package"

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 530
    .local v12, "packages":Lorg/w3c/dom/NodeList;
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 531
    .local v13, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_82
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_9a

    .line 532
    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v14, v14, 0x1

    goto :goto_82

    .line 534
    .end local v14    # "j":I
    :cond_9a
    new-instance v14, Lmiui/content/res/ThemeResources$FilterInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v16, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v0, 0x2f

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0, v13, v1}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;Z)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_bb} :catch_d1
    .catchall {:try_start_37 .. :try_end_bb} :catchall_c9

    goto :goto_be

    .line 527
    .end local v12    # "packages":Lorg/w3c/dom/NodeList;
    .end local v13    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_bc
    move-object/from16 v16, v0

    .line 523
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "filter":Lorg/w3c/dom/Element;
    .end local v11    # "path":Ljava/lang/String;
    .restart local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_be
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    goto :goto_4a

    .end local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_c3
    move-object/from16 v16, v0

    .line 539
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "filters":Lorg/w3c/dom/NodeList;
    .end local v9    # "i":I
    :try_start_c5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_d6

    goto :goto_d5

    .line 538
    :catchall_c9
    move-exception v0

    move-object v6, v0

    .line 539
    :try_start_cb
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 541
    goto :goto_d0

    .line 540
    :catch_cf
    move-exception v0

    .line 542
    :goto_d0
    throw v6

    .line 536
    :catch_d1
    move-exception v0

    .line 539
    :try_start_d2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    .line 541
    :goto_d5
    goto :goto_d8

    .line 540
    :catch_d6
    move-exception v0

    .line 542
    nop

    .line 544
    :goto_d8
    return-object v2
.end method

.method public static final whitelist getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 620
    const-string v0, "ThemeResources"

    sget-object v1, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v1

    .line 622
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v1, :cond_93

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_93

    .line 627
    :cond_13
    sget-wide v3, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 628
    sget-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 632
    :cond_20
    sput-object v2, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 634
    :try_start_22
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 635
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 636
    .local v3, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 637
    .local v4, "size":Landroid/graphics/Point;
    invoke-static {v3, v4}, Lmiui/content/res/ThemeResources;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 638
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 639
    .local v5, "width":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 640
    .local v6, "height":I
    if-le v5, v6, :cond_61

    .line 641
    const-string v7, "LockWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong display metrics for width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move v7, v5

    .line 643
    .local v7, "tmp":I
    move v5, v6

    .line 644
    move v6, v7

    .line 647
    .end local v7    # "tmp":I
    :cond_61
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v5, v6, v8}, Lmiui/graphics/BitmapFactoryCompat;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 648
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8f

    .line 649
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v8, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 650
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_7d} :catch_87
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_7d} :catch_7e

    goto :goto_8f

    .line 654
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_7e
    move-exception v2

    .line 655
    .local v2, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    .line 652
    .end local v2    # "error":Ljava/lang/OutOfMemoryError;
    :catch_87
    move-exception v2

    .line 653
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8f
    :goto_8f
    nop

    .line 658
    :goto_90
    sget-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 623
    :cond_93
    :goto_93
    return-object v2
.end method

.method private static final blacklist getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "componentName"    # Ljava/lang/String;

    .line 169
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "dynamicicons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 170
    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_36

    .line 173
    :cond_19
    const-string v0, "framework-miui-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 174
    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 175
    const-string v0, "splockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_33

    .line 178
    :cond_32
    return-object p0

    .line 176
    :cond_33
    :goto_33
    const-string v0, "miui"

    return-object v0

    .line 171
    :cond_36
    :goto_36
    const-string v0, "android"

    return-object v0
.end method

.method private static blacklist getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 9
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 606
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

    .line 607
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 611
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_2f

    .line 608
    :catch_24
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockWallpaper"

    const-string v2, "no getRealSize hack method"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method public static whitelist getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;
    .registers 2
    .param p0, "resources"    # Landroid/content/res/MiuiResources;

    .line 143
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_a

    .line 144
    invoke-static {p0}, Lmiui/content/res/ThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    .line 146
    :cond_a
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static whitelist getSystem()Lmiui/content/res/ThemeResourcesSystem;
    .registers 1

    .line 134
    sget-boolean v0, Lmiui/content/res/ThemeResources;->sIsZygote:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lmiui/content/res/ThemeResources;->sHasUpdatedAfterZygote:Z

    if-nez v0, :cond_12

    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    if-eqz v0, :cond_12

    .line 135
    invoke-virtual {v0}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/content/res/ThemeResources;->sHasUpdatedAfterZygote:Z

    .line 138
    :cond_12
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method private blacklist getThemeFileWithFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;
    .param p3, "fallbackPkgName"    # Ljava/lang/String;

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b3

    iget-object v2, v0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v5, p3

    goto/16 :goto_b5

    .line 343
    :cond_15
    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    move-object/from16 v5, p3

    invoke-static {v5, v2, v4}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 344
    .local v2, "compatiblityFallback":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v2, :cond_b2

    .line 345
    iget-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 346
    .local v4, "backup":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 347
    .local v7, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v9, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v8, v9, :cond_ae

    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    if-nez v8, :cond_ae

    .line 349
    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v9, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-static {v4, v8, v9}, Lmiui/content/res/ThemeResources;->getFallbackDrawablePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 350
    iget-object v8, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    if-nez v8, :cond_4c

    .line 351
    goto :goto_27

    .line 353
    :cond_4c
    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    const/4 v9, 0x1

    if-nez v8, :cond_5a

    .line 354
    invoke-direct/range {p0 .. p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 355
    iput-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 356
    return v9

    .line 359
    :cond_5a
    const/4 v8, 0x0

    .line 360
    .local v8, "prefix":Ljava/lang/String;
    const/4 v10, 0x0

    .line 361
    .local v10, "suffix":Ljava/lang/String;
    iget-object v11, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    array-length v12, v11

    move v13, v3

    :goto_60
    if-ge v13, v12, :cond_81

    aget-object v14, v11, v13

    .line 362
    .local v14, "config":Ljava/lang/String;
    iget-object v15, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 363
    .local v15, "index":I
    if-lez v15, :cond_7e

    .line 364
    iget-object v11, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v11, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 365
    iget-object v11, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v15

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 366
    goto :goto_81

    .line 361
    .end local v14    # "config":Ljava/lang/String;
    .end local v15    # "index":I
    :cond_7e
    add-int/lit8 v13, v13, 0x1

    goto :goto_60

    .line 369
    :cond_81
    :goto_81
    if-eqz v8, :cond_ae

    .line 370
    iget-object v11, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    array-length v12, v11

    move v13, v3

    :goto_87
    if-ge v13, v12, :cond_ae

    aget-object v14, v11, v13

    .line 371
    .restart local v14    # "config":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 372
    invoke-direct/range {p0 .. p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ab

    .line 373
    iput-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 374
    return v9

    .line 370
    .end local v14    # "config":Ljava/lang/String;
    :cond_ab
    add-int/lit8 v13, v13, 0x1

    goto :goto_87

    .line 380
    .end local v7    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_ae
    goto/16 :goto_27

    .line 381
    :cond_b0
    iput-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 383
    .end local v4    # "backup":Ljava/lang/String;
    :cond_b2
    return v3

    .line 340
    .end local v2    # "compatiblityFallback":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    :cond_b3
    move-object/from16 v5, p3

    .line 341
    :goto_b5
    return v3
.end method

.method private blacklist getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 11
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 412
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 413
    .local v0, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_69

    .line 414
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 415
    .local v3, "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    iget-boolean v4, p0, Lmiui/content/res/ThemeResources;->mNightMode:Z

    invoke-virtual {v3, p2, v4}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 416
    iget-object v4, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    iput-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 417
    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v4, p1}, Lmiui/content/res/ThemeZipFile;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return v2

    .line 420
    :cond_2f
    iget-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "originName":Ljava/lang/String;
    iget-object v5, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    iget-object v5, v5, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 422
    .local v5, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    if-eqz v5, :cond_66

    iget-object v6, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v7, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v6, v7, :cond_66

    iget-object v6, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    iget-object v7, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 424
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 425
    iget-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 426
    .local v6, "backup":Ljava/lang/String;
    iget-object v7, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 427
    iget-object v7, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v7, p1}, Lmiui/content/res/ThemeZipFile;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v7

    .line 428
    .local v7, "result":Z
    iput-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 429
    if-eqz v7, :cond_66

    return v2

    .line 413
    .end local v3    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    .end local v4    # "originName":Ljava/lang/String;
    .end local v5    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v6    # "backup":Ljava/lang/String;
    .end local v7    # "result":Z
    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 433
    .end local v1    # "i":I
    :cond_69
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 436
    .end local v0    # "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    :cond_6c
    iget-boolean v0, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_78

    :cond_77
    const/4 v0, 0x0

    :goto_78
    return v0
.end method

.method public static whitelist getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;
    .registers 8
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "componentName"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "themeResources":Lmiui/content/res/ThemeResources;
    invoke-static {}, Lmiui/content/res/ThemeResources;->needProvisionTheme()Z

    move-result v1

    .line 152
    .local v1, "needProvisionTheme":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v4, v3

    if-ge v2, v4, :cond_25

    .line 153
    if-nez v1, :cond_1a

    aget-object v4, v3, v2

    iget-object v4, v4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v5, "/product/media/theme/provision/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 154
    goto :goto_22

    .line 156
    :cond_1a
    new-instance v4, Lmiui/content/res/ThemeResources;

    aget-object v3, v3, v2

    invoke-direct {v4, v0, p0, p1, v3}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v0, v4

    .line 152
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 158
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method

.method public static blacklist getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)Lmiui/content/res/ThemeResources;
    .registers 5
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 165
    new-instance v0, Lmiui/content/res/ThemeResources;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    return-object v0
.end method

.method private blacklist initBasePaths()V
    .registers 3

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v0, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/content/res/ThemeResources;->getFilterInfos(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 550
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/content/res/ThemeResources;->getFilterInfos(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    .line 552
    return-void
.end method

.method private static blacklist initSystemCookies(Landroid/content/res/Resources;)V
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 563
    if-nez p0, :cond_3

    .line 564
    return-void

    .line 566
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 567
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v1, "/system/framework/framework-res.apk"

    invoke-static {v0, v1}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    .line 568
    .local v1, "cookieFramework":I
    if-lez v1, :cond_11

    .line 569
    sput v1, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    .line 571
    :cond_11
    const-string v2, "/system_ext/framework/framework-ext-res/framework-ext-res.apk"

    invoke-static {v0, v2}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v2

    .line 572
    .local v2, "cookieMiuiExtFramework":I
    if-lez v2, :cond_1b

    .line 573
    sput v2, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    .line 575
    :cond_1b
    const-string v3, "/system/app/miuisystem/miuisystem.apk"

    invoke-static {v0, v3}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v3

    .line 576
    .local v3, "miuiFrameworkCookie":I
    if-lez v3, :cond_25

    .line 577
    sput v3, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    .line 579
    :cond_25
    const-string v4, "/system/app/miui/miui.apk"

    invoke-static {v0, v4}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v4

    .line 580
    .local v4, "miuiSDKCookie":I
    if-lez v4, :cond_2f

    .line 581
    sput v4, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    .line 583
    :cond_2f
    return-void
.end method

.method public static whitelist isAppResourceCookie(I)Z
    .registers 2
    .param p0, "cookie"    # I

    .line 590
    sget v0, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    if-eq v0, p0, :cond_c

    invoke-static {p0}, Lmiui/content/res/ThemeResources;->isMiuiResourceCookie(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected static whitelist isMiuiResourceCookie(I)Z
    .registers 2
    .param p0, "cookie"    # I

    .line 586
    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    if-eq p0, v0, :cond_f

    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    if-eq p0, v0, :cond_f

    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist loadThemeValues()V
    .registers 5

    .line 495
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    .local v0, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 497
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeResources$FilterInfo;

    invoke-virtual {v2, v3}, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->newTarget(Lmiui/content/res/ThemeResources$FilterInfo;)V

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 499
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public static blacklist needProvisionTheme()Z
    .registers 2

    .line 128
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "scorpio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme_magic/disable_provision_theme"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method


# virtual methods
.method public whitelist checkUpdate()J
    .registers 7

    .line 256
    sget-boolean v0, Lmiui/content/res/ThemeResources;->sIsZygote:Z

    if-nez v0, :cond_64

    .line 257
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->checkUpdate()J

    move-result-wide v0

    .line 258
    .local v0, "updatedTime":J
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    .line 259
    iput-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    .line 260
    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->initBasePaths()V

    .line 261
    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->loadThemeValues()V

    .line 262
    iput-boolean v3, p0, Lmiui/content/res/ThemeResources;->mHasInitedDefaultValue:Z

    .line 265
    :cond_1b
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    if-nez v2, :cond_2b

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2b
    const/4 v3, 0x1

    :cond_2c
    iput-boolean v3, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    .line 266
    if-eqz v3, :cond_64

    .line 267
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iget-object v2, v2, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-object v2, v2, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v3, "/product/media/theme/provision/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {}, Lmiui/content/res/ThemeResources;->needProvisionTheme()Z

    move-result v2

    if-nez v2, :cond_56

    .line 268
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iget-object v2, v2, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    .line 269
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    .line 271
    :cond_56
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    .line 274
    .end local v0    # "updatedTime":J
    :cond_64
    iget-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    return-wide v0
.end method

.method protected whitelist getFilterInfos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 317
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected whitelist getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;
    .param p3, "fallbackPkgName"    # Ljava/lang/String;

    .line 332
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 333
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lmiui/content/res/ThemeResources;->getThemeFileWithFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected whitelist getThemeFileNonFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 321
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .line 300
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 301
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p2, :cond_14

    .line 302
    const/4 v1, 0x0

    iget-wide v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    aput-wide v2, p2, v1

    .line 304
    :cond_14
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public blacklist getUpdateTime()J
    .registers 3

    .line 281
    iget-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    return-wide v0
.end method

.method public whitelist hasThemeFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 308
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 313
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .registers 8
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .line 444
    iget-boolean v0, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 448
    :cond_9
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v0, v0, Lmiui/content/res/ThemeResources$MetaData;->mSupportValue:Z

    if-nez v0, :cond_10

    return-void

    .line 450
    :cond_10
    const/4 v0, 0x0

    .line 451
    .local v0, "updateValues":Z
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v1

    .line 452
    .local v1, "filterInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FilterInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 453
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 454
    .local v3, "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    iget-boolean v4, p0, Lmiui/content/res/ThemeResources;->mNightMode:Z

    invoke-virtual {v3, p1, v4}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v4}, Lmiui/content/res/ThemeValues;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    .line 455
    iget-object v4, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {p2, v4}, Lmiui/content/res/ThemeValues;->putAll(Lmiui/content/res/ThemeValues;)V

    .line 456
    const/4 v0, 0x1

    .line 452
    .end local v3    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 459
    .end local v2    # "i":I
    :cond_3b
    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mHasInitedDefaultValue:Z

    if-nez v2, :cond_47

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_49

    :cond_47
    if-eqz v0, :cond_53

    .line 460
    :cond_49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/content/res/ThemeResources;->mHasInitedDefaultValue:Z

    .line 461
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    iget-object v3, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lmiui/content/res/ThemeValues;->mergeNewDefaultValueIfNeed(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    .line 463
    :cond_53
    return-void
.end method

.method public blacklist setNightModeEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 288
    iput-boolean p1, p0, Lmiui/content/res/ThemeResources;->mNightMode:Z

    .line 289
    iget-boolean v0, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v0, :cond_b

    .line 290
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    .line 292
    :cond_b
    return-void
.end method
