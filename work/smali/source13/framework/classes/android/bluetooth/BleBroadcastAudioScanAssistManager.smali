.class public final Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
.super Ljava/lang/Object;
.source "BleBroadcastAudioScanAssistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;,
        Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BroadcastAssistSyncState;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_BROADCAST_SOURCE_INFO:Ljava/lang/String; = "android.bluetooth.BroadcastAudioSAManager.action.BROADCAST_SOURCE_INFO"

.field private static final blacklist DBG:Z = true

.field public static final blacklist SYNC_AUDIO:I = 0x1

.field public static final blacklist SYNC_METADATA:I = 0x0

.field public static final blacklist SYNC_METADATA_AUDIO:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "BleBroadcastAudioScanAssistManager"

.field private static final blacklist VDBG:Z = true


# instance fields
.field private blacklist INVALID_SOURCE_ID:B

.field blacklist mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field blacklist mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field blacklist mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

.field blacklist mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field blacklist mSyncState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monBluetoothSyncHelperStateChanged(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;ZLandroid/bluetooth/BluetoothProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->onBluetoothSyncHelperStateChanged(ZLandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V
    .registers 5
    .param p1, "scanOffloader"    # Landroid/bluetooth/BluetoothSyncHelper;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 139
    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 140
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->INVALID_SOURCE_ID:B

    .line 208
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 210
    iput-object p3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 211
    iput-object p2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 212
    iput-object p1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 213
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 214
    return-void
.end method

.method private blacklist convertAudioDataSyncState(I)I
    .registers 4
    .param p1, "syncState"    # I

    .line 301
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    if-ne p1, v0, :cond_7

    goto :goto_11

    .line 304
    :cond_7
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "searchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    return v0

    .line 302
    :cond_11
    :goto_11
    return v0
.end method

.method private blacklist convertMetadataSyncState(I)I
    .registers 3
    .param p1, "syncState"    # I

    .line 291
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_6

    goto :goto_8

    .line 294
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_8
    :goto_8
    return v0
.end method

.method private blacklist isValidBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)Z
    .registers 7
    .param p1, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 353
    const/4 v0, 0x1

    .line 354
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 355
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    .line 356
    .local v1, "currentSourceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceInfo;>;"
    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v1, :cond_17

    .line 357
    const-string/jumbo v3, "no source info details for remote"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    goto :goto_2f

    .line 360
    :cond_17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 361
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BleBroadcastSourceInfo;->matches(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 362
    const/4 v0, 0x0

    .line 363
    goto :goto_2f

    .line 360
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 368
    .end local v3    # "i":I
    :cond_2f
    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidBroadcastSourceInfo returns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return v0
.end method

.method private blacklist isValidSourceId(B)Z
    .registers 6
    .param p1, "sourceId"    # B

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 375
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    .line 376
    .local v1, "currentSourceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceInfo;>;"
    if-nez v1, :cond_f

    .line 377
    const/4 v0, 0x0

    goto :goto_27

    .line 379
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 380
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v3

    if-ne v3, p1, :cond_24

    .line 381
    const/4 v0, 0x1

    .line 382
    goto :goto_27

    .line 379
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 386
    .end local v2    # "i":I
    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSourceId returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleBroadcastAudioScanAssistManager"

    invoke-static {v3, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 694
    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method private blacklist onBluetoothSyncHelperStateChanged(ZLandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 196
    if-eqz p1, :cond_12

    .line 197
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothSyncHelper;

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 198
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_15

    .line 201
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    .line 203
    :goto_15
    return-void
.end method

.method private blacklist printSelectedIndicies(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p1, "selectedBISIndicies":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    const-string v0, "BleBroadcastAudioScanAssistManager"

    if-nez p1, :cond_b

    .line 392
    const-string/jumbo v1, "printSelectedIndicies : no selected indicies"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void

    .line 395
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 398
    .end local v1    # "i":I
    :cond_43
    return-void
.end method


# virtual methods
.method public blacklist addBroadcastSource(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;Z)Z
    .registers 20
    .param p1, "audioSource"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "syncState"    # I
    .param p4, "isGroupOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;Z)Z"
        }
    .end annotation

    .line 447
    .local p3, "selectedBroadcastChannels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    move-object v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v3, 0x0

    const-string v4, "BleBroadcastAudioScanAssistManager"

    if-nez v2, :cond_10

    .line 448
    const-string v2, "addBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v4, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return v3

    .line 452
    :cond_10
    if-eqz v1, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBroadcastSource: Invalid syncState"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return v3

    .line 457
    :cond_2c
    move-object/from16 v2, p3

    invoke-direct {p0, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->printSelectedIndicies(Ljava/util/List;)V

    .line 458
    const/4 v5, -0x1

    .line 459
    .local v5, "metadataSyncState":I
    const/4 v6, -0x1

    .line 460
    .local v6, "audioSyncState":I
    iput v1, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    .line 461
    invoke-direct {p0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertMetadataSyncState(I)I

    move-result v12

    .line 462
    .end local v5    # "metadataSyncState":I
    .local v12, "metadataSyncState":I
    iget v5, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertAudioDataSyncState(I)I

    move-result v13

    .line 464
    .end local v6    # "audioSyncState":I
    .local v13, "audioSyncState":I
    new-instance v14, Landroid/bluetooth/BleBroadcastSourceInfo;

    const/16 v7, -0x45

    const/4 v8, 0x0

    move-object v5, v14

    move-object/from16 v6, p1

    move v9, v12

    move v10, v13

    move-object/from16 v11, p3

    invoke-direct/range {v5 .. v11}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;BIIILjava/util/List;)V

    iput-object v14, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 471
    nop

    .line 475
    invoke-direct {p0, v14}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 476
    iget-object v3, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v4, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    iget-object v6, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    move/from16 v7, p4

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/bluetooth/BluetoothSyncHelper;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    .line 485
    const/4 v3, 0x1

    return v3

    .line 482
    :cond_66
    move/from16 v7, p4

    const-string v5, "Similar source information already exists"

    invoke-static {v4, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return v3
.end method

.method public blacklist getAllBroadcastSourceInformation()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez v0, :cond_d

    .line 686
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "GetNumberOfAcceptableBroadcastSources: no BluetoothSyncHelper handle"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x0

    return-object v0

    .line 689
    :cond_d
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerAppCallback()V
    .registers 4

    .line 226
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "registerAppCallback()"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v0, :cond_13

    .line 228
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    .line 230
    :cond_13
    return-void
.end method

.method public blacklist removeBroadcastSource(BZ)Z
    .registers 6
    .param p1, "sourceId"    # B
    .param p2, "isGroupOp"    # Z

    .line 659
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_e

    .line 660
    const-string/jumbo v0, "removeBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return v1

    .line 663
    :cond_e
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 664
    const-string/jumbo v0, "removeBroadcastSource: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return v1

    .line 667
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBroadcastSource: sourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/bluetooth/BluetoothSyncHelper;->removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z

    move-result v0

    return v0
.end method

.method public blacklist searchforLeAudioBroadcasters()Z
    .registers 4

    .line 255
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "searchforLeAudioBroadcasters: "

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v1, :cond_15

    .line 257
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothSyncHelper;->searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 259
    :cond_15
    const-string/jumbo v1, "searchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist selectBroadcastSource(Landroid/bluetooth/le/ScanResult;Z)Z
    .registers 7
    .param p1, "scanRes"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "isGroupOp"    # Z

    .line 337
    const/4 v0, 0x0

    const-string v1, "BleBroadcastAudioScanAssistManager"

    if-nez p1, :cond_c

    .line 338
    const-string/jumbo v2, "selectBroadcastSource: Invalid scan res"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v0

    .line 341
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectBroadcastSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v2, :cond_30

    .line 343
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v2, v0, p1, p2, v1}, Landroid/bluetooth/BluetoothSyncHelper;->selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 346
    :cond_30
    const-string/jumbo v2, "selectBroadcastSource: mBluetoothSyncHelper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v0
.end method

.method public blacklist setBroadcastCode(BLjava/lang/String;Z)Z
    .registers 8
    .param p1, "sourceId"    # B
    .param p2, "broadcastCode"    # Ljava/lang/String;
    .param p3, "isGroupOp"    # Z

    .line 603
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_e

    .line 604
    const-string/jumbo v0, "setBroadcastCode: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return v1

    .line 607
    :cond_e
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 608
    const-string/jumbo v0, "setBroadcastCode: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return v1

    .line 612
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBroadcastCode: sourceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BroadcastCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-direct {v0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(B)V

    .line 615
    .local v0, "sourceInfo":Landroid/bluetooth/BleBroadcastSourceInfo;
    nop

    .line 616
    invoke-virtual {v0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setSourceId(B)V

    .line 617
    invoke-virtual {v0, p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->setBroadcastCode(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v2, v0, p3, v3}, Landroid/bluetooth/BluetoothSyncHelper;->setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v1

    return v1
.end method

.method public blacklist stopSearchforLeAudioBroadcasters()Z
    .registers 4

    .line 276
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "stopSearchforLeAudioBroadcasters()"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v1, :cond_15

    .line 278
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothSyncHelper;->stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 281
    :cond_15
    const-string/jumbo v1, "stopSearchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterAppCallback()V
    .registers 4

    .line 233
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "unregisterAppCallback()"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v0, :cond_13

    .line 235
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    .line 237
    :cond_13
    return-void
.end method

.method public blacklist updateBroadcastSource(BILjava/util/List;Z)Z
    .registers 11
    .param p1, "sourceId"    # B
    .param p2, "syncState"    # I
    .param p4, "isGroupOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;Z)Z"
        }
    .end annotation

    .line 532
    .local p3, "selectedBroadcastChannels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_e

    .line 533
    const-string/jumbo v0, "updateBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return v1

    .line 536
    :cond_e
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 537
    const-string/jumbo v0, "updateBroadcastSource: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return v1

    .line 540
    :cond_1b
    const/4 v0, -0x1

    .line 541
    .local v0, "audioSyncState":I
    const/4 v1, -0x1

    .line 542
    .local v1, "metadataSyncState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: sourceId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", syncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iput p2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    .line 545
    invoke-direct {p0, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertMetadataSyncState(I)I

    move-result v1

    .line 546
    iget v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertAudioDataSyncState(I)I

    move-result v0

    .line 548
    invoke-direct {p0, p3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->printSelectedIndicies(Ljava/util/List;)V

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: audioSyncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: metadataSyncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v2, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-direct {v2, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(B)V

    .line 554
    .local v2, "sourceInfo":Landroid/bluetooth/BleBroadcastSourceInfo;
    nop

    .line 555
    invoke-virtual {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setMetadataSyncState(I)V

    .line 556
    invoke-virtual {v2, v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->setAudioSyncState(I)V

    .line 557
    invoke-virtual {v2, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setSourceId(B)V

    .line 558
    invoke-virtual {v2, p3}, Landroid/bluetooth/BleBroadcastSourceInfo;->setBroadcastChannelsSyncStatus(Ljava/util/List;)V

    .line 563
    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v4, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v3, v4, v2, p4, v5}, Landroid/bluetooth/BluetoothSyncHelper;->updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v3

    return v3
.end method
