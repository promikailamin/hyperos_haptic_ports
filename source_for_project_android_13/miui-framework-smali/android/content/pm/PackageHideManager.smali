.class public Landroid/content/pm/PackageHideManager;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageHideManager$AppHideItem;,
        Landroid/content/pm/PackageHideManager$AppHideConfig;
    }
.end annotation


# static fields
.field private static final blacklist APP_HIDE_SWITCH_FILE:Ljava/lang/String; = "/data/system/app_hide_switch.xml"

.field private static final blacklist APP_HIDE_SWITCH_FILE_VERSION:I = 0x2

.field private static blacklist TAG:Ljava/lang/String;

.field private static blacklist appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

.field private static blacklist mFile:Ljava/io/File;

.field private static volatile blacklist sInstance:Landroid/content/pm/PackageHideManager;


# instance fields
.field private blacklist mShouldHideApks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageHideManager$AppHideItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Landroid/content/pm/PackageHideManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "isFirstBoot"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    .line 89
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->init(Z)V

    .line 90
    return-void
.end method

.method private blacklist clearUserAleadyInstalled(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 343
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 344
    .local v1, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    invoke-direct {p0, p1, v1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    .line 345
    .end local v1    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    goto :goto_a

    .line 346
    :cond_1a
    return-void
.end method

.method private blacklist clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 351
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_4
    iget-object v1, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    .line 352
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 353
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3b

    iget-object v3, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v3, :cond_3b

    .line 354
    iget-object v3, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    array-length v4, v3

    :goto_14
    if-ge v2, v4, :cond_3b

    aget-object v5, v3, v2

    .line 355
    .local v5, "path":Ljava/lang/String;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v6, :cond_38

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 356
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 358
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 360
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_38} :catch_3c

    .line 354
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 367
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3b
    goto :goto_3d

    .line 365
    :catch_3c
    move-exception v1

    .line 368
    :goto_3d
    return-void
.end method

.method public static blacklist getInstance(Z)Landroid/content/pm/PackageHideManager;
    .registers 3
    .param p0, "isFirstBoot"    # Z

    .line 78
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_17

    .line 79
    const-class v0, Landroid/content/pm/PackageHideManager;

    monitor-enter v0

    .line 80
    :try_start_7
    sget-object v1, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v1, :cond_12

    .line 81
    new-instance v1, Landroid/content/pm/PackageHideManager;

    invoke-direct {v1, p0}, Landroid/content/pm/PackageHideManager;-><init>(Z)V

    sput-object v1, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    .line 83
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 85
    :cond_17
    :goto_17
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-object v0
.end method

.method private blacklist init(Z)V
    .registers 5
    .param p1, "isFirstBoot"    # Z

    .line 93
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 94
    return-void

    .line 96
    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_hide_switch.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    .line 97
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->readAppHideConfig()V

    .line 98
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v1, 0x2

    if-nez v0, :cond_2a

    .line 99
    new-instance v0, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v0}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 100
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 101
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 102
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v1, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 104
    :cond_2a
    if-eqz p1, :cond_3c

    .line 105
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 106
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v1, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 107
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 108
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    goto :goto_55

    .line 109
    :cond_3c
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_55

    .line 111
    :cond_45
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    if-eq v0, v1, :cond_55

    .line 112
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v1, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 113
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 114
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    .line 116
    :cond_55
    :goto_55
    return-void
.end method

