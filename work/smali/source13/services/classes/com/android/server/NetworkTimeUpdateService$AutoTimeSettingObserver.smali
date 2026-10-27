.class Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoTimeSettingObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMsg:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "msg"    # I

    .line 343
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 344
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    .line 345
    iput-object p2, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    .line 346
    iput p3, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    .line 347
    return-void
.end method

.method private isAutomaticTimeEnabled()Z
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 367
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method


# virtual methods
.method observe()V
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 357
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->isAutomaticTimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 358
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 360
    :cond_11
    return-void
.end method
