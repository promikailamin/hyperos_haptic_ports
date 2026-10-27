.class Lcom/miui/mishare/app/view/MiShareTransmissionView$5;
.super Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;
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

    .line 891
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceLost(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmHandler(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 906
    return-void
.end method

.method public blacklist onDeviceUpdated(Lcom/miui/mishare/RemoteDevice;)V
    .registers 4
    .param p1, "remoteDevice"    # Lcom/miui/mishare/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmHandler(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$2;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Lcom/miui/mishare/RemoteDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 941
    return-void
.end method
