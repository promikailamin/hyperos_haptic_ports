.class public abstract Landroid/net/wifi/IMiuiWifiManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IMiuiWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IMiuiWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IMiuiWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addHotSpotMacBlackListOffload:I = 0xf

.field static final blacklist TRANSACTION_addMSCS:I = 0x2e

.field static final blacklist TRANSACTION_changeMSCS:I = 0x2f

.field static final blacklist TRANSACTION_clearHotSpotMacBlackListOffload:I = 0xe

.field static final blacklist TRANSACTION_delHotSpotMacBlackListOffload:I = 0x10

.field static final blacklist TRANSACTION_discoverPeersOnTheFixedFreq:I = 0x4

.field static final blacklist TRANSACTION_doNetworkAnls:I = 0x29

.field static final blacklist TRANSACTION_enableDataStallDetection:I = 0x19

.field static final blacklist TRANSACTION_enableOrdisableDnss:I = 0x27

.field static final blacklist TRANSACTION_enablePowerSave:I = 0x5

.field static final blacklist TRANSACTION_forceRecovery:I = 0x36

.field static final blacklist TRANSACTION_getConnectedWifiClient:I = 0x1a

.field static final blacklist TRANSACTION_getMatchingPasspointConfigsForPasspointR1Providers:I = 0x1d

.field static final blacklist TRANSACTION_getMatchingPasspointR1Providers:I = 0x1c

.field static final blacklist TRANSACTION_getObservedAccessPionts:I = 0x14

.field static final blacklist TRANSACTION_getQoEByAvailableIfaceName:I = 0x31

.field static final blacklist TRANSACTION_hasAvailableNetwork:I = 0x28

.field static final blacklist TRANSACTION_ignoreApsForScanObserver:I = 0x12

.field static final blacklist TRANSACTION_isCurrentAPLowRssi:I = 0x18

.field static final blacklist TRANSACTION_isGameMode:I = 0x8

.field static final blacklist TRANSACTION_isNetDiagEnabled:I = 0x2c

.field static final blacklist TRANSACTION_isRecoveryOngoing:I = 0x2a

.field static final blacklist TRANSACTION_isSapBlacklistOffloadSupport:I = 0xc

.field static final blacklist TRANSACTION_isSapSupportedBand:I = 0x1e

.field static final blacklist TRANSACTION_isSupportForceRecovery:I = 0x37

.field static final blacklist TRANSACTION_isWpa3SaeSupported:I = 0x1f

.field static final blacklist TRANSACTION_netSDKConnectPrimaryWithBssid:I = 0x33

.field static final blacklist TRANSACTION_netSDKGetAvailableNetworkIdAndBssid:I = 0x32

.field static final blacklist TRANSACTION_netSDKSetIsDisableRoam:I = 0x34

.field static final blacklist TRANSACTION_registerHTMLViewerListener:I = 0x25

.field static final blacklist TRANSACTION_registerMiTransferListener:I = 0x23

.field static final blacklist TRANSACTION_removeMSCS:I = 0x30

.field static final blacklist TRANSACTION_sendCurrentWifiDigestInfo:I = 0x1b

.field static final blacklist TRANSACTION_setAntHalf:I = 0xa

.field static final blacklist TRANSACTION_setAntSwap:I = 0x9

.field static final blacklist TRANSACTION_setApGcMode:I = 0x20

.field static final blacklist TRANSACTION_setCompatibleMode:I = 0x13

.field static final blacklist TRANSACTION_setHotSpotMacBlackListOffloadEnabled:I = 0xd

.field static final blacklist TRANSACTION_setLatencyLevel:I = 0x6

.field static final blacklist TRANSACTION_setLatencyLevelForP2pInterface:I = 0x22

.field static final blacklist TRANSACTION_setObservedAccessPionts:I = 0x15

.field static final blacklist TRANSACTION_setP2PHCEnable:I = 0x35

.field static final blacklist TRANSACTION_setP2pPowerSave:I = 0x21

.field static final blacklist TRANSACTION_setPhyMode:I = 0x11

