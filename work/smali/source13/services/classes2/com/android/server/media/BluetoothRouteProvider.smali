.class Lcom/android/server/media/BluetoothRouteProvider;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HEARING_AID_ROUTE_ID_PREFIX:Ljava/lang/String; = "HEARING_AID_"

.field private static final LE_AUDIO_ROUTE_ID_PREFIX:Ljava/lang/String; = "LE_AUDIO_"

.field private static final TAG:Ljava/lang/String; = "BTRouteProvider"


# instance fields
.field mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field final mActiveRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mBluetoothRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mEventReceiverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

.field private final mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

.field private final mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

.field private final mVolumeMap:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/BluetoothRouteProvider;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventReceiverMap(Lcom/android/server/media/BluetoothRouteProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddActiveHearingAidDevices(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveHearingAidDevices(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddActiveLeAudioDevices(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveLeAudioDevices(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildBluetoothRoutes(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->buildBluetoothRoutes()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/BluetoothRouteProvider;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->clearActiveRoutesWithType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->removeActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    const-string v0, "BTRouteProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p3, "listener"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    .line 75
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    .line 83
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener-IA;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    .line 105
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 107
    iput-object p3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    .line 108
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->buildBluetoothRoutes()V

    .line 110
    return-void
.end method

.method private addActiveDevices(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 394
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 395
    .local v0, "activeBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    if-nez v0, :cond_1a

    .line 396
    sget-boolean v1, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v1, :cond_19

    .line 397
    const-string v1, "BTRouteProvider"

    const-string v2, "activeBtRoute is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_19
    return-void

    .line 402
    :cond_1a
    invoke-direct {p0, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 405
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 406
    .local v2, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 407
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 408
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 409
    invoke-direct {p0, v2}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 411
    .end local v2    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_5a
    goto :goto_27

    .line 412
    :cond_5b
    return-void
.end method

.method private addActiveHearingAidDevices(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 414
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting active hearing aid devices. device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveDevices(Landroid/bluetooth/BluetoothDevice;)V

    .line 419
    return-void
.end method

.method private addActiveLeAudioDevices(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 422
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting active le audio devices. device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveDevices(Landroid/bluetooth/BluetoothDevice;)V

    .line 427
    return-void
.end method

.method private addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 6
    .param p1, "btRoute"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 350
    const-string v0, "BTRouteProvider"

    if-nez p1, :cond_e

    .line 351
    sget-boolean v1, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 352
    const-string v1, " btRoute is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_d
    return-void

    .line 356
    :cond_e
    sget-boolean v1, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding active route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_2a
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 360
    if-eqz v1, :cond_39

    .line 361
    const-string v1, " btRoute is already added."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_39
    return-void

    .line 365
    :cond_3a
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method

.method private addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "eventReceiver"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;

    .line 175
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private buildBluetoothRoutes()V
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 182
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_39

    .line 183
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 184
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 185
    invoke-direct {p0, v2}, Lcom/android/server/media/BluetoothRouteProvider;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v3

    .line 186
    .local v3, "newBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-lez v4, :cond_38

    .line 187
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "newBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_38
    goto :goto_11

    .line 192
    :cond_39
    return-void
.end method

.method private clearActiveDevices()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_8

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    .line 172
    :cond_8
    return-void
.end method

.method private clearActiveRoutesWithType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 379
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing active routes with type. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1c
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 383
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;>;"
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 385
    .local v1, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v2

    if-ne v2, p1, :cond_3d

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 387
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    .line 389
    .end local v1    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_3d
    goto :goto_22

    .line 390
    :cond_3e
    return-void
.end method

.method private createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 287
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo-IA;)V

    .line 288
    .local v0, "newBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iput-object p1, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 290
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "routeId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "deviceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 293
    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    :cond_27
    const/16 v3, 0x8

    .line 296
    .local v3, "type":I
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    .line 297
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x1

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 298
    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 300
    :cond_45
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v4, :cond_75

    .line 301
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 302
    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v6, 0x15

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HEARING_AID_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    const/16 v3, 0x17

    .line 307
    :cond_75
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v4, :cond_a5

    .line 308
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 309
    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v6, 0x16

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LE_AUDIO_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/media/BluetoothRouteProvider;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    const/16 v3, 0x1a

    .line 315
    :cond_a5
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 316
    const-string v6, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 317
    const-string v6, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    const/4 v6, 0x0

    .line 318
    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 320
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 321
    invoke-virtual {v4, v3}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 322
    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/BluetoothRouteProvider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    .line 323
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    .line 326
    return-object v0
.end method

.method static createInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteProvider;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    .line 93
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 97
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_e

    .line 98
    const/4 v1, 0x0

    return-object v1

    .line 100
    :cond_e
    new-instance v1, Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/media/BluetoothRouteProvider;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)V

    return-object v1
.end method

.method private notifyBluetoothRoutesUpdated()V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    if-eqz v0, :cond_b

    .line 282
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated(Ljava/util/List;)V

    .line 284
    :cond_b
    return-void
.end method

.method private removeActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 4
    .param p1, "btRoute"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 370
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing active route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1e
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    .line 376
    :cond_2a
    return-void
.end method

.method private setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V
    .registers 7
    .param p1, "btRoute"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .param p2, "state"    # I

    .line 331
    if-nez p1, :cond_b

    .line 332
    const-string v0, "BTRouteProvider"

    const-string/jumbo v1, "setRouteConnectionState: route shouldn\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_b
    iget-object v0, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 336
    return-void

    .line 339
    :cond_14
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 340
    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 341
    .local v0, "builder":Landroid/media/MediaRoute2Info$Builder;
    invoke-virtual {p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->getRouteType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 343
    const/4 v1, 0x2

    if-ne p2, v1, :cond_37

    .line 344
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->getRouteType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 346
    :cond_37
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    .line 347
    return-void
.end method


# virtual methods
.method findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .registers 6
    .param p1, "routeId"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 234
    return-object v0

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 237
    .local v2, "btRouteInfo":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 238
    return-object v2

    .line 240
    .end local v2    # "btRouteInfo":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_27
    goto :goto_e

    .line 241
    :cond_28
    return-object v0
.end method

.method getAllBluetoothRoutes()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "routeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    .line 216
    .local v2, "selectedRoute":Landroid/media/MediaRoute2Info;
    if-eqz v2, :cond_1a

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1a
    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 223
    .local v4, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 224
    goto :goto_24

    .line 226
    :cond_3d
    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v4    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    goto :goto_24

    .line 229
    :cond_4c
    return-object v0
.end method

.method getSelectedRoute()Landroid/media/MediaRoute2Info;
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_15

    :cond_a
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v0, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    :goto_15
    return-object v0
.end method

.method getTransferableRoutes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 205
    .local v2, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    .end local v2    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    goto :goto_a

    .line 207
    :cond_1c
    return-object v0
.end method

.method public start(Landroid/os/UserHandle;)V
    .registers 10
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 113
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 114
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 115
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 118
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver-IA;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 120
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver-IA;)V

    .line 121
    .local v0, "deviceStateChangedReceiver":Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 122
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 123
    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 125
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 127
    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 129
    const-string v1, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 132
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method public stop()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .registers 6
    .param p1, "routeId"    # Ljava/lang/String;

    .line 148
    if-nez p1, :cond_6

    .line 149
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->clearActiveDevices()V

    .line 150
    return-void

    .line 153
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v0

    .line 155
    .local v0, "btRouteInfo":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    if-nez v0, :cond_26

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferTo: Unknown route. ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTRouteProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_26
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_30

    .line 161
    iget-object v2, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 163
    :cond_30
    return-void
.end method

.method public updateVolumeForDevices(II)Z
    .registers 9
    .param p1, "devices"    # I
    .param p2, "volume"    # I

    .line 251
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 252
    const/16 v0, 0x17

    .local v0, "routeType":I
    goto :goto_16

    .line 253
    .end local v0    # "routeType":I
    :cond_8
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_f

    .line 256
    const/16 v0, 0x8

    .restart local v0    # "routeType":I
    goto :goto_16

    .line 257
    .end local v0    # "routeType":I
    :cond_f
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_51

    .line 258
    const/16 v0, 0x1a

    .line 262
    .restart local v0    # "routeType":I
    :goto_16
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "shouldNotify":Z
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 266
    .local v3, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v4

    if-eq v4, v0, :cond_37

    .line 267
    goto :goto_22

    .line 269
    :cond_37
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    iget-object v5, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-direct {v4, v5}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 270
    invoke-virtual {v4, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    .line 272
    const/4 v1, 0x1

    .line 273
    .end local v3    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    goto :goto_22

    .line 274
    :cond_4a
    if-eqz v1, :cond_4f

    .line 275
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V

    .line 277
    :cond_4f
    const/4 v2, 0x1

    return v2

    .line 260
    .end local v0    # "routeType":I
    .end local v1    # "shouldNotify":Z
    :cond_51
    const/4 v0, 0x0

    return v0
.end method
