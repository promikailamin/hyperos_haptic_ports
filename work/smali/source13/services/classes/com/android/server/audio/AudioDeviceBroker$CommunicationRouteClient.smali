.class Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommunicationRouteClient"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private mDevice:Landroid/media/AudioDeviceAttributes;

.field private final mPid:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)Landroid/media/AudioDeviceAttributes;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;)V
    .registers 6
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 1906
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1907
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 1909
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 1911
    iput p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPid:I

    .line 1912
    iput-object p5, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 1913
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 1936
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    .line 1937
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .registers 2

    .line 1940
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getDevice()Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 1954
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-object v0
.end method

.method getPid()I
    .registers 2

    .line 1944
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPid:I

    return v0
.end method

.method getUid()I
    .registers 2

    .line 1949
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    return v0
.end method

.method public registerDeathRecipient()Z
    .registers 5

    .line 1916
    const/4 v0, 0x0

    .line 1918
    .local v0, "status":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 1919
    const/4 v0, 0x1

    .line 1922
    goto :goto_2a

    .line 1920
    :catch_9
    move-exception v1

    .line 1921
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CommunicationRouteClient could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioDeviceBroker"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    return v0
.end method

.method requestsBluetoothSco()Z
    .registers 3

    .line 1958
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v0, :cond_d

    .line 1959
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1958
    :goto_e
    return v0
.end method

.method requestsSpeakerphone()Z
    .registers 3

    .line 1964
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v0, :cond_d

    .line 1965
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1964
    :goto_e
    return v0
.end method

.method public unregisterDeathRecipient()V
    .registers 4

    .line 1928
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1931
    goto :goto_f

    .line 1929
    :catch_7
    move-exception v0

    .line 1930
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "CommunicationRouteClient could not not unregistered to binder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_f
    return-void
.end method
