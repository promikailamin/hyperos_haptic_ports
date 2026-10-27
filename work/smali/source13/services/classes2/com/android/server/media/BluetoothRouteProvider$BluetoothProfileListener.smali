.class final Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothProfileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 9
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 457
    sparse-switch p1, :sswitch_data_86

    .line 473
    return-void

    .line 469
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothLeAudio;

    iput-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 470
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/BluetoothRouteProvider;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v0

    .line 471
    .local v0, "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_3f

    .line 464
    .end local v0    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_18
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    iput-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 465
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/BluetoothRouteProvider;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v0

    .line 467
    .restart local v0    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_3f

    .line 459
    .end local v0    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2c
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    iput-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 461
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/BluetoothRouteProvider;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v0

    .line 462
    .restart local v0    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    nop

    .line 475
    :goto_3f
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 476
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v3, v3, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 477
    .local v3, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    if-nez v3, :cond_74

    .line 478
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v4, v2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v3

    .line 479
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v4, v4, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_74
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 482
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v4, v3}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 484
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_7f
    goto :goto_47

    .line 485
    :cond_80
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v1}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 486
    return-void

    :sswitch_data_86
    .sparse-switch
        0x2 -> :sswitch_2c
        0x15 -> :sswitch_18
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 489
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_16

    .line 500
    return-void

    .line 497
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v0, v1, Lcom/android/server/media/BluetoothRouteProvider;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 498
    goto :goto_14

    .line 494
    :sswitch_a
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v0, v1, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 495
    goto :goto_14

    .line 491
    :sswitch_f
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v0, v1, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 492
    nop

    .line 502
    :goto_14
    return-void

    nop

    :sswitch_data_16
    .sparse-switch
        0x2 -> :sswitch_f
        0x15 -> :sswitch_a
        0x16 -> :sswitch_5
    .end sparse-switch
.end method
