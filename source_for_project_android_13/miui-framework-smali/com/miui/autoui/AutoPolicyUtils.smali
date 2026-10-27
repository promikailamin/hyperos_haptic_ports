.class public Lcom/miui/autoui/AutoPolicyUtils;
.super Ljava/lang/Object;
.source "AutoPolicyUtils.java"


# static fields
.field public static final blacklist ACTIVITY_RULE:Ljava/lang/String; = "activityRule"

.field public static final blacklist ANY:Ljava/lang/String; = "*"

.field private static final blacklist AUTO_DPI_DEFAULT_BITMAP_DENSITY:Ljava/lang/String; = "defaultBitmapDensity"

.field private static final blacklist AUTO_DPI_DENSITY:Ljava/lang/String; = "density"

.field private static final blacklist AUTO_DPI_DENSITY_DPI:Ljava/lang/String; = "densityDpi"

.field private static final blacklist AUTO_DPI_SCALED_DENSITY:Ljava/lang/String; = "scaledDensity"

.field public static final blacklist BG_HEIGHT_THRESHOLD:F = 0.7f

.field private static final blacklist CALLER_FROM_RN:Ljava/lang/String; = "com.facebook.react.uimanager.DisplayMetricsHolder"

.field private static final blacklist DEFAULT_AUTO_UI_POLICY_TYPE:I = -0x1

.field public static final blacklist ENABLE:Ljava/lang/String; = "enable"

.field private static final blacklist EPSILON:F = 1.0E-6f

.field private static final blacklist IS_AUTO_DPI:Ljava/lang/String; = "isAutoDpi"

.field private static final blacklist MIN_PARAMS_SIZE:I = 0x5

.field public static final blacklist OPTIMIZE_WEBVIEW:Ljava/lang/String; = "optimizeWebView"

.field private static final blacklist SCREEN_CONFIG:Ljava/lang/String; = "ro.config.miui_screen_ratio"

.field public static final blacklist SKIPPED_ACTIVITY_RULE:Ljava/lang/String; = "skippedActivityRule"

.field private static final blacklist SKIPPED_APP_CONFIG_CHANGE:Ljava/lang/String; = "skippedAppConfigChange"

.field private static final blacklist SPLITTER_ACTIVITY_NAME:Ljava/lang/String; = "/"

.field private static final blacklist SPLITTER_COLON:Ljava/lang/String; = ":"

.field private static final blacklist SPLITTER_COMMA:Ljava/lang/String; = ","

.field private static final blacklist SPLITTER_HYPHEN_MINUS:Ljava/lang/String; = "-"

.field private static final blacklist SPLITTER_SEMICOLON:Ljava/lang/String; = ";"

.field public static final blacklist STATE_FLAT:I = 0x2

.field public static final blacklist STATE_FOLD:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AutoUI_AutoPolicyUtils"

.field public static final blacklist VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final blacklist VIEW_POLICY_AUTO_COLUMNS:I = 0x2

.field public static final blacklist VIEW_POLICY_BITMAP_AVERAGE_COLOR:I = 0x11

.field public static final blacklist VIEW_POLICY_BITMAP_ORG:I = 0x12

.field public static final blacklist VIEW_POLICY_BITMAP_ORIGINAL_SPLIT:I = 0xe

.field public static final blacklist VIEW_POLICY_BOTTOM:I = 0x5

.field public static final blacklist VIEW_POLICY_CENTER_ORIGINAL_SIZE:I = 0x10

.field public static final blacklist VIEW_POLICY_DEFAULT:I = 0x0

.field public static final blacklist VIEW_POLICY_FLOAT:I = 0x6

.field public static final blacklist VIEW_POLICY_IGNORE:I = 0x3

.field public static final blacklist VIEW_POLICY_KEEP_ORIGINAL_HEIGHT:I = 0xf

.field public static final blacklist VIEW_POLICY_MATCH_PARENT:I = 0x8

.field public static final blacklist VIEW_POLICY_MATCH_PARENT_HEIGHT:I = 0xa

.field public static final blacklist VIEW_POLICY_MATCH_PARENT_WIDTH:I = 0x9

.field public static final blacklist VIEW_POLICY_ORIGINAL_WIDTH:I = 0x13

.field public static final blacklist VIEW_POLICY_STRETCH:I = 0x1

.field public static final blacklist VIEW_POLICY_TOP:I = 0x4

.field public static final blacklist VIEW_POLICY_TOP_PARENT:I = 0x7

