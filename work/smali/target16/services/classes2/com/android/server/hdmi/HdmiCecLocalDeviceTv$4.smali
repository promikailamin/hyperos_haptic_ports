.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .registers 2

    .line 938
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSadDone(Ljava/util/List;)V
    .registers 4

    .line 941
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$fputmSupportedSads(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/util/List;)V

    .line 943
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_2a

    .line 944
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$mnotifyArcStatusToAudioService(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;ZLjava/util/List;)V

    .line 945
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 946
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$fgetmSupportedSads(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$mnotifyArcStatusToAudioService(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;ZLjava/util/List;)V

    .line 947
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw p0

    :catchall_2a
    move-exception p0

    .line 943
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method
