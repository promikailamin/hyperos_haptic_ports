.class Landroid/media/MediaCas$4;
.super Landroid/hardware/cas/V1_2/ICasListener$Stub;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCas;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 474
    iput-object p1, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Landroid/hardware/cas/V1_2/ICasListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEvent(IILjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 479
    iget-object v0, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    .line 481
    invoke-static {v2, p3}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object p3

    .line 480
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/media/MediaCas$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 479
    invoke-virtual {v0, p1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 483
    :cond_22
    return-void
.end method

.method public blacklist onSessionEvent(Ljava/util/ArrayList;IILjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 493
    iget-object v0, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCas$EventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 494
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 495
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 496
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 497
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 498
    iget-object p3, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {p3, p1}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object p1

    const-string p3, "sessionId"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 499
    iget-object p1, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {p1, p4}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object p1

    const-string p3, "data"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 500
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 501
    iget-object p1, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {p1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    :cond_40
    return-void
.end method

.method public blacklist onStatusUpdate(BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 508
    iget-object v0, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$4;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    .line 509
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/MediaCas$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 508
    invoke-virtual {v0, p1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 512
    :cond_1c
    return-void
.end method
