.class Lcom/android/server/adb/AdbService$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field private final mAdbUsbUri:Landroid/net/Uri;

.field private final mAdbWifiUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 204
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 200
    const-string p1, "adb_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    .line 201
    const-string p1, "adb_wifi_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    .line 205
    return-void
.end method

.method static synthetic lambda$onChange$0(Ljava/lang/Object;ZB)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # B

    .line 213
    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->-$$Nest$msetAdbEnabled(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method

.method static synthetic lambda$onChange$1(Ljava/lang/Object;ZB)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # B

    .line 219
    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->-$$Nest$msetAdbEnabled(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 209
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 210
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "adb_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    move v0, v1

    .line 212
    .local v0, "shouldEnable":Z
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>()V

    iget-object v4, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 213
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 214
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 212
    invoke-static {v3, v4, v5, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "shouldEnable":Z
    goto :goto_69

    .line 215
    :cond_36
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 216
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "adb_wifi_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4d

    move v2, v1

    :cond_4d
    move v0, v2

    .line 218
    .restart local v0    # "shouldEnable":Z
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda1;-><init>()V

    iget-object v4, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 219
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 220
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 218
    invoke-static {v3, v4, v5, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6a

    .line 215
    .end local v0    # "shouldEnable":Z
    :cond_69
    :goto_69
    nop

    .line 222
    :goto_6a
    return-void
.end method
