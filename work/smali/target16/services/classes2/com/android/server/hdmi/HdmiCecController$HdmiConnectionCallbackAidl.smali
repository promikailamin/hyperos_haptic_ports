.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;
.super Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback$Stub;
.source "HdmiCecController.java"


# instance fields
.field public final mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .registers 2

    .line 1717
    invoke-direct {p0}, Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback$Stub;-><init>()V

    .line 1718
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1728
    :try_start_1
    const-string v0, "85c26fa47f3c3062aa93ffc8bb0897a85c8cb118"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onHotplugEvent(ZI)V
    .registers 3

    .line 1723
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    return-void
.end method
