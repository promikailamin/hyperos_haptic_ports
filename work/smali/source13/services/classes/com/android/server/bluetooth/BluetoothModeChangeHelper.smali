.class public Lcom/android/server/bluetooth/BluetoothModeChangeHelper;
.super Ljava/lang/Object;
.source "BluetoothModeChangeHelper.java"


# instance fields
.field private volatile mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mContext:Landroid/content/Context;

.field private volatile mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private volatile mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field private final mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static bridge synthetic -$$Nest$fputmA2dp(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothA2dp;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHearingAid(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothHearingAid;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeAudio(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothLeAudio;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;-><init>(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;)V

    iput-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 46
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mContext:Landroid/content/Context;

    .line 48
    const/4 v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 49
    const/16 v2, 0x15

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 51
    const/16 v2, 0x16

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 52
    return-void
.end method

.method private isA2dpConnected()Z
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 141
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 142
    return v1

    .line 144
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private isBroadcastActive()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isBroadcastActive()Z

    move-result v0

    return v0
.end method

.method private isHearingAidConnected()Z
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 149
    .local v0, "hearingAid":Landroid/bluetooth/BluetoothHearingAid;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 150
    return v1

    .line 152
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private isLeAudioConnected()Z
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 157
    .local v0, "leAudio":Landroid/bluetooth/BluetoothLeAudio;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 158
    return v1

    .line 160
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method


# virtual methods
.method public getSettingsInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAirplaneModeOn()Z
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    return v2
.end method

.method public isBluetoothOn()Z
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 101
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_6

    .line 102
    const/4 v1, 0x0

    return v1

    .line 104
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    return v1
.end method

.method public isMediaProfileConnected()Z
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isA2dpConnected()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isHearingAidConnected()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isLeAudioConnected()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 95
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isBroadcastActive()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 94
    :goto_1c
    return v0
.end method

.method public onAirplaneModeChanged(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 2
    .param p1, "managerService"    # Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->onAirplaneModeChanged()V

    .line 117
    return-void
.end method

.method public setSettingsInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 127
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    return-void
.end method

.method public showToastMessage()V
    .registers 6

    .line 133
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "bluetooth_airplane_mode_toast"

    const-string/jumbo v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 137
    return-void
.end method
