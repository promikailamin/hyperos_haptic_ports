.class Lcom/android/server/autofill/Session$1;
.super Landroid/content/BroadcastReceiver;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/autofill/Session;

    .line 376
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 382
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.autofill.action.DELAYED_FILL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 383
    const-string v0, "AutofillSession"

    const-string v1, "Unexpected action is received."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 386
    :cond_14
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 387
    const-string v0, "AutofillSession"

    const-string v1, "Delay fill action is missing request id extra."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void

    .line 390
    :cond_24
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "mDelayedFillBroadcastReceiver delayed fill action received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_31
    const-string v1, "android.service.autofill.extra.REQUEST_ID"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, "requestId":I
    const-string v2, "android.service.autofill.extra.FILL_RESPONSE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillResponse;

    .line 394
    .local v2, "response":Landroid/service/autofill/FillResponse;
    iget-object v3, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v3}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmAssistReceiver(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->processDelayedFillLocked(ILandroid/service/autofill/FillResponse;)V

    .line 395
    .end local v1    # "requestId":I
    .end local v2    # "response":Landroid/service/autofill/FillResponse;
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4b

    throw v1
.end method
