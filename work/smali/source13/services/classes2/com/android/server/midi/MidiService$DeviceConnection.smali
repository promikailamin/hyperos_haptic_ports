.class final Lcom/android/server/midi/MidiService$DeviceConnection;
.super Ljava/lang/Object;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceConnection"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiService.DeviceConnection"


# instance fields
.field private mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

.field private final mClient:Lcom/android/server/midi/MidiService$Client;

.field private final mDevice:Lcom/android/server/midi/MidiService$Device;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 5
    .param p2, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p3, "client"    # Lcom/android/server/midi/MidiService$Client;
    .param p4, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 620
    iput-object p1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    .line 621
    iput-object p2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 622
    iput-object p3, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    .line 623
    iput-object p4, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 624
    return-void
.end method


# virtual methods
.method public getClient()Lcom/android/server/midi/MidiService$Client;
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    return-object v0
.end method

.method public getDevice()Lcom/android/server/midi/MidiService$Device;
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 5
    .param p1, "deviceServer"    # Landroid/media/midi/IMidiDeviceServer;

    .line 639
    const-string v0, "MidiService.DeviceConnection"

    const-string/jumbo v1, "notifyClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    if-eqz v0, :cond_1a

    .line 643
    const/4 v1, 0x0

    if-nez p1, :cond_11

    move-object v2, v1

    goto :goto_13

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    :goto_13
    invoke-interface {v0, p1, v2}, Landroid/media/midi/IMidiDeviceOpenCallback;->onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 646
    goto :goto_18

    .line 644
    :catch_17
    move-exception v0

    .line 647
    :goto_18
    iput-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 649
    :cond_1a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_28
    const-string/jumbo v0, "null"

    .line 654
    :goto_2b
    return-object v0
.end method
