.class public Lcom/android/server/WallpaperUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperUpdateReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WallpaperUpdateReceiver"


# direct methods
.method public static synthetic $r8$lambda$zBmqpdCzBRVQjW9PpknfBMlNFAw(Lcom/android/server/WallpaperUpdateReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WallpaperUpdateReceiver;->updateWallpaper()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isUserSetWallpaper(Landroid/app/WallpaperManager;Landroid/content/Context;)Z
    .registers 8
    .param p1, "wm"    # Landroid/app/WallpaperManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 79
    .local v0, "info":Landroid/app/WallpaperInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 81
    nop

    .line 82
    invoke-virtual {p1, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 83
    .local v2, "sysWallpaper":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x2

    .line 84
    invoke-virtual {p1, v3}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 85
    .local v3, "lockWallpaper":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_17

    if-eqz v3, :cond_16

    goto :goto_17

    .line 88
    .end local v2    # "sysWallpaper":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "lockWallpaper":Landroid/os/ParcelFileDescriptor;
    :cond_16
    goto :goto_27

    .line 86
    .restart local v2    # "sysWallpaper":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "lockWallpaper":Landroid/os/ParcelFileDescriptor;
    :cond_17
    :goto_17
    return v1

    .line 90
    .end local v2    # "sysWallpaper":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "lockWallpaper":Landroid/os/ParcelFileDescriptor;
    :cond_18
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 91
    .local v2, "currCN":Landroid/content/ComponentName;
    invoke-static {p2}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 92
    .local v3, "defaultCN":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 93
    return v1

    .line 96
    .end local v2    # "currCN":Landroid/content/ComponentName;
    .end local v3    # "defaultCN":Landroid/content/ComponentName;
    :cond_27
    :goto_27
    const/4 v1, 0x0

    return v1
.end method

.method private updateWallpaper()V
    .registers 7

    .line 54
    const-string v0, "WallpaperUpdateReceiver"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 55
    .local v1, "currentActivityThread":Landroid/app/ActivityThread;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    .line 56
    .local v2, "uiContext":Landroid/content/Context;
    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 57
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-direct {p0, v3, v2}, Lcom/android/server/WallpaperUpdateReceiver;->isUserSetWallpaper(Landroid/app/WallpaperManager;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 58
    const-string v4, "User has set wallpaper, skip to resetting"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_1a
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 64
    .local v4, "blank":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    const v5, 0x1080288

    invoke-virtual {v3, v5}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 68
    .end local v1    # "currentActivityThread":Landroid/app/ActivityThread;
    .end local v2    # "uiContext":Landroid/content/Context;
    .end local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    .end local v4    # "blank":Landroid/graphics/Bitmap;
    goto :goto_42

    .line 66
    :catch_2b
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to customize system wallpaper."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 47
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 48
    new-instance v0, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/WallpaperUpdateReceiver;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 50
    :cond_16
    return-void
.end method
