.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_bandwidthAddNaughtyApp:I = 0x32

.field static final TRANSACTION_bandwidthAddNiceApp:I = 0x34

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_bandwidthRemoveInterfaceAlert:I = 0x30

.field static final TRANSACTION_bandwidthRemoveInterfaceQuota:I = 0x2e

.field static final TRANSACTION_bandwidthRemoveNaughtyApp:I = 0x33

.field static final TRANSACTION_bandwidthRemoveNiceApp:I = 0x35

.field static final TRANSACTION_bandwidthSetGlobalAlert:I = 0x31

.field static final TRANSACTION_bandwidthSetInterfaceAlert:I = 0x2f

.field static final TRANSACTION_bandwidthSetInterfaceQuota:I = 0x2d

.field static final TRANSACTION_clatdStart:I = 0x25

.field static final TRANSACTION_clatdStop:I = 0x26

.field static final TRANSACTION_firewallAddUidInterfaceRules:I = 0x5b

.field static final TRANSACTION_firewallEnableChildChain:I = 0x4f

.field static final TRANSACTION_firewallRemoveUidInterfaceRules:I = 0x5c

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_firewallSetFirewallType:I = 0x4c

.field static final TRANSACTION_firewallSetInterfaceRule:I = 0x4d

.field static final TRANSACTION_firewallSetUidRule:I = 0x4e

.field static final TRANSACTION_getFwmarkForNetwork:I = 0x60

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getOemNetd:I = 0x5e

.field static final TRANSACTION_getProcSysNet:I = 0x11

.field static final TRANSACTION_idletimerAddInterface:I = 0x22

.field static final TRANSACTION_idletimerRemoveInterface:I = 0x23

.field static final TRANSACTION_interfaceAddAddress:I = 0xf

.field static final TRANSACTION_interfaceClearAddrs:I = 0x54

.field static final TRANSACTION_interfaceDelAddress:I = 0x10

.field static final TRANSACTION_interfaceGetCfg:I = 0x51

.field static final TRANSACTION_interfaceGetList:I = 0x50

.field static final TRANSACTION_interfaceSetCfg:I = 0x52

.field static final TRANSACTION_interfaceSetEnableIPv6:I = 0x55

.field static final TRANSACTION_interfaceSetIPv6PrivacyExtensions:I = 0x53

.field static final TRANSACTION_interfaceSetMtu:I = 0x56

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x15

.field static final TRANSACTION_ipSecAddSecurityPolicy:I = 0x19

.field static final TRANSACTION_ipSecAddTunnelInterface:I = 0x1c

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x14

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x17

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x16

.field static final TRANSACTION_ipSecDeleteSecurityPolicy:I = 0x1b

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x18

.field static final TRANSACTION_ipSecRemoveTunnelInterface:I = 0x1e

.field static final TRANSACTION_ipSecSetEncapSocketOwner:I = 0x13

.field static final TRANSACTION_ipSecUpdateSecurityPolicy:I = 0x1a

.field static final TRANSACTION_ipSecUpdateTunnelInterface:I = 0x1d

.field static final TRANSACTION_ipfwdAddInterfaceForward:I = 0x2b

.field static final TRANSACTION_ipfwdDisableForwarding:I = 0x2a

.field static final TRANSACTION_ipfwdEnableForwarding:I = 0x29

.field static final TRANSACTION_ipfwdEnabled:I = 0x27

.field static final TRANSACTION_ipfwdGetRequesterList:I = 0x28

.field static final TRANSACTION_ipfwdRemoveInterfaceForward:I = 0x2c

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkAddInterface:I = 0x7

.field static final TRANSACTION_networkAddLegacyRoute:I = 0x40

.field static final TRANSACTION_networkAddRoute:I = 0x3e

.field static final TRANSACTION_networkAddRouteParcel:I = 0x61

.field static final TRANSACTION_networkAddUidRanges:I = 0x9

.field static final TRANSACTION_networkAddUidRangesParcel:I = 0x6a

.field static final TRANSACTION_networkCanProtect:I = 0x4b

