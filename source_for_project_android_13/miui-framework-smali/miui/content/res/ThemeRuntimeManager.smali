.class public Lmiui/content/res/ThemeRuntimeManager;
.super Ljava/lang/Object;
.source "ThemeRuntimeManager.java"


# static fields
.field public static final whitelist BUILTIN_ALARM_PATH:Ljava/lang/String; = "/system/media/audio/alarms/"

.field public static final whitelist BUILTIN_LOCKSCREEN_PATH:Ljava/lang/String; = "/system/media/lockscreen/"

.field public static final whitelist BUILTIN_NOTIFICATION_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field public static final whitelist BUILTIN_RINGTONE_PATH:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field public static final whitelist BUILTIN_ROOT_PATH:Ljava/lang/String; = "/system/media/"

.field public static final whitelist BUILTIN_WALLPAPER_PATH:Ljava/lang/String; = "/system/media/wallpaper/"

.field public static final whitelist DEFAULT_ALARM_FILE_PATH_RES_ID:I = -0x1

.field public static final whitelist DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I = -0x1

.field public static final whitelist DEFAULT_RINGTONE_FILE_PATH_RES_ID:I = -0x1

.field public static final whitelist DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I = -0x1

.field public static final whitelist DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I = -0x1

.field private static final blacklist DRM_RESULT:Ljava/lang/String; = "drm_result"

.field private static final blacklist DRM_VERSION:Ljava/lang/String; = "v2"

.field private static final blacklist KEY_DRM_VERSION:Ljava/lang/String; = "drm_version"

.field public static final whitelist RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

.field public static final whitelist RUNTIME_PATH_LOCKSCREEN:Ljava/lang/String; = "/data/system/theme/lock_wallpaper"

.field public static final whitelist RUNTIME_PATH_WALLPAPER:Ljava/lang/String; = "/data/system/theme/wallpaper"

.field public static final whitelist RUNTIME_PIC_FOLDER:Ljava/lang/String; = "/data/system/theme/"

.field private static final blacklist TAG:Ljava/lang/String; = "ThemeRuntimeManager"

.field private static final blacklist TEMP_ICON_FOLDER:Ljava/lang/String; = "/data/system/theme_magic/tempIcon/"

.field private static final blacklist THEME_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static blacklist sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_9

    const-string v0, "/data/system/theme/boots/bootanimation.zip"

    goto :goto_b

    :cond_9
    const-string v0, "/data/local/bootanimation.zip"

    :goto_b
    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public static blacklist createTempIconFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 80
    const-string v0, "/data/system/theme_magic/tempIcon/"

    const/4 v1, 0x0

    .line 81
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 82
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_5
    const-string v4, "android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 84
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 89
    :cond_32
    if-nez v2, :cond_53

    .line 90
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 92
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v2, v0

    .line 95
    :cond_53
    if-nez v2, :cond_5d

    .line 96
    const-string v0, "ThemeRuntimeManager"

    const-string v4, "can\'t get icon cache folder"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v3

    .line 101
    :cond_5d
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v0, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 102
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 103
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_73} :catch_7c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_73} :catch_77

    if-eqz v0, :cond_76

    move-object v3, v1

    :cond_76
    return-object v3

    .line 107
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_77
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7c
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 110
    :goto_81
    return-object v3
.end method

.method private static blacklist getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 117
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b4

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_15} :catch_1b
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_1f

    .line 121
    :catch_16
    move-exception v2

    .line 122
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-virtual {v2}, Landroid/system/ErrnoException;->printStackTrace()V

    goto :goto_20

    .line 119
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_1b
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 123
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1f
    nop

    .line 124
    :goto_20
    return-object v1
.end method


# virtual methods
.method public whitelist markGadgetUpdated()V
    .registers 7

    .line 128
    const-string v0, "clock_changed_time_"

    .line 129
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 130
    .local v1, "time":J
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 131
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 132
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 133
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "4x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 134
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 135
    return-void
.end method

.method public blacklist resetDefault(Ljava/util/Set;Ljava/lang/String;)V
    .registers 6
    .param p2, "drmResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 186
    .local p1, "pathMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lmiui/content/res/ThemeRuntimeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lmiui/content/res/ThemeRuntimeManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.CLEAR_THEME_RUNTIME_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    .line 191
    const-string v1, "drm_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 193
    .local v1, "pathArray":[Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 194
    const-string v2, "drm_delete_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .end local v1    # "pathArray":[Ljava/lang/String;
    :cond_2f
    const-string v1, "drm_version"

    const-string v2, "v3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    const-string v1, "/data/system/theme/lockstyle"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 200
    const-string v1, "/data/system/theme/lockscreen"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 201
    const-string v1, "/data/system/theme/miwallpaper"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 202
    :cond_53
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 203
    .local v1, "ws":Landroid/app/WallpaperManager;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clearWallpaper()V

    .line 206
    .end local v1    # "ws":Landroid/app/WallpaperManager;
    :cond_60
    const-string v1, "/data/system/theme/icons"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 207
    const/4 v1, 0x0

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    .line 210
    :cond_73
    invoke-virtual {p0}, Lmiui/content/res/ThemeRuntimeManager;->markGadgetUpdated()V

    .line 212
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/drm/DrmManager;->setSupportAd(Landroid/content/Context;Z)V

    .line 214
    const-wide/32 v1, 0x30007899

    invoke-static {v1, v2}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(J)V

    .line 215
    return-void
.end method

.method public whitelist restoreDefault()V
    .registers 2

    .line 138
    const-string v0, ""

    invoke-virtual {p0, v0}, Lmiui/content/res/ThemeRuntimeManager;->restoreDefault(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public blacklist restoreDefault(Ljava/lang/String;)V
    .registers 10
    .param p1, "drmResult"    # Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1a
    if-ge v4, v3, :cond_34

    aget-object v5, v1, v4

    .line 148
    .local v5, "file":Ljava/io/File;
    sget-object v6, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 149
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 147
    .end local v5    # "file":Ljava/io/File;
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 154
    :cond_34
    sget-object v1, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.CLEAR_THEME_RUNTIME_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.thememanager"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 159
    const-string v3, "drm_result"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_50
    const-string v3, "drm_version"

    const-string v4, "v2"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 165
    .local v3, "ws":Landroid/app/WallpaperManager;
    :try_start_66
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 168
    goto :goto_6e

    .line 166
    :catch_6a
    move-exception v4

    .line 167
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    .end local v4    # "e":Ljava/io/IOException;
    :goto_6e
    const/4 v4, 0x0

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    .line 173
    invoke-virtual {p0}, Lmiui/content/res/ThemeRuntimeManager;->markGadgetUpdated()V

    .line 176
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lmiui/drm/DrmManager;->setSupportAd(Landroid/content/Context;Z)V

    .line 178
    const-wide/32 v4, 0x30007899

    invoke-static {v4, v5}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(J)V

    .line 179
    return-void
.end method