.method private blacklist initHideApks()V
    .registers 10

    .line 277
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 278
    const-string v0, "hidden_app_packagename_list"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "pkgNameList":[Ljava/lang/String;
    const-string v1, "hidden_app_path_list"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "appPathList":[Ljava/lang/String;
    if-eqz v0, :cond_37

    if-eqz v1, :cond_37

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_37

    .line 281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_37

    .line 282
    aget-object v3, v1, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "paths":[Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    aget-object v5, v0, v2

    new-instance v6, Landroid/content/pm/PackageHideManager$AppHideItem;

    aget-object v7, v0, v2

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v3}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v3    # "paths":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 286
    .end local v2    # "i":I
    :cond_37
    return-void
.end method

.method private blacklist isSystemServer()Z
    .registers 3

    .line 273
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isValidDevice()Z
    .registers 2

    .line 397
    const-string v0, "support_app_hiding"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private blacklist moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 259
    return v0

    .line 262
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_10

    if-eq v2, v3, :cond_10

    goto :goto_4

    .line 266
    :cond_10
    if-eq v2, v4, :cond_13

    .line 267
    return v0

    .line 269
    :cond_13
    return v3
.end method

.method private blacklist readAppHideConfig()V
    .registers 12

    .line 188
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    if-nez v0, :cond_5

    .line 189
    return-void

    .line 191
    :cond_5
    sget-object v0, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string v1, "start readAppHideConfig()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v0

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_10
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 196
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    goto :goto_3c

    .line 198
    :cond_1f
    sget-object v2, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/miui/Shell;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_29} :catch_1b1
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_29} :catch_192
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_29} :catch_173
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_29} :catch_154
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_134
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_29} :catch_114
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_f4
    .catchall {:try_start_10 .. :try_end_29} :catchall_f1

    .line 199
    .local v2, "bytes":[B
    if-nez v2, :cond_36

    .line 247
    if-eqz v1, :cond_33

    .line 248
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_1db

    goto :goto_33

    .line 250
    :catch_31
    move-exception v3

    goto :goto_34

    .line 251
    :cond_33
    :goto_33
    nop

    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_1db

    .line 200
    return-void

    .line 202
    :cond_36
    :try_start_36
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 204
    .end local v2    # "bytes":[B
    :goto_3c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 205
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v2}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 207
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "app-hide"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 209
    new-instance v5, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v5}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v5, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 210
    const-string v6, "isFunctionOpen"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 212
    sget-object v5, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const-string v6, "version"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 214
    sget-object v5, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const-string v6, "isHide"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 217
    :cond_82
    :goto_82
    invoke-direct {p0, v2}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 218
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 219
    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 220
    const-string v5, "package"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "path"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "path":Ljava/lang/String;
    const-string v7, "isHide"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 224
    .local v7, "isHide":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c7

    .line 225
    iget-object v8, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    new-instance v9, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v10, ";"

    .line 226
    invoke-static {v6, v10}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v5, v7, v10}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 225
    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_c7
    sget-object v8, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read item: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_e9} :catch_1b1
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_e9} :catch_192
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_e9} :catch_173
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_e9} :catch_154
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_e9} :catch_134
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_e9} :catch_114
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_e9} :catch_f4
    .catchall {:try_start_36 .. :try_end_e9} :catchall_f1

    .line 229
    nop

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "isHide":Z
    goto :goto_82

    .line 247
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_eb
    nop

    .line 248
    :try_start_ec
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_1d0
    .catchall {:try_start_ec .. :try_end_ef} :catchall_1db

    goto/16 :goto_1d2

    .line 246
    :catchall_f1
    move-exception v2

    goto/16 :goto_1d5

    .line 243
    :catch_f4
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    :try_start_f5
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_f5 .. :try_end_10d} :catchall_f1

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1d2

    .line 248
    :try_start_10f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_1d0
    .catchall {:try_start_10f .. :try_end_112} :catchall_1db

    goto/16 :goto_1d2

    .line 241
    :catch_114
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_115
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_115 .. :try_end_12d} :catchall_f1

    .line 247
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-eqz v1, :cond_1d2

    .line 248
    :try_start_12f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_1d0
    .catchall {:try_start_12f .. :try_end_132} :catchall_1db

    goto/16 :goto_1d2

    .line 239
    :catch_134
    move-exception v2

    .line 240
    .local v2, "e":Ljava/io/IOException;
    :try_start_135
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catchall {:try_start_135 .. :try_end_14d} :catchall_f1

    .line 247
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1d2

    .line 248
    :try_start_14f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_1d0
    .catchall {:try_start_14f .. :try_end_152} :catchall_1db

    goto/16 :goto_1d2

    .line 237
    :catch_154
    move-exception v2

    .line 238
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_155
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catchall {:try_start_155 .. :try_end_16d} :catchall_f1

    .line 247
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_1d2

    .line 248
    :try_start_16f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_1d0
    .catchall {:try_start_16f .. :try_end_172} :catchall_1db

    goto :goto_1d2

    .line 235
    :catch_173
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_174
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catchall {:try_start_174 .. :try_end_18c} :catchall_f1

    .line 247
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    if-eqz v1, :cond_1d2

    .line 248
    :try_start_18e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_1d0
    .catchall {:try_start_18e .. :try_end_191} :catchall_1db

    goto :goto_1d2

    .line 233
    :catch_192
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_193
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_193 .. :try_end_1ab} :catchall_f1

    .line 247
    .end local v2    # "e":Ljava/lang/NullPointerException;
    if-eqz v1, :cond_1d2

    .line 248
    :try_start_1ad
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b0} :catch_1d0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_1db

    goto :goto_1d2

    .line 231
    :catch_1b1
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_1b2
    sget-object v3, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ca
    .catchall {:try_start_1b2 .. :try_end_1ca} :catchall_f1

    .line 247
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    if-eqz v1, :cond_1d2

    .line 248
    :try_start_1cc
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_1d0
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_1db

    goto :goto_1d2

    .line 250
    :catch_1d0
    move-exception v2

    .line 252
    goto :goto_1d3

    .line 251
    :cond_1d2
    :goto_1d2
    nop

    .line 253
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_1d3
    :try_start_1d3
    monitor-exit v0
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_1db

    .line 254
    return-void

    .line 247
    .restart local v1    # "stream":Ljava/io/InputStream;
    :goto_1d5
    if-eqz v1, :cond_1df

    .line 248
    :try_start_1d7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_1dd
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_1db

    goto :goto_1df

    .line 253
    .end local v1    # "stream":Ljava/io/InputStream;
    :catchall_1db
    move-exception v1

    goto :goto_1e2

    .line 250
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_1dd
    move-exception v3

    goto :goto_1e0

    .line 251
    :cond_1df
    :goto_1df
    nop

    .line 252
    :goto_1e0
    nop

    .end local p0    # "this":Landroid/content/pm/PackageHideManager;
    :try_start_1e1
    throw v2

    .line 253
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/content/pm/PackageHideManager;
    :goto_1e2
    monitor-exit v0
    :try_end_1e3
    .catchall {:try_start_1e1 .. :try_end_1e3} :catchall_1db

    throw v1