.field static final TRANSACTION_networkClearDefault:I = 0x44

.field static final TRANSACTION_networkClearPermissionForUser:I = 0x47

.field static final TRANSACTION_networkCreate:I = 0x69

.field static final TRANSACTION_networkCreatePhysical:I = 0x4

.field static final TRANSACTION_networkCreateVpn:I = 0x5

.field static final TRANSACTION_networkDestroy:I = 0x6

.field static final TRANSACTION_networkGetDefault:I = 0x42

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0xb

.field static final TRANSACTION_networkRemoveInterface:I = 0x8

.field static final TRANSACTION_networkRemoveLegacyRoute:I = 0x41

.field static final TRANSACTION_networkRemoveRoute:I = 0x3f

.field static final TRANSACTION_networkRemoveRouteParcel:I = 0x63

.field static final TRANSACTION_networkRemoveUidRanges:I = 0xa

.field static final TRANSACTION_networkRemoveUidRangesParcel:I = 0x6b

.field static final TRANSACTION_networkSetDefault:I = 0x43

.field static final TRANSACTION_networkSetPermissionForNetwork:I = 0x45

.field static final TRANSACTION_networkSetPermissionForUser:I = 0x46

.field static final TRANSACTION_networkSetProtectAllow:I = 0x49

.field static final TRANSACTION_networkSetProtectDeny:I = 0x4a

.field static final TRANSACTION_networkUpdateRouteParcel:I = 0x62

.field static final TRANSACTION_registerUnsolicitedEventListener:I = 0x5a

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x21

.field static final TRANSACTION_setProcSysNet:I = 0x12

.field static final TRANSACTION_setTcpRWmemorySize:I = 0x59

.field static final TRANSACTION_socketDestroy:I = 0xc

.field static final TRANSACTION_strictUidCleartextPenalty:I = 0x24

.field static final TRANSACTION_tetherAddForward:I = 0x57

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xd

.field static final TRANSACTION_tetherDnsList:I = 0x3d

.field static final TRANSACTION_tetherDnsSet:I = 0x3c

.field static final TRANSACTION_tetherGetStats:I = 0xe

.field static final TRANSACTION_tetherInterfaceAdd:I = 0x39

.field static final TRANSACTION_tetherInterfaceList:I = 0x3b

.field static final TRANSACTION_tetherInterfaceRemove:I = 0x3a

.field static final TRANSACTION_tetherIsEnabled:I = 0x38

.field static final TRANSACTION_tetherOffloadGetAndClearStats:I = 0x68

.field static final TRANSACTION_tetherOffloadGetStats:I = 0x66

.field static final TRANSACTION_tetherOffloadRuleAdd:I = 0x64

.field static final TRANSACTION_tetherOffloadRuleRemove:I = 0x65

.field static final TRANSACTION_tetherOffloadSetInterfaceQuota:I = 0x67

.field static final TRANSACTION_tetherRemoveForward:I = 0x58

.field static final TRANSACTION_tetherStart:I = 0x36

.field static final TRANSACTION_tetherStartWithConfiguration:I = 0x5f

.field static final TRANSACTION_tetherStop:I = 0x37

.field static final TRANSACTION_trafficSetNetPermForUids:I = 0x48

.field static final TRANSACTION_trafficSwapActiveStatsMap:I = 0x5d

.field static final TRANSACTION_wakeupAddInterface:I = 0x1f