.field public static final blacklist VIEW_POLICY_WRAP_CONTENT:I = 0xb

.field public static final blacklist VIEW_POLICY_WRAP_CONTENT_HEIGHT:I = 0xd

.field public static final blacklist VIEW_POLICY_WRAP_CONTENT_WIDTH:I = 0xc

.field private static blacklist sActivityPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sActivityViewPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sAutoPolicyUtils:Lcom/miui/autoui/AutoPolicyUtils;

.field private static blacklist sCompRate:F

.field private static blacklist sRateDividend:F

.field private static blacklist sSkippedActivityPolicy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCompDensity:F

.field private blacklist mCompHeightPx:I

.field private blacklist mCompWidthPx:I

.field private blacklist mDefaultBitmapDensity:I

.field private blacklist mDensity:F

.field private blacklist mDensityDpi:I

.field private blacklist mDisplayHeightPx:I

.field private blacklist mDisplayWidthPx:I

.field private blacklist mIsAutoDpi:Z

.field private blacklist mIsForceScreenRealSize:Z

.field private blacklist mLastActivityName:Ljava/lang/String;

.field private blacklist mOptimizeWebView:Z

.field private blacklist mScaledDensity:F

.field private blacklist mSkippedAppConfigChange:Z

.field private blacklist mState:I

.field private blacklist mWindowMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sSkippedActivityPolicy:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityViewPolicy:Ljava/util/Map;

    .line 86
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/miui/autoui/AutoPolicyUtils;->sCompRate:F

    .line 87
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/miui/autoui/AutoPolicyUtils;->sRateDividend:F

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mWindowMode:I

    .line 113
    return-void
.end method

.method public static blacklist getCompRate()F
    .registers 1

    .line 127
    sget v0, Lcom/miui/autoui/AutoPolicyUtils;->sCompRate:F

    return v0
.end method

.method public static blacklist getInstance()Lcom/miui/autoui/AutoPolicyUtils;
    .registers 2

    .line 116
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sAutoPolicyUtils:Lcom/miui/autoui/AutoPolicyUtils;

    if-nez v0, :cond_17

    .line 117
    const-class v0, Lcom/miui/autoui/AutoPolicyUtils;

    monitor-enter v0

    .line 118
    :try_start_7
    sget-object v1, Lcom/miui/autoui/AutoPolicyUtils;->sAutoPolicyUtils:Lcom/miui/autoui/AutoPolicyUtils;

    if-nez v1, :cond_12

    .line 119
    new-instance v1, Lcom/miui/autoui/AutoPolicyUtils;

    invoke-direct {v1}, Lcom/miui/autoui/AutoPolicyUtils;-><init>()V

    sput-object v1, Lcom/miui/autoui/AutoPolicyUtils;->sAutoPolicyUtils:Lcom/miui/autoui/AutoPolicyUtils;

    .line 121
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 123
    :cond_17
    :goto_17
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sAutoPolicyUtils:Lcom/miui/autoui/AutoPolicyUtils;

    return-object v0
.end method

.method public static blacklist getRateDividend()F
    .registers 1

    .line 138
    sget v0, Lcom/miui/autoui/AutoPolicyUtils;->sRateDividend:F

    return v0
.end method