.end method

.method private blacklist writeAppHideConfig()Z
    .registers 11

    .line 119
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 120
    return v1

    .line 122
    :cond_6
    sget-object v0, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string v2, "start writeAppHideConfig()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "stream":Ljava/io/OutputStream;
    const/4 v2, 0x1

    .line 125
    .local v2, "result":Z
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 126
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_.bak"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_43
    nop

    .line 128
    .local v3, "tmpPath":Ljava/lang/String;
    :try_start_44
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 129
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_57

    .line 131
    :cond_51
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v4

    .line 134
    :goto_57
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 135
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 136
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    const-string v5, "app-hide"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v5, "isFunctionOpen"

    sget-object v7, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v7, v7, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    const-string v5, "version"

    sget-object v7, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v7, v7, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const-string v5, "isHide"

    sget-object v7, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v7, v7, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    iget-object v5, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v5, :cond_e8

    .line 144
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a2
    :goto_a2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 145
    .local v7, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-object v8, v7, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a2

    .line 146
    invoke-virtual {v7}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 147
    goto :goto_a2

    .line 149
    :cond_c1
    const-string v8, "item"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v8, "package"

    iget-object v9, v7, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const-string v8, "path"

    invoke-virtual {v7}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string v8, "isHide"

    iget-boolean v9, v7, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const-string v8, "item"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    nop

    .end local v7    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    goto :goto_a2

    .line 156
    :cond_e8
    const-string v5, "app-hide"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 158
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v5

    if-nez v5, :cond_102

    .line 159
    move-object v5, v0

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    .line 160
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 159
    invoke-static {v3, v1, v5}, Landroid/miui/Shell;->writeByteArray(Ljava/lang/String;Z[B)Z

    move-result v1
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_101} :catch_109
    .catchall {:try_start_44 .. :try_end_101} :catchall_107

    move v2, v1

    .line 166
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_102
    nop

    .line 168
    :try_start_103
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_118

    goto :goto_11a

    .line 166
    :catchall_107
    move-exception v1

    goto :goto_13b

    .line 162
    :catch_109
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    :try_start_10a
    sget-object v4, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_111
    .catchall {:try_start_10a .. :try_end_111} :catchall_107

    .line 164
    const/4 v2, 0x0

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_11a

    .line 168
    :try_start_114
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_117} :catch_118

    goto :goto_11a

    .line 169
    :catch_118
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11a
    :goto_11a
    if-eqz v2, :cond_13a

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 176
    :try_start_122
    sget-object v1, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v1
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_135

    .line 177
    :try_start_125
    sget-object v4, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/miui/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v2, v4

    .line 178
    monitor-exit v1

    .line 182
    goto :goto_13a

    .line 178
    :catchall_132
    move-exception v4

    monitor-exit v1
    :try_end_134
    .catchall {:try_start_125 .. :try_end_134} :catchall_132

    .end local v0    # "stream":Ljava/io/OutputStream;
    .end local v2    # "result":Z
    .end local v3    # "tmpPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageHideManager;
    :try_start_134
    throw v4
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_135} :catch_135

    .line 179
    .restart local v0    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "result":Z
    .restart local v3    # "tmpPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageHideManager;
    :catch_135
    move-exception v1

    .line 180
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 181
    const/4 v2, 0x0

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_13a
    :goto_13a
    return v2

    .line 166
    :goto_13b
    if-eqz v0, :cond_143

    .line 168
    :try_start_13d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_141

    .line 171
    goto :goto_143

    .line 169
    :catch_141
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 173
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_143
    :goto_143
    throw v1