.field static final TRANSACTION_wakeupDelInterface:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3738
    const-string v0, "android$net$INetd"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 388
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 389
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 397
    if-nez p0, :cond_4

    .line 398
    const/4 v0, 0x0

    return-object v0

    .line 400
    :cond_4
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 401
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_14

    .line 402
    move-object v1, v0

    check-cast v1, Landroid/net/INetd;

    return-object v1

    .line 404
    :cond_14
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 408
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 49
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    sget-object v11, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 413
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 414
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    :cond_15
    sparse-switch v14, :sswitch_data_af2

    .line 436
    packed-switch v14, :pswitch_data_b00

    .line 1561
    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 420
    :sswitch_23
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    return v10

    .line 425
    :sswitch_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    return v10

    .line 431
    :sswitch_32
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    return v10

    .line 1554
    :pswitch_3d
    sget-object v0, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1555
    .local v0, "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1546
    .end local v0    # "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :pswitch_53
    sget-object v0, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1547
    .restart local v0    # "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1538
    .end local v0    # "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :pswitch_69
    sget-object v0, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NativeNetworkConfig;

    .line 1539
    .local v0, "_arg0":Landroid/net/NativeNetworkConfig;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkCreate(Landroid/net/NativeNetworkConfig;)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1529
    .end local v0    # "_arg0":Landroid/net/NativeNetworkConfig;
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1530
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    move-result-object v1

    .line 1531
    .local v1, "_result":Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1533
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1519
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/net/TetherStatsParcel;
    :pswitch_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1521
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1522
    .local v1, "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->tetherOffloadSetInterfaceQuota(IJ)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1511
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_ab
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 1512
    .local v0, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1514
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1504
    .end local v0    # "_result":[Landroid/net/TetherStatsParcel;
    :pswitch_bd
    sget-object v0, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetherOffloadRuleParcel;

    .line 1505
    .local v0, "_arg0":Landroid/net/TetherOffloadRuleParcel;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1507
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1496
    .end local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :pswitch_d3
    sget-object v0, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetherOffloadRuleParcel;

    .line 1497
    .restart local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1486
    .end local v0    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :pswitch_e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1488
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfoParcel;

    .line 1489
    .local v1, "_arg1":Landroid/net/RouteInfoParcel;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1476
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1478
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfoParcel;

    .line 1479
    .restart local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1466
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1468
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfoParcel;

    .line 1469
    .restart local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1457
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1458
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    move-result-object v1

    .line 1459
    .local v1, "_result":Landroid/net/MarkMaskParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1461
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1449
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/net/MarkMaskParcel;
    :pswitch_14d
    sget-object v0, Landroid/net/TetherConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetherConfigParcel;

    .line 1450
    .local v0, "_arg0":Landroid/net/TetherConfigParcel;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1441
    .end local v0    # "_arg0":Landroid/net/TetherConfigParcel;
    :pswitch_163
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 1442
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1444
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1435
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_175
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->trafficSwapActiveStatsMap()V

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1428
    :pswitch_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1429
    .local v0, "_arg0":[I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->firewallRemoveUidInterfaceRules([I)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1418
    .end local v0    # "_arg0":[I
    :pswitch_195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1421
    .local v1, "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 1422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1410
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    :pswitch_1ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v0

    .line 1411
    .local v0, "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 1412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1400
    .end local v0    # "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    :pswitch_1c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1390
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1392
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1393
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1380
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1382
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1383
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1370
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1373
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 1374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1360
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1362
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1363
    .local v1, "_arg1":Z
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1352
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_22f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1342
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1344
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1345
    .restart local v1    # "_arg1":Z
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1334
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_257
    sget-object v0, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/InterfaceConfigurationParcel;

    .line 1335
    .local v0, "_arg0":Landroid/net/InterfaceConfigurationParcel;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1325
    .end local v0    # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_26d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v1

    .line 1327
    .local v1, "_result":Landroid/net/InterfaceConfigurationParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1329
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1317
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_283
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1320
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1308
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1310
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1311
    .local v1, "_arg1":Z
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->firewallEnableChildChain(IZ)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1296
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_2ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1298
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1300
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1301
    .local v2, "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->firewallSetUidRule(III)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1286
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1289
    .restart local v1    # "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1278
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_2db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1279
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->firewallSetFirewallType(I)V

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1269
    .end local v0    # "_arg0":I
    :pswitch_2ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1270
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkCanProtect(I)Z

    move-result v1

    .line 1271
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1273
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1261
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1262
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetProtectDeny(I)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1253
    .end local v0    # "_arg0":I
    :pswitch_315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1254
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetProtectAllow(I)V

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1243
    .end local v0    # "_arg0":I
    :pswitch_327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1245
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1246
    .local v1, "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->trafficSetNetPermForUids(I[I)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1235
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_33d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1236
    .local v0, "_arg0":[I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkClearPermissionForUser([I)V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1225
    .end local v0    # "_arg0":[I
    :pswitch_34f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1227
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1228
    .restart local v1    # "_arg1":[I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkSetPermissionForUser(I[I)V

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1215
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1217
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1218
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->networkSetPermissionForNetwork(II)V

    .line 1219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1208
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_37b
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkClearDefault()V

    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1201
    :pswitch_389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1202
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->networkSetDefault(I)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1193
    .end local v0    # "_arg0":I
    :pswitch_39b
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->networkGetDefault()I

    move-result v0

    .line 1194
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1178
    .end local v0    # "_result":I
    :pswitch_3ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1180
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1182
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1184
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1186
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1187
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1162
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_3d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1164
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1166
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1168
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1170
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1171
    .restart local v16    # "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1148
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1150
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1152
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1134
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_41f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1136
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1138
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1140
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_43d
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1129
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1117
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_44f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1119
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1120
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1109
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_465
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1112
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1102
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1094
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1086
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_49b
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherIsEnabled()Z

    move-result v0

    .line 1087
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1089
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1080
    .end local v0    # "_result":Z
    :pswitch_4ad
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherStop()V

    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1073
    :pswitch_4bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->tetherStart([Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1065
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_4cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1066
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveNiceApp(I)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1057
    .end local v0    # "_arg0":I
    :pswitch_4df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1058
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthAddNiceApp(I)V

    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1049
    .end local v0    # "_arg0":I
    :pswitch_4f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1050
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveNaughtyApp(I)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1041
    .end local v0    # "_arg0":I
    :pswitch_503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1042
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthAddNaughtyApp(I)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1033
    .end local v0    # "_arg0":I
    :pswitch_515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1034
    .local v0, "_arg0":J
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->bandwidthSetGlobalAlert(J)V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1025
    .end local v0    # "_arg0":J
    :pswitch_527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1015
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1018
    .local v1, "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 1007
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_54f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 997
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1000
    .restart local v1    # "_arg1":J
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 987
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 989
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 977
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_58d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 980
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 969
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 961
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 962
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 953
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5c7
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 956
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 946
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_5d9
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->ipfwdEnabled()Z

    move-result v0

    .line 947
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 949
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 939
    .end local v0    # "_result":Z
    :pswitch_5eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->clatdStop(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 928
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 931
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 932
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 918
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 920
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 921
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->strictUidCleartextPenalty(II)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 906
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_62d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 910
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 894
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 896
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 899
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Landroid/net/INetd$Stub;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 884
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 886
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    .restart local v1    # "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 870
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 872
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 876
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 877
    .local v3, "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 856
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 858
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 860
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 862
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 863
    .restart local v3    # "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 848
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_6b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 849
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 830
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 832
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 834
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 836
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 838
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 840
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 841
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 812
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_6f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 814
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 816
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 818
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 820
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 822
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 823
    .restart local v18    # "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 794
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 796
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 798
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 800
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 802
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 804
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 805
    .restart local v18    # "_arg5":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 770
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 772
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 774
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 776
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 778
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 780
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 782
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 784
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 786
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 787
    .local v24, "_arg8":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 746
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_79e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 748
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 750
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 752
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 754
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 756
    .restart local v20    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 758
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 760
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 762
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 763
    .restart local v24    # "_arg8":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetd$Stub;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 738
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_7e4
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 739
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 720
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_7fa
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 722
    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 724
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 726
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 728
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 730
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 731
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 700
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 702
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 704
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 706
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 708
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 710
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 712
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 713
    .local v20, "_arg6":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    goto/16 :goto_af1

    .line 652
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg0":I
    move/from16 v1, v22

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg1":I
    move/from16 v2, v23

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v24

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v25

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "_arg4":I
    move/from16 v5, v26

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "_arg5":I
    move/from16 v6, v27

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg6":I
    move/from16 v7, v28

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg7":I
    move/from16 v8, v29

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg8":Ljava/lang/String;
    move-object/from16 v9, v30

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    move v0, v10

    .local v31, "_arg9":[B
    move-object/from16 v10, v31

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    move-object/from16 v33, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v32, "_arg10":I
    .local v33, "descriptor":Ljava/lang/String;
    move/from16 v11, v32

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, "_arg11":Ljava/lang/String;
    move-object/from16 v12, v34

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v35

    .local v35, "_arg12":[B
    move-object/from16 v13, v35

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .local v36, "_arg13":I
    move/from16 v14, v36

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v37

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .local v38, "_arg15":[B
    move-object/from16 v16, v38

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "_arg16":I
    move/from16 v17, v39

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg17":I
    move/from16 v18, v40

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "_arg18":I
    move/from16 v19, v41

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg19":I
    move/from16 v20, v42

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .local v43, "_arg20":I
    move/from16 v21, v43

    .line 693
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v21}, Landroid/net/INetd$Stub;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    const/4 v1, 0x1

    goto/16 :goto_af1

    .line 637
    .end local v22    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v24    # "_arg2":Ljava/lang/String;
    .end local v25    # "_arg3":Ljava/lang/String;
    .end local v26    # "_arg4":I
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v29    # "_arg7":I
    .end local v30    # "_arg8":Ljava/lang/String;
    .end local v31    # "_arg9":[B
    .end local v32    # "_arg10":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .end local v34    # "_arg11":Ljava/lang/String;
    .end local v35    # "_arg12":[B
    .end local v36    # "_arg13":I
    .end local v37    # "_arg14":Ljava/lang/String;
    .end local v38    # "_arg15":[B
    .end local v39    # "_arg16":I
    .end local v40    # "_arg17":I
    .end local v41    # "_arg18":I
    .end local v42    # "_arg19":I
    .end local v43    # "_arg20":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8fa
    move-object/from16 v33, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 641
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 644
    .restart local v3    # "_arg3":I
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 645
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    move-object/from16 v7, p3

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    move-object/from16 v8, p2

    const/4 v1, 0x1

    goto/16 :goto_af1

    .line 627
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_91f
    move-object/from16 v33, v11

    move-object v7, v12

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v8, p2

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 629
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/net/INetd$Stub;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v1, 0x1

    goto/16 :goto_af1

    .line 611
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_93a
    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 613
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 615
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 617
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 619
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 620
    .local v13, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v1, 0x1

    goto/16 :goto_af1

    .line 596
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v12    # "_arg3":Ljava/lang/String;
    .end local v13    # "_arg4":Ljava/lang/String;
    .end local v33    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_963
    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 598
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 600
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 602
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    const/4 v1, 0x1

    goto/16 :goto_af1

    .line 584
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_985
    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 589
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/4 v1, 0x1

    goto/16 :goto_af1

    .line 572
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_99f
    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 574
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    const/4 v1, 0x1

    goto/16 :goto_af1

    .line 564
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9b9
    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 565
    .local v0, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 567
    goto/16 :goto_af1

    .line 557
    .end local v0    # "_result":[Landroid/net/TetherStatsParcel;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9cb
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v0

    .line 558
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 560
    goto/16 :goto_af1

    .line 548
    .end local v0    # "_result":Z
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9dd
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 550
    .local v0, "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 551
    .local v2, "_arg1":[I
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_af1

    .line 538
    .end local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    .end local v2    # "_arg1":[I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9f7
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 540
    .local v0, "_arg0":Z
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 541
    .local v2, "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    goto/16 :goto_af1

    .line 528
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a11
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 530
    .local v0, "_arg0":I
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 531
    .restart local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_af1

    .line 518
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a2b
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .restart local v0    # "_arg0":I
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 521
    .restart local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    goto/16 :goto_af1

    .line 508
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a45
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->networkRemoveInterface(ILjava/lang/String;)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_af1

    .line 498
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a5b
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->networkAddInterface(ILjava/lang/String;)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto/16 :goto_af1

    .line 490
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a71
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/net/INetd$Stub;->networkDestroy(I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_af1

    .line 480
    .end local v0    # "_arg0":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a83
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 482
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 483
    .local v2, "_arg1":Z
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->networkCreateVpn(IZ)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_af1

    .line 470
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a99
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 473
    .local v2, "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/net/INetd$Stub;->networkCreatePhysical(II)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto :goto_af1

    .line 461
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_aae
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 462
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v2

    .line 463
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 465
    goto :goto_af1

    .line 448
    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ac3
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 452
    .local v2, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 453
    .local v3, "_arg2":[I
    invoke-virtual {v6, v0, v2, v3}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v4

    .line 454
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 456
    goto :goto_af1

    .line 440
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":[I
    .end local v4    # "_result":Z
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ae0
    move v1, v10

    move-object/from16 v33, v11

    move-object v7, v12

    move-object v8, v13

    move-object v6, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v0

    .line 441
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    nop

    .line 1564
    .end local v0    # "_result":Z
    :goto_af1
    return v1

    :sswitch_data_af2
    .sparse-switch
        0xfffffe -> :sswitch_32
        0xffffff -> :sswitch_27
        0x5f4e5446 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_b00
    .packed-switch 0x1
        :pswitch_ae0
        :pswitch_ac3
        :pswitch_aae
        :pswitch_a99
        :pswitch_a83
        :pswitch_a71
        :pswitch_a5b
        :pswitch_a45
        :pswitch_a2b
        :pswitch_a11
        :pswitch_9f7
        :pswitch_9dd
        :pswitch_9cb
        :pswitch_9b9
        :pswitch_99f
        :pswitch_985
        :pswitch_963
        :pswitch_93a
        :pswitch_91f
        :pswitch_8fa
        :pswitch_868
        :pswitch_830
        :pswitch_7fa
        :pswitch_7e4
        :pswitch_79e
        :pswitch_758
        :pswitch_727
        :pswitch_6f6
        :pswitch_6c5
        :pswitch_6b3
        :pswitch_695
        :pswitch_677
        :pswitch_661
        :pswitch_647
        :pswitch_62d
        :pswitch_617
        :pswitch_5fd
        :pswitch_5eb
        :pswitch_5d9
        :pswitch_5c7
        :pswitch_5b5
        :pswitch_5a3
        :pswitch_58d
        :pswitch_577
        :pswitch_561
        :pswitch_54f
        :pswitch_539
        :pswitch_527
        :pswitch_515
        :pswitch_503
        :pswitch_4f1
        :pswitch_4df
        :pswitch_4cd
        :pswitch_4bb
        :pswitch_4ad
        :pswitch_49b
        :pswitch_489
        :pswitch_477
        :pswitch_465
        :pswitch_44f
        :pswitch_43d
        :pswitch_41f
        :pswitch_401
        :pswitch_3d7
        :pswitch_3ad
        :pswitch_39b
        :pswitch_389
        :pswitch_37b
        :pswitch_365
        :pswitch_34f
        :pswitch_33d
        :pswitch_327
        :pswitch_315
        :pswitch_303
        :pswitch_2ed
        :pswitch_2db
        :pswitch_2c5
        :pswitch_2ab
        :pswitch_295
        :pswitch_283
        :pswitch_26d
        :pswitch_257
        :pswitch_241
        :pswitch_22f
        :pswitch_219
        :pswitch_203
        :pswitch_1ed
        :pswitch_1d7
        :pswitch_1c1
        :pswitch_1ab
        :pswitch_195
        :pswitch_183
        :pswitch_175
        :pswitch_163
        :pswitch_14d
        :pswitch_137
        :pswitch_11d
        :pswitch_103
        :pswitch_e9
        :pswitch_d3
        :pswitch_bd
        :pswitch_ab
        :pswitch_95
        :pswitch_7f
        :pswitch_69
        :pswitch_53
        :pswitch_3d
    .end packed-switch
.end method