.method private blacklist isAutoDpiPolicy(Ljava/lang/String;)Z
    .registers 4
    .param p1, "activityName"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1}, Lcom/miui/autoui/AutoPolicyUtils;->getActivityPolicy(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private blacklist parseActivityRule(Ljava/lang/String;)V
    .registers 11
    .param p1, "activityRule"    # Ljava/lang/String;

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 365
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "activities":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_44

    .line 367
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_44

    aget-object v4, v0, v3

    .line 368
    .local v4, "activity":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "policy":[Ljava/lang/String;
    :try_start_1c
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_3c

    .line 371
    sget-object v6, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    aget-object v8, v5, v2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    array-length v6, v5

    const/4 v7, 0x2

    if-le v6, v7, :cond_3c

    .line 373
    aget-object v6, v5, v2

    aget-object v7, v5, v7

    invoke-direct {p0, v6, v7}, Lcom/miui/autoui/AutoPolicyUtils;->parseActivityViewRule(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_3c} :catch_3d

    .line 378
    :cond_3c
    goto :goto_41

    .line 376
    :catch_3d
    move-exception v6

    .line 377
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 367
    .end local v4    # "activity":Ljava/lang/String;
    .end local v5    # "policy":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 382
    .end local v0    # "activities":[Ljava/lang/String;
    :cond_44
    return-void
.end method

.method private blacklist parseActivityViewRule(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "viewPolicy"    # Ljava/lang/String;

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 386
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "views":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_47

    .line 388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v1, "viewsPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_42

    aget-object v5, v0, v4

    .line 390
    .local v5, "view":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "policy":[Ljava/lang/String;
    :try_start_27
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_3a

    .line 393
    aget-object v7, v6, v3

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_3a} :catch_3b

    .line 397
    :cond_3a
    goto :goto_3f

    .line 395
    :catch_3b
    move-exception v7

    .line 396
    .local v7, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 389
    .end local v5    # "view":Ljava/lang/String;
    .end local v6    # "policy":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 399
    :cond_42
    sget-object v2, Lcom/miui/autoui/AutoPolicyUtils;->sActivityViewPolicy:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .end local v0    # "views":[Ljava/lang/String;
    .end local v1    # "viewsPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_47
    return-void
.end method

.method private blacklist parseAutoDpi(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 422
    const-string v0, "isAutoDpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mIsAutoDpi:Z

    .line 423
    return-void
.end method

.method private blacklist parseAutoUI(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 414
    const-string v0, "defaultBitmapDensity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDefaultBitmapDensity:I

    .line 415
    const-string v0, "densityDpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDensityDpi:I

    .line 416
    const-string v0, "density"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDensity:F

    .line 417
    const-string v0, "scaledDensity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mScaledDensity:F

    .line 418
    const-string v0, "optimizeWebView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mOptimizeWebView:Z

    .line 419
    return-void
.end method

.method private blacklist parseSkippedActivityRule(Ljava/lang/String;)V
    .registers 5
    .param p1, "skippedActivityRule"    # Ljava/lang/String;

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 406
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "skipped":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_18

    .line 408
    sget-object v1, Lcom/miui/autoui/AutoPolicyUtils;->sSkippedActivityPolicy:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 411
    .end local v0    # "skipped":[Ljava/lang/String;
    :cond_18
    return-void
.end method

.method private blacklist policyNeedStretch(I)Z
    .registers 3
    .param p1, "policy"    # I

    .line 184
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist setCompRate(F)V
    .registers 2
    .param p0, "compRate"    # F

    .line 131
    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_8

    return-void

    .line 133
    :cond_8
    sput p0, Lcom/miui/autoui/AutoPolicyUtils;->sCompRate:F

    .line 134
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    sput v0, Lcom/miui/autoui/AutoPolicyUtils;->sRateDividend:F

    .line 135
    return-void
.end method

.method private blacklist updateCompRateByScreen()V
    .registers 5

    .line 247
    const-string v0, "ro.config.miui_screen_ratio"

    const-string v1, "0.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "screenConfig":Ljava/lang/String;
    :try_start_8
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Lcom/miui/autoui/AutoPolicyUtils;->setCompRate(F)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_f} :catch_10

    .line 252
    goto :goto_18

    .line 250
    :catch_10
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "AutoUI_AutoPolicyUtils"

    const-string v3, "updateCompRateByScreen: NumberFormatException"

    invoke-static {v2, v3}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_18
    return-void
.end method

.method private blacklist useAutoDpi(Z)Z
    .registers 4
    .param p1, "isAutoDpiPolicy"    # Z

    .line 312
    iget-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mIsAutoDpi:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDensityDpi:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mScaledDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    :cond_f
    if-eqz p1, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public blacklist adjustSizeIfNeeded(Landroid/graphics/Point;Ljava/lang/String;)V
    .registers 4
    .param p1, "outSize"    # Landroid/graphics/Point;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 316
    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v0, p2}, Lcom/miui/autoui/AutoPolicyUtils;->getDisplayInfoWidth(ILjava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 317
    return-void
.end method

.method public blacklist applyConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 10
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 331
    if-eqz p1, :cond_49

    invoke-virtual {p0}, Lcom/miui/autoui/AutoPolicyUtils;->isInOtherMode()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_49

    .line 334
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mLastActivityName:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v0, p2

    .line 335
    .local v0, "name":Ljava/lang/String;
    :goto_13
    iput-object v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mLastActivityName:Ljava/lang/String;

    .line 336
    invoke-virtual {p0, v0}, Lcom/miui/autoui/AutoPolicyUtils;->needStretch(Ljava/lang/String;)Z

    move-result v1

    .line 337
    .local v1, "isNeedStretch":Z
    iget v2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompDensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_21

    .line 338
    return-void

    .line 340
    :cond_21
    invoke-direct {p0, v0}, Lcom/miui/autoui/AutoPolicyUtils;->isAutoDpiPolicy(Ljava/lang/String;)Z

    move-result v2

    .line 341
    .local v2, "isAutoDpiPolicy":Z
    if-eqz v1, :cond_2c

    if-nez v2, :cond_2c

    iget v3, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompWidthPx:I

    goto :goto_2e

    :cond_2c
    iget v3, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    .line 342
    .local v3, "configWidth":I
    :goto_2e
    int-to-float v4, v3

    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompDensity:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 343
    .local v4, "widthWithDp":I
    iput v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 344
    iput v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 345
    invoke-direct {p0, v2}, Lcom/miui/autoui/AutoPolicyUtils;->useAutoDpi(Z)Z

    move-result v5

    if-eqz v5, :cond_40

    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDensityDpi:I

    goto :goto_46

    :cond_40
    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompDensity:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    :goto_46
    iput v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 346
    return-void

    .line 332
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "isNeedStretch":Z
    .end local v2    # "isAutoDpiPolicy":Z
    .end local v3    # "configWidth":I
    .end local v4    # "widthWithDp":I
    :cond_49
    :goto_49
    return-void
.end method

.method public blacklist getActivityPolicy(Ljava/lang/String;)I
    .registers 7
    .param p1, "fullActivityName"    # Ljava/lang/String;

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "*"

    const/4 v2, -0x1

    if-eqz v0, :cond_2d

    .line 143
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 144
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    return v0

    .line 147
    :cond_2c
    return v2

    .line 150
    :cond_2d
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "activityNameSplits":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_38

    .line 152
    return v2

    .line 154
    :cond_38
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v3, v0, v3

    .line 156
    .local v3, "activityName":Ljava/lang/String;
    sget-object v4, Lcom/miui/autoui/AutoPolicyUtils;->sSkippedActivityPolicy:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 157
    return v2

    .line 160
    :cond_45
    sget-object v4, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 161
    sget-object v2, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 164
    :cond_5a
    sget-object v1, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 165
    sget-object v1, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 167
    :cond_6f
    return v2
.end method

.method public blacklist getCompScreenHeight()I
    .registers 2

    .line 267
    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompHeightPx:I

    return v0
.end method

.method public blacklist getCompScreenWidth()I
    .registers 2

    .line 263
    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompWidthPx:I

    return v0
.end method

.method public blacklist getDisplayInfoWidth(ILjava/lang/String;)I
    .registers 7
    .param p1, "width"    # I
    .param p2, "activityName"    # Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Lcom/miui/autoui/AutoPolicyUtils;->isInOtherMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    return p1

    .line 323
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mLastActivityName:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v0, p2

    .line 324
    .local v0, "name":Ljava/lang/String;
    :goto_11
    iput-object v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mLastActivityName:Ljava/lang/String;

    .line 325
    invoke-direct {p0, v0}, Lcom/miui/autoui/AutoPolicyUtils;->isAutoDpiPolicy(Ljava/lang/String;)Z

    move-result v1

    .line 326
    .local v1, "isAutoDpiPolicy":Z
    invoke-virtual {p0, v0}, Lcom/miui/autoui/AutoPolicyUtils;->needStretch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    const/4 v2, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v2, 0x1

    .line 327
    .local v2, "needStretch":Z
    :goto_23
    if-eqz v2, :cond_28

    iget v3, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompWidthPx:I

    goto :goto_29

    :cond_28
    move v3, p1

    :goto_29
    return v3
.end method

.method public blacklist getDisplayMetrics(Landroid/util/DisplayMetrics;Ljava/lang/String;)Landroid/util/DisplayMetrics;
    .registers 10
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/miui/autoui/AutoPolicyUtils;->isInOtherMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 284
    return-object p1

    .line 287
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mLastActivityName:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v0, p2

    .line 288
    .local v0, "name":Ljava/lang/String;
    :goto_11
    iput-object v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mLastActivityName:Ljava/lang/String;

    .line 289
    iget-boolean v1, p0, Lcom/miui/autoui/AutoPolicyUtils;->mIsForceScreenRealSize:Z

    const/4 v2, 0x0

    if-nez v1, :cond_20

    invoke-virtual {p0, v0}, Lcom/miui/autoui/AutoPolicyUtils;->needStretch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    move v1, v2

    .line 290
    .local v1, "isNeedStretch":Z
    :goto_21
    iput-boolean v2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mIsForceScreenRealSize:Z

    .line 291
    if-nez v1, :cond_2c

    iget v2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v2, v3, :cond_2c

    .line 292
    return-object p1

    .line 294
    :cond_2c
    invoke-direct {p0, v0}, Lcom/miui/autoui/AutoPolicyUtils;->isAutoDpiPolicy(Ljava/lang/String;)Z

    move-result v2

    .line 295
    .local v2, "isAutoDpiPolicy":Z
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 296
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, p1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 297
    if-eqz v1, :cond_3f

    if-nez v2, :cond_3f

    iget v4, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompWidthPx:I

    goto :goto_41

    :cond_3f
    iget v4, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    .line 298
    .local v4, "width":I
    :goto_41
    iput v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 299
    iput v4, v3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 301
    invoke-direct {p0, v2}, Lcom/miui/autoui/AutoPolicyUtils;->useAutoDpi(Z)Z

    move-result v5

    if-eqz v5, :cond_4e

    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mScaledDensity:F

    goto :goto_50

    :cond_4e
    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompDensity:F

    :goto_50
    iput v5, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 302
    invoke-direct {p0, v2}, Lcom/miui/autoui/AutoPolicyUtils;->useAutoDpi(Z)Z

    move-result v5

    if-eqz v5, :cond_5b

    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDensity:F

    goto :goto_5d

    :cond_5b
    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompDensity:F

    :goto_5d
    iput v5, v3, Landroid/util/DisplayMetrics;->density:F

    .line 303
    invoke-direct {p0, v2}, Lcom/miui/autoui/AutoPolicyUtils;->useAutoDpi(Z)Z

    move-result v5

    if-eqz v5, :cond_68

    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDensityDpi:I

    goto :goto_6e

    :cond_68
    iget v5, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompDensity:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    :goto_6e
    iput v5, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 304
    return-object v3
.end method

.method public blacklist getScreenRealWidth()I
    .registers 2

    .line 271
    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    return v0
.end method

.method public blacklist getViewPolicy(Ljava/lang/String;Landroid/view/View;)I
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 188
    const/4 v0, 0x0

    if-eqz p2, :cond_9b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_9b

    .line 191
    :cond_b
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "activityNameSplits":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    .line 193
    return v0

    .line 195
    :cond_16
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    .line 196
    .local v2, "activityName":Ljava/lang/String;
    sget-object v3, Lcom/miui/autoui/AutoPolicyUtils;->sActivityViewPolicy:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 197
    .local v4, "viewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v5, "*"

    if-nez v4, :cond_2d

    .line 198
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    .line 200
    :cond_2d
    if-eqz v4, :cond_9a

    .line 201
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 202
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 203
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 204
    .local v8, "value":I
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5d

    .line 205
    return v8

    .line 207
    :cond_5d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_99

    .line 208
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_80

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_80

    goto :goto_99

    .line 211
    :cond_80
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 212
    .local v9, "r":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v10

    .line 213
    .local v10, "id":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_98

    .line 215
    :try_start_8b
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, "entryName":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_93
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8b .. :try_end_93} :catch_97

    if-eqz v12, :cond_96

    .line 217
    return v8

    .line 221
    .end local v11    # "entryName":Ljava/lang/String;
    :cond_96
    goto :goto_98

    .line 219
    :catch_97
    move-exception v11

    .line 223
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":I
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v10    # "id":I
    :cond_98
    :goto_98
    goto :goto_37

    .line 209
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "value":I
    :cond_99
    :goto_99
    return v8

    .line 225
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":I
    :cond_9a
    return v0

    .line 189
    .end local v1    # "activityNameSplits":[Ljava/lang/String;
    .end local v2    # "activityName":Ljava/lang/String;
    .end local v4    # "viewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9b
    :goto_9b
    return v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 461
    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mWindowMode:I

    return v0
.end method

.method public blacklist initValues(Landroid/content/Context;)V
    .registers 6
    .param p1, "appContext"    # Landroid/content/Context;

    .line 229
    invoke-direct {p0}, Lcom/miui/autoui/AutoPolicyUtils;->updateCompRateByScreen()V

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 231
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    .line 232
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayHeightPx:I

    .line 233
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 234
    .local v1, "displayDensity":F
    iput v1, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompDensity:F

    .line 235
    iget v2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompWidthPx:I

    .line 236
    iget v2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayHeightPx:I

    iput v2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompHeightPx:I

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initValues: mDisplayWidthPx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDisplayHeightPx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayHeightPx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDisplayDensity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRioWidthPx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompWidthPx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRioHeightPx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompHeightPx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getCompRate():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    const-string v3, "AutoUI_AutoPolicyUtils"

    invoke-static {v3, v2}, Lcom/miui/autoui/AutoUILogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public blacklist initialiseAutoPolicyUtils(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "config"    # Landroid/os/Bundle;

    .line 349
    if-nez p1, :cond_3

    .line 350
    return-void

    .line 352
    :cond_3
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 353
    const-string v0, "skippedAppConfigChange"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mSkippedAppConfigChange:Z

    .line 354
    const-string v0, "activityRule"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "activityRule":Ljava/lang/String;
    const-string v1, "skippedActivityRule"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "skippedActivityRule":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/autoui/AutoPolicyUtils;->parseActivityRule(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v1}, Lcom/miui/autoui/AutoPolicyUtils;->parseSkippedActivityRule(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoPolicyUtils;->parseAutoUI(Landroid/os/Bundle;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoPolicyUtils;->parseAutoDpi(Landroid/os/Bundle;)V

    .line 361
    .end local v0    # "activityRule":Ljava/lang/String;
    .end local v1    # "skippedActivityRule":Ljava/lang/String;
    :cond_2b
    return-void
.end method

.method public blacklist interceptDisplayMetrics(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 275
    .local p1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.uimanager.DisplayMetricsHolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mIsForceScreenRealSize:Z

    goto :goto_15

    .line 278
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mIsForceScreenRealSize:Z

    .line 280
    :goto_15
    return-void
.end method

.method public blacklist isActivityEnable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "activityName"    # Ljava/lang/String;

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "*"

    if-eqz v0, :cond_f

    .line 435
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 438
    :cond_f
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sSkippedActivityPolicy:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 439
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_19
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 442
    const/4 v0, 0x1

    return v0

    .line 445
    :cond_23
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isExpandState()Z
    .registers 3

    .line 449
    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isInOtherMode()Z
    .registers 3

    .line 457
    invoke-virtual {p0}, Lcom/miui/autoui/AutoPolicyUtils;->isExpandState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/miui/autoui/AutoPolicyUtils;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method public blacklist needOptimizeWebView()Z
    .registers 2

    .line 426
    iget-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mOptimizeWebView:Z

    return v0
.end method

.method public blacklist needStretch(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    sget-object v0, Lcom/miui/autoui/AutoPolicyUtils;->sActivityPolicy:Ljava/util/Map;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 174
    :cond_f
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "activityNameSplits":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_22

    .line 176
    invoke-virtual {p0, p1}, Lcom/miui/autoui/AutoPolicyUtils;->getActivityPolicy(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/autoui/AutoPolicyUtils;->policyNeedStretch(I)Z

    move-result v1

    return v1

    .line 178
    :cond_22
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 179
    .local v1, "activityName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/miui/autoui/AutoPolicyUtils;->getActivityPolicy(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/autoui/AutoPolicyUtils;->policyNeedStretch(I)Z

    move-result v2

    return v2
.end method

.method public blacklist refreshValues(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 256
    iput p1, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayWidthPx:I

    .line 257
    iput p2, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayHeightPx:I

    .line 258
    int-to-float v0, p1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompWidthPx:I

    .line 259
    iget v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mDisplayHeightPx:I

    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mCompHeightPx:I

    .line 260
    return-void
.end method

.method public blacklist setWindowMode(I)V
    .registers 2
    .param p1, "windowMode"    # I

    .line 465
    iput p1, p0, Lcom/miui/autoui/AutoPolicyUtils;->mWindowMode:I

    .line 466
    return-void
.end method

.method public blacklist skippedAppConfigChange()Z
    .registers 2

    .line 430
    iget-boolean v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mSkippedAppConfigChange:Z

    return v0
.end method

.method public blacklist verifyExpandState(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 453
    invoke-static {p1, p2}, Lcom/miui/autoui/utils/Utils;->isExpandState(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    iput v0, p0, Lcom/miui/autoui/AutoPolicyUtils;->mState:I

    .line 454
    return-void
.end method
