.class Lcom/android/server/PinnerService$3;
.super Landroid/app/IUidObserver$Stub;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PinnerService;->registerUidListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PinnerService;

    .line 380
    iput-object p1, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUidActive$1(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 390
    move-object v0, p0

    check-cast v0, Lcom/android/server/PinnerService;

    invoke-static {v0, p1}, Lcom/android/server/PinnerService;->-$$Nest$mhandleUidActive(Lcom/android/server/PinnerService;I)V

    return-void
.end method

.method static synthetic lambda$onUidGone$0(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 384
    move-object v0, p0

    check-cast v0, Lcom/android/server/PinnerService;

    invoke-static {v0, p1}, Lcom/android/server/PinnerService;->-$$Nest$mhandleUidGone(Lcom/android/server/PinnerService;I)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnerHandler(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 389
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnerHandler(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/PinnerService$3$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 383
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    return-void
.end method
