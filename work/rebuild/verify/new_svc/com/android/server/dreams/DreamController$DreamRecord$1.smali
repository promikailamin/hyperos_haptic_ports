.class public Lcom/android/server/dreams/DreamController$DreamRecord$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "DreamController.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public static synthetic $r8$lambda$mg9zkKxF2RBSAU-_NrDiJp4dJ8o(Lcom/android/server/dreams/DreamController$DreamRecord$1;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamController$DreamRecord$1;->lambda$sendResult$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$sendResult$0(Landroid/os/Bundle;)V
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eq v0, v1, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_29

    .line 498
    const-string v0, "android.service.dream.DreamService.attach_error"

    .line 499
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 500
    const-string p1, "DreamController"

    const-string v0, "Dream failed to start due to attach error"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 p1, 0x1

    const-string v0, "dream failed to attach"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    return-void

    .line 505
    :cond_29
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p0}, Lcom/android/server/dreams/DreamController;->-$$Nest$monDreamStarted(Lcom/android/server/dreams/DreamController;)V

    return-void
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-static {v1}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopPreviousDreamsIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-static {v1}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmReleaseWakeLockIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamController$DreamRecord$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
