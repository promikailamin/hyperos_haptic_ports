.class final Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CommunicationClientInfo"
.end annotation


# instance fields
.field final mCb:Landroid/os/IBinder;

.field final mDevice:Landroid/media/AudioDeviceAttributes;

.field final mEventSource:Ljava/lang/String;

.field final mPid:I

.field final mScoAudioMode:I

.field final mUid:I


# direct methods
.method constructor <init>(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p5, "scoAudioMode"    # I
    .param p6, "eventSource"    # Ljava/lang/String;

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    .line 1156
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mUid:I

    .line 1158
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    .line 1159
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 1160
    iput p5, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mScoAudioMode:I

    .line 1161
    iput-object p6, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mEventSource:Ljava/lang/String;

    .line 1162
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1167
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1168
    return v0

    .line 1170
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1171
    return v1

    .line 1173
    :cond_8
    instance-of v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    if-nez v2, :cond_d

    .line 1174
    return v0

    .line 1177
    :cond_d
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    move-object v3, p1

    check-cast v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    move-object v3, p1

    check-cast v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    iget v3, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    if-ne v2, v3, :cond_24

    move v0, v1

    :cond_24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommunicationClientInfo mCb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 1185
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mScoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mScoAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mEventSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    return-object v0
.end method
