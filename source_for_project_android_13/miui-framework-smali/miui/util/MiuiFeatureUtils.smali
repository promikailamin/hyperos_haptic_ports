.class public Lmiui/util/MiuiFeatureUtils;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/MiuiFeatureUtils$ConfigReader;,
        Lmiui/util/MiuiFeatureUtils$Features;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/default.conf"

.field public static final whitelist FEATURE_COMPLETE_ANIMATION:Ljava/lang/String; = "feature_complete_animation"

.field public static final whitelist FEATURE_RUNTIME_BLUR:Ljava/lang/String; = "feature_runtime_blur"

.field public static final whitelist FEATURE_THUMBNAIL:Ljava/lang/String; = "feature_thumbnail"

.field private static final blacklist LITE_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/lite.conf"

.field private static final blacklist MIUISDK_FEATURE_PREFIX:Ljava/lang/String; = "ro.sys."

.field private static final blacklist MIUISDK_KEY:Ljava/lang/String; = "miuisdk"

.field private static final blacklist PRPPERTY:Ljava/lang/String; = "persist.sys.miui_feature_config"

.field private static final blacklist SYSTEM_KEY:Ljava/lang/String; = "system"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFeatureUtils"

.field private static blacklist sConfigFilePath:Ljava/lang/String;

.field private static blacklist sConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sIsLiteMode:Z

.field private static blacklist sIsLiteModeSupported:Z

.field private static blacklist sMiuisdkConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSystemConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    .line 36
    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 44
    :try_start_5
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->init()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 48
    goto :goto_13

    .line 45
    :catch_9
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 47
    const-string v0, "MiuiFeatureUtils"

    const-string v2, "Failed to initialize MiuiFeatureUtils!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_13
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static whitelist getLocalFeature(Landroid/content/Context;)Lmiui/util/MiuiFeatureUtils$Features;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "pkg":Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_7
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v1, :cond_1f

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 325
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 326
    .local v1, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v2, Lmiui/util/MiuiFeatureUtils$Features;

    invoke-direct {v2, v1}, Lmiui/util/MiuiFeatureUtils$Features;-><init>(Ljava/util/HashMap;)V

    return-object v2

    .line 329
    .end local v1    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get feature set for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist init()V
    .registers 6

    .line 224
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/miui_feature/default.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "/system/etc/miui_feature/lite.conf"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 226
    sput-boolean v2, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 230
    :cond_1d
    const-string v0, "persist.sys.miui_feature_config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 232
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 233
    sput-object v0, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 236
    :cond_36
    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 237
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 238
    sput-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 242
    :cond_4b
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 243
    new-instance v1, Lmiui/util/MiuiFeatureUtils$ConfigReader;

    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Lmiui/util/MiuiFeatureUtils$ConfigReader;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "reader":Lmiui/util/MiuiFeatureUtils$ConfigReader;
    invoke-virtual {v1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parse()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 245
    invoke-virtual {v1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->getConfigResult()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    .line 246
    if-eqz v4, :cond_7e

    .line 247
    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    sput-object v4, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    .line 248
    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    const-string v5, "miuisdk"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    sput-object v4, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    .line 251
    :cond_7e
    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 252
    sput-boolean v2, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    .line 254
    :cond_88
    const-string v2, "MiuiFeatureUtils"

    const-string v3, "Loaded and parsed feature configure file successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v1    # "reader":Lmiui/util/MiuiFeatureUtils$ConfigReader;
    :cond_8f
    return-void
.end method

.method public static whitelist isLiteMode()Z
    .registers 1

    .line 339
    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    return v0
.end method

.method public static whitelist isLiteModeSupported()Z
    .registers 1

    .line 348
    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    return v0
.end method

.method public static whitelist isLocalFeatureSupported(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    return p2

    .line 292
    :cond_7
    const/4 v0, 0x0

    .line 293
    .local v0, "pkg":Ljava/lang/String;
    if-eqz p0, :cond_e

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_e
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v1, :cond_33

    .line 297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 298
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 299
    .local v1, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_33

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 301
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_33

    .line 302
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 307
    .end local v1    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return p2
.end method

.method public static whitelist isSystemFeatureSupported(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    return p1

    .line 270
    :cond_7
    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    if-eqz v0, :cond_1c

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 272
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1c

    .line 273
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 276
    .end local v0    # "result":Ljava/lang/Boolean;
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get system feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return p1
.end method

.method public static blacklist setMiuisdkProperties()V
    .registers 6

    .line 359
    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 360
    return-void

    .line 364
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 365
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 366
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 367
    .local v3, "value":Ljava/lang/Boolean;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    if-eqz v3, :cond_47

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.sys."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_47} :catch_49

    .line 370
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Boolean;
    :cond_47
    goto :goto_d

    .line 373
    :cond_48
    goto :goto_51

    .line 371
    :catch_49
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFeatureUtils"

    const-string v2, "Failed to set miui sdk features."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_51
    return-void
.end method