.end method


# virtual methods
.method public blacklist getIgnoreApkPathList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 317
    iget-object v1, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 318
    .local v2, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-boolean v3, v2, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v3, :cond_37

    iget-object v3, v2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 319
    iget-object v3, v2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v4, :cond_37

    aget-object v6, v3, v5

    .line 320
    .local v6, "path":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v6    # "path":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 323
    .end local v2    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_37
    goto :goto_15

    .line 325
    :cond_38
    return-object v0
.end method

.method public blacklist getIgnoreApkPkgNameList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v1, :cond_21

    .line 331
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 332
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 333
    .local v3, "pkg":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_11

    .line 336
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_21
    return-object v0
.end method

.method public blacklist isAppHide()Z
    .registers 2

    .line 378
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_16

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-eqz v0, :cond_16

    .line 380
    const/4 v0, 0x1

    return v0

    .line 382
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppHide(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1f

    .line 389
    :cond_e
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 390
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v0, :cond_1e

    iget-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v2, :cond_1e

    .line 391
    const/4 v1, 0x1

    return v1

    .line 393
    :cond_1e
    return v1

    .line 387
    .end local v0    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_1f
    :goto_1f
    return v1
.end method

.method public blacklist isFunctionOpen()Z
    .registers 2

    .line 371
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_10

    .line 372
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setHideApp(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hide"    # Z

    .line 300
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v0, :cond_12

    goto :goto_2d

    .line 303
    :cond_12
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 304
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v0, :cond_2c

    iget-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eq v2, p3, :cond_2c

    .line 305
    iput-boolean p3, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    .line 306
    if-nez p3, :cond_27

    .line 307
    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    .line 309
    :cond_27
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v1

    return v1

    .line 311
    :cond_2c
    return v1

    .line 301
    .end local v0    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist setHideApp(Landroid/content/Context;Z)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hide"    # Z

    .line 289
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_1d

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-ne v0, p2, :cond_f

    goto :goto_1d

    .line 292
    :cond_f
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean p2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 293
    if-nez p2, :cond_18

    .line 294
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;)V

    .line 296
    :cond_18
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v0

    return v0

    .line 290
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method
