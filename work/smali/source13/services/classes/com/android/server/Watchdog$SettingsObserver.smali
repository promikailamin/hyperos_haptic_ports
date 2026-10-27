.class Lcom/android/server/Watchdog$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;

.field private final mWatchdog:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "watchdog"    # Lcom/android/server/Watchdog;

    .line 504
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 499
    const-string/jumbo v0, "system_server_watchdog_timeout_ms"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    .line 505
    iput-object p1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    .line 506
    iput-object p2, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    .line 508
    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    .line 509
    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 6

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    iget-object v1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    .line 521
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_server_watchdog_timeout_ms"

    const-wide/32 v3, 0xea60

    .line 520
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->updateWatchdogTimeout(J)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    .line 525
    goto :goto_33

    .line 523
    :catch_16
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while reading settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Watchdog"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_33
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 513
    iget-object v0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 514
    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    .line 516
    :cond_b
    return-void
.end method
