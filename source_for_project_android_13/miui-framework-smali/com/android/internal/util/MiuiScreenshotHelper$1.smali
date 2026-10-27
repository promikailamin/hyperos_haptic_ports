.class Lcom/android/internal/util/MiuiScreenshotHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/MiuiScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/MiuiScreenshotHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/MiuiScreenshotHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/util/MiuiScreenshotHelper;

    .line 60
    iput-object p1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$1;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$1;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 64
    :try_start_7
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 65
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$1;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)V

    .line 67
    :cond_18
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
