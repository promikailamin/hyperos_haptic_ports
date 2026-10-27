.class Lcom/miui/mishare/app/view/MiShareTransmissionView$6;
.super Lcom/miui/mishare/IMiShareTaskStateListener$Stub;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/MiShareTransmissionView;

    .line 1001
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTaskIdChanged(Lcom/miui/mishare/MiShareTask;)V
    .registers 4
    .param p1, "task"    # Lcom/miui/mishare/MiShareTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmHandler(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareTransmissionView$6$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$6$1;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$6;Lcom/miui/mishare/MiShareTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1016
    return-void
.end method

.method public blacklist onTaskStateChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    return-void
.end method