.field static final blacklist TRANSACTION_setSARLimit:I = 0x16

.field static final blacklist TRANSACTION_setSapAntHalf:I = 0xb

.field static final blacklist TRANSACTION_setSlaveCandidatesRssiThreshold:I = 0x38

.field static final blacklist TRANSACTION_setSoftApEnable80211ax:I = 0x17

.field static final blacklist TRANSACTION_setWifiThermalLevel:I = 0x7

.field static final blacklist TRANSACTION_startNetDiag:I = 0x2d

.field static final blacklist TRANSACTION_systemReady:I = 0x1

.field static final blacklist TRANSACTION_tryRecoveryNetwork:I = 0x2b

.field static final blacklist TRANSACTION_unRegisterHTMLViewerListener:I = 0x26

.field static final blacklist TRANSACTION_unRegisterMiTransferListener:I = 0x24

.field static final blacklist TRANSACTION_updateLatencyLevel:I = 0x3

.field static final blacklist TRANSACTION_updateScanResults:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 224
    const-string v0, "android.net.wifi.IMiuiWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IMiuiWifiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 232
    if-nez p0, :cond_4

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_4
    const-string v0, "android.net.wifi.IMiuiWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 236
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IMiuiWifiManager;

    if-eqz v1, :cond_14

    .line 237
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IMiuiWifiManager;

    return-object v1

    .line 239
    :cond_14
    new-instance v1, Landroid/net/wifi/IMiuiWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IMiuiWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 243
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.net.wifi.IMiuiWifiManager"

    .line 248
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 249
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    :cond_15
    packed-switch v7, :pswitch_data_3d2

    .line 259
    packed-switch v7, :pswitch_data_3d8

    .line 778
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 255
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    return v11

    .line 769
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 770
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setSlaveCandidatesRssiThreshold(Z)Z

    move-result v1

    .line 772
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 774
    goto/16 :goto_3d0

    .line 761
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isSupportForceRecovery()Z

    move-result v0

    .line 762
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 764
    goto/16 :goto_3d0

    .line 750
    .end local v0    # "_result":Z
    :pswitch_43
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 752
    .local v0, "_arg0":Landroid/net/Network;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 753
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->forceRecovery(Landroid/net/Network;Landroid/os/Bundle;)Z

    move-result v2

    .line 755
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 757
    goto/16 :goto_3d0

    .line 741
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 742
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setP2PHCEnable(I)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_3d0

    .line 729
    .end local v0    # "_arg0":I
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 731
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->netSDKSetIsDisableRoam(ZI)Z

    move-result v2

    .line 734
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 736
    goto/16 :goto_3d0

    .line 717
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->netSDKConnectPrimaryWithBssid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 722
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 724
    goto/16 :goto_3d0

    .line 709
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9f
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->netSDKGetAvailableNetworkIdAndBssid()Ljava/util/List;

    move-result-object v0

    .line 710
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 712
    goto/16 :goto_3d0

    .line 700
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->getQoEByAvailableIfaceName(Ljava/lang/String;)Landroid/net/wifi/WlanLinkLayerQoE;

    move-result-object v1

    .line 703
    .local v1, "_result":Landroid/net/wifi/WlanLinkLayerQoE;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 705
    goto/16 :goto_3d0

    .line 690
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/net/wifi/WlanLinkLayerQoE;
    :pswitch_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 691
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->removeMSCS(Ljava/lang/String;)I

    move-result v1

    .line 693
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    goto/16 :goto_3d0

    .line 672
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 674
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 676
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 678
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 680
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 681
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/IMiuiWifiManager$Stub;->changeMSCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 683
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    goto/16 :goto_3d0

    .line 654
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 656
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 658
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 660
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 662
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 663
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/IMiuiWifiManager$Stub;->addMSCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 665
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    goto/16 :goto_3d0

    .line 645
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 646
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->startNetDiag(I)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_3d0

    .line 637
    .end local v0    # "_arg0":I
    :pswitch_136
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isNetDiagEnabled()Z

    move-result v0

    .line 638
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    goto/16 :goto_3d0

    .line 626
    .end local v0    # "_result":Z
    :pswitch_142
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 628
    .local v0, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 629
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->tryRecoveryNetwork(Landroid/net/Network;Z)Z

    move-result v2

    .line 631
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 633
    goto/16 :goto_3d0

    .line 616
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_15d
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 617
    .restart local v0    # "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isRecoveryOngoing(Landroid/net/Network;)Z

    move-result v1

    .line 619
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    goto/16 :goto_3d0

    .line 606
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":Z
    :pswitch_174
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 607
    .restart local v0    # "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->doNetworkAnls(Landroid/net/Network;)I

    move-result v1

    .line 609
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    goto/16 :goto_3d0

    .line 598
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":I
    :pswitch_18b
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->hasAvailableNetwork()I

    move-result v0

    .line 599
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    goto/16 :goto_3d0

    .line 588
    .end local v0    # "_result":I
    :pswitch_197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 590
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 591
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->enableOrdisableDnss(ZLjava/util/List;)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_3d0

    .line 581
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1aa
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->unRegisterHTMLViewerListener()V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    goto/16 :goto_3d0

    .line 571
    :pswitch_1b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->registerHTMLViewerListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_3d0

    .line 564
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1c5
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->unRegisterMiTransferListener()V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_3d0

    .line 556
    :pswitch_1cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 557
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->registerMiTransferListener(Landroid/os/IBinder;)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_3d0

    .line 546
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setLatencyLevelForP2pInterface(I)Z

    move-result v1

    .line 549
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 551
    goto/16 :goto_3d0

    .line 534
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 537
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setP2pPowerSave(Ljava/lang/String;Z)Z

    move-result v2

    .line 539
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 541
    goto/16 :goto_3d0

    .line 524
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 525
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setApGcMode(Z)Z

    move-result v1

    .line 527
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 529
    goto/16 :goto_3d0

    .line 516
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_219
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isWpa3SaeSupported()Z

    move-result v0

    .line 517
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 519
    goto/16 :goto_3d0

    .line 507
    .end local v0    # "_result":Z
    :pswitch_225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 508
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isSapSupportedBand(I)Z

    move-result v1

    .line 510
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    goto/16 :goto_3d0

    .line 497
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_238
    sget-object v0, Landroid/net/wifi/hotspot2/PasspointR1Provider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 498
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointR1Provider;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 500
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 502
    goto/16 :goto_3d0

    .line 487
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointR1Provider;>;"
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_24d
    sget-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 488
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->getMatchingPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 490
    .restart local v1    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 492
    goto/16 :goto_3d0

    .line 479
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_262
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->sendCurrentWifiDigestInfo()Z

    move-result v0

    .line 480
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 482
    goto/16 :goto_3d0

    .line 472
    .end local v0    # "_result":Z
    :pswitch_26e
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->getConnectedWifiClient()Ljava/util/List;

    move-result-object v0

    .line 473
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 475
    goto/16 :goto_3d0

    .line 465
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    :pswitch_27a
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->enableDataStallDetection()Z

    move-result v0

    .line 466
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 468
    goto/16 :goto_3d0

    .line 458
    .end local v0    # "_result":Z
    :pswitch_286
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isCurrentAPLowRssi()Z

    move-result v0

    .line 459
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 461
    goto/16 :goto_3d0

    .line 450
    .end local v0    # "_result":Z
    :pswitch_292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 451
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setSoftApEnable80211ax(Z)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    goto/16 :goto_3d0

    .line 441
    .end local v0    # "_arg0":Z
    :pswitch_2a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 442
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setSARLimit(I)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    goto/16 :goto_3d0

    .line 432
    .end local v0    # "_arg0":I
    :pswitch_2b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 433
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setObservedAccessPionts(Ljava/util/List;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto/16 :goto_3d0

    .line 424
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2bf
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->getObservedAccessPionts()Ljava/util/List;

    move-result-object v0

    .line 425
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 427
    goto/16 :goto_3d0

    .line 416
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 417
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setCompatibleMode(Z)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_3d0

    .line 405
    .end local v0    # "_arg0":Z
    :pswitch_2da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 407
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 408
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {v6, v0, v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->ignoreApsForScanObserver(Ljava/util/List;Z)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_3d0

    .line 396
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Z
    :pswitch_2ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setPhyMode(I)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_3d0

    .line 386
    .end local v0    # "_arg0":I
    :pswitch_2fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->delHotSpotMacBlackListOffload(Ljava/lang/String;)Z

    move-result v1

    .line 389
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 391
    goto/16 :goto_3d0

    .line 376
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_30f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->addHotSpotMacBlackListOffload(Ljava/lang/String;)Z

    move-result v1

    .line 379
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    goto/16 :goto_3d0

    .line 368
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_322
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->clearHotSpotMacBlackListOffload()Z

    move-result v0

    .line 369
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    goto/16 :goto_3d0

    .line 359
    .end local v0    # "_result":Z
    :pswitch_32e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 360
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setHotSpotMacBlackListOffloadEnabled(I)Z

    move-result v1

    .line 362
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 364
    goto/16 :goto_3d0

    .line 351
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_341
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isSapBlacklistOffloadSupport()Z

    move-result v0

    .line 352
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    goto/16 :goto_3d0

    .line 343
    .end local v0    # "_result":Z
    :pswitch_34d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setSapAntHalf(I)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_3d0

    .line 334
    .end local v0    # "_arg0":I
    :pswitch_35c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setAntHalf(I)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto :goto_3d0

    .line 325
    .end local v0    # "_arg0":I
    :pswitch_36a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setAntSwap(I)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto :goto_3d0

    .line 317
    .end local v0    # "_arg0":I
    :pswitch_378
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->isGameMode()Z

    move-result v0

    .line 318
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto :goto_3d0

    .line 309
    .end local v0    # "_result":Z
    :pswitch_383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setWifiThermalLevel(I)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto :goto_3d0

    .line 300
    .end local v0    # "_arg0":I
    :pswitch_391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->setLatencyLevel(I)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto :goto_3d0

    .line 291
    .end local v0    # "_arg0":I
    :pswitch_39f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 292
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->enablePowerSave(Z)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto :goto_3d0

    .line 282
    .end local v0    # "_arg0":Z
    :pswitch_3ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {v6, v0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->discoverPeersOnTheFixedFreq(I)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto :goto_3d0

    .line 275
    .end local v0    # "_arg0":I
    :pswitch_3bb
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->updateLatencyLevel()V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto :goto_3d0

    .line 269
    :pswitch_3c2
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->updateScanResults()V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_3d0

    .line 263
    :pswitch_3c9
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IMiuiWifiManager$Stub;->systemReady()V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    nop

    .line 781
    :goto_3d0
    return v11

    nop

    :pswitch_data_3d2
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_3d8
    .packed-switch 0x1
        :pswitch_3c9
        :pswitch_3c2
        :pswitch_3bb
        :pswitch_3ad
        :pswitch_39f
        :pswitch_391
        :pswitch_383
        :pswitch_378
        :pswitch_36a
        :pswitch_35c
        :pswitch_34d
        :pswitch_341
        :pswitch_32e
        :pswitch_322
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2ed
        :pswitch_2da
        :pswitch_2cb
        :pswitch_2bf
        :pswitch_2b0
        :pswitch_2a1
        :pswitch_292
        :pswitch_286
        :pswitch_27a
        :pswitch_26e
        :pswitch_262
        :pswitch_24d
        :pswitch_238
        :pswitch_225
        :pswitch_219
        :pswitch_206
        :pswitch_1ef
        :pswitch_1dc
        :pswitch_1cd
        :pswitch_1c5
        :pswitch_1b2
        :pswitch_1aa
        :pswitch_197
        :pswitch_18b
        :pswitch_174
        :pswitch_15d
        :pswitch_142
        :pswitch_136
        :pswitch_127
        :pswitch_fc
        :pswitch_d1
        :pswitch_be
        :pswitch_ab
        :pswitch_9f
        :pswitch_88
        :pswitch_71
        :pswitch_62
        :pswitch_43
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
