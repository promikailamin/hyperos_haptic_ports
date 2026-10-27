.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


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

.field static final TRANSACTION_ipSecMigrate:I = 0x6c

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

.field static final TRANSACTION_networkAllowBypassVpnOnNetwork:I = 0x6e

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

.field static final TRANSACTION_setNetworkAllowlist:I = 0x6d

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

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 3854
    const-string v2, "android$net$INetd"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 414
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 415
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 426
    :cond_4
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 427
    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_13

    .line 428
    check-cast v0, Landroid/net/INetd;

    return-object v0

    .line 430
    :cond_13
    new-instance v0, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    .line 438
    sget-object v3, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v4, 0xffffff

    const/4 v11, 0x1

    if-lt v1, v11, :cond_15

    if-gt v1, v4, :cond_15

    .line 440
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    const v5, 0x5f4e5446

    if-ne v1, v5, :cond_1e

    .line 443
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1e
    if-ne v1, v4, :cond_2b

    .line 447
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-interface {v0}, Landroid/net/INetd;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :cond_2b
    const v3, 0xfffffe

    if-ne v1, v3, :cond_3b

    .line 452
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-interface {v0}, Landroid/net/INetd;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_3b
    packed-switch v1, :pswitch_data_852

    .line 1609
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1598
    :pswitch_43
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1600
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1602
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1603
    invoke-interface {v0, v1, v3, v2}, Landroid/net/INetd;->networkAllowBypassVpnOnNetwork(ZII)V

    .line 1604
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    :goto_55
    move v12, v11

    goto/16 :goto_851

    .line 1590
    :pswitch_58
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1591
    invoke-interface {v0, v1}, Landroid/net/INetd;->setNetworkAllowlist([Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1592
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_55

    .line 1582
    :pswitch_67
    sget-object v1, Landroid/net/IpSecMigrateInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecMigrateInfoParcel;

    .line 1583
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecMigrate(Landroid/net/IpSecMigrateInfoParcel;)V

    .line 1584
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_55

    .line 1574
    :pswitch_76
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1575
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1576
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_55

    .line 1566
    :pswitch_85
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1567
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1568
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_55

    .line 1558
    :pswitch_94
    sget-object v1, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NativeNetworkConfig;

    .line 1559
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCreate(Landroid/net/NativeNetworkConfig;)V

    .line 1560
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_55

    .line 1549
    :pswitch_a3
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1550
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 1551
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_55

    .line 1539
    :pswitch_b2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1541
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1542
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->tetherOffloadSetInterfaceQuota(IJ)V

    .line 1543
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_55

    .line 1531
    :pswitch_c1
    invoke-interface {v0}, Landroid/net/INetd;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 1532
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_55

    .line 1524
    :pswitch_cc
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 1525
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1526
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1516
    :pswitch_dc
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 1517
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1518
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1506
    :pswitch_ec
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1508
    sget-object v3, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1509
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1510
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1496
    :pswitch_100
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1498
    sget-object v3, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1499
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1500
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1486
    :pswitch_114
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1488
    sget-object v3, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1489
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1490
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1477
    :pswitch_128
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1478
    invoke-interface {v0, v1}, Landroid/net/INetd;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    move-result-object v0

    .line 1479
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_55

    .line 1469
    :pswitch_138
    sget-object v1, Landroid/net/TetherConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherConfigParcel;

    .line 1470
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 1471
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1461
    :pswitch_148
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 1462
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_55

    .line 1455
    :pswitch_154
    invoke-interface {v0}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V

    .line 1456
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1448
    :pswitch_15c
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1449
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V

    .line 1450
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1438
    :pswitch_168
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1440
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1441
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 1442
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1430
    :pswitch_178
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v1

    .line 1431
    invoke-interface {v0, v1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 1432
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1420
    :pswitch_188
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1422
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1410
    :pswitch_198
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1412
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1413
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1400
    :pswitch_1a8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1390
    :pswitch_1b8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1393
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 1394
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1380
    :pswitch_1c8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1383
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 1384
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1372
    :pswitch_1d8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1362
    :pswitch_1e4
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1364
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1365
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1366
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1354
    :pswitch_1f4
    sget-object v1, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/InterfaceConfigurationParcel;

    .line 1355
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 1356
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1345
    :pswitch_204
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1346
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0

    .line 1347
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_55

    .line 1337
    :pswitch_214
    invoke-interface {v0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0

    .line 1338
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_55

    .line 1328
    :pswitch_220
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1330
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1331
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V

    .line 1332
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1316
    :pswitch_230
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1318
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1320
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1321
    invoke-interface {v0, v1, v3, v2}, Landroid/net/INetd;->firewallSetUidRule(III)V

    .line 1322
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1306
    :pswitch_244
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1309
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 1310
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1298
    :pswitch_254
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1299
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1300
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1289
    :pswitch_260
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1290
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result v0

    .line 1291
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_55

    .line 1281
    :pswitch_270
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1282
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectDeny(I)V

    .line 1283
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1273
    :pswitch_27c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1274
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectAllow(I)V

    .line 1275
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1263
    :pswitch_288
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1265
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1266
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 1267
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1255
    :pswitch_298
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1256
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    .line 1257
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1245
    :pswitch_2a4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1247
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1248
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    .line 1249
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1235
    :pswitch_2b4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1237
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1238
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V

    .line 1239
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1228
    :pswitch_2c4
    invoke-interface {v0}, Landroid/net/INetd;->networkClearDefault()V

    .line 1229
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1221
    :pswitch_2cc
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1222
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetDefault(I)V

    .line 1223
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1213
    :pswitch_2d8
    invoke-interface {v0}, Landroid/net/INetd;->networkGetDefault()I

    move-result v0

    .line 1214
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_55

    .line 1198
    :pswitch_2e4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1207
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1208
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1182
    :pswitch_300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    .line 1191
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1192
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1168
    :pswitch_31e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1175
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1154
    :pswitch_336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1161
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1146
    :pswitch_34e
    invoke-interface {v0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_55

    .line 1137
    :pswitch_35a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1140
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1129
    :pswitch_36a
    invoke-interface {v0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_55

    .line 1122
    :pswitch_376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1114
    :pswitch_382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1106
    :pswitch_38e
    invoke-interface {v0}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v0

    .line 1107
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_55

    .line 1100
    :pswitch_39a
    invoke-interface {v0}, Landroid/net/INetd;->tetherStop()V

    .line 1101
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1093
    :pswitch_3a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1085
    :pswitch_3ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1086
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V

    .line 1087
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1077
    :pswitch_3ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1078
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    .line 1079
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1069
    :pswitch_3c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1070
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V

    .line 1071
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1061
    :pswitch_3d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1062
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V

    .line 1063
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1053
    :pswitch_3de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1054
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V

    .line 1055
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1045
    :pswitch_3ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1035
    :pswitch_3f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1038
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1039
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1027
    :pswitch_406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1017
    :pswitch_412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1020
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1021
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 1007
    :pswitch_422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 997
    :pswitch_432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 989
    :pswitch_442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 990
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 981
    :pswitch_44e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 973
    :pswitch_45a
    invoke-interface {v0}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v0

    .line 974
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_55

    .line 966
    :pswitch_466
    invoke-interface {v0}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v0

    .line 967
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_55

    .line 959
    :pswitch_472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 960
    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 948
    :pswitch_47e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 951
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_55

    .line 938
    :pswitch_492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 942
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 926
    :pswitch_4a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 931
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 932
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 914
    :pswitch_4b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 919
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 920
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 904
    :pswitch_4ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 907
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 908
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 890
    :pswitch_4da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 897
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 898
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 876
    :pswitch_4f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 883
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 884
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 868
    :pswitch_50a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 850
    :pswitch_516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 861
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 862
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 832
    :pswitch_536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    .line 843
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 844
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 814
    :pswitch_558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    .line 825
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 826
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    .line 790
    :pswitch_57a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    .line 807
    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 808
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    :pswitch_5aa
    move-object v0, v2

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 768
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 782
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    .line 783
    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 784
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    :pswitch_5d9
    move-object v1, v0

    move-object v0, v2

    .line 758
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 759
    invoke-interface {v1, v0}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 760
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    :pswitch_5eb
    move-object v1, v0

    move-object v0, v2

    .line 740
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    move-object v1, v2

    .line 742
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    .line 751
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 752
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    :pswitch_614
    move-object v0, v2

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 722
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    .line 733
    invoke-interface/range {v0 .. v7}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 734
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_55

    :pswitch_63b
    move-object v0, v2

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    move v12, v11

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move v13, v12

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move v14, v13

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    move v15, v14

    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move/from16 v16, v15

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v16

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    move/from16 v18, v17

    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move/from16 v19, v18

    .line 706
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v20, v19

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move/from16 v21, v20

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move/from16 v22, v21

    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v0, p0

    .line 713
    invoke-interface/range {v0 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_6aa
    const/4 v12, 0x1

    goto/16 :goto_851

    :pswitch_6ad
    move-object v1, v0

    move-object v0, v2

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 664
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v10, p3

    .line 666
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6aa

    :pswitch_6cc
    move-object v1, v0

    move-object v0, v2

    .line 647
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 650
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 651
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6aa

    :pswitch_6e1
    move-object v0, v2

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 640
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6aa

    :pswitch_6ff
    move-object v1, v0

    move-object v0, v2

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6aa

    :pswitch_71c
    move-object v1, v0

    move-object v0, v2

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    invoke-interface {v1, v2, v3, v0}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_6aa

    :pswitch_732
    move-object v1, v0

    move-object v0, v2

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 597
    invoke-interface {v1, v2, v3, v0}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_6aa

    :pswitch_748
    move-object v1, v0

    .line 584
    invoke-interface {v1}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 585
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    const/4 v12, 0x1

    .line 586
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_851

    :pswitch_756
    move-object v1, v0

    move v12, v11

    .line 577
    invoke-interface {v1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v0

    .line 578
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_851

    :pswitch_764
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 568
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 571
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 572
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_851

    :pswitch_77b
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 560
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 561
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 562
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_851

    :pswitch_792
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 550
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 551
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 552
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_851

    :pswitch_7a9
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 540
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 541
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 542
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_851

    :pswitch_7c0
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 532
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_851

    :pswitch_7d3
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    .line 522
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_851

    :pswitch_7e6
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 511
    invoke-interface {v1, v0}, Landroid/net/INetd;->networkDestroy(I)V

    .line 512
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_851

    :pswitch_7f5
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 503
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 504
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_851

    :pswitch_807
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    invoke-interface {v1, v2, v0}, Landroid/net/INetd;->networkCreatePhysical(II)V

    .line 494
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_851

    :pswitch_819
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 482
    invoke-interface {v1, v0}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v0

    .line 483
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_851

    :pswitch_82b
    move-object v1, v0

    move-object v0, v2

    move v12, v11

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 473
    invoke-interface {v1, v2, v3, v0}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v0

    .line 474
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_851

    :pswitch_845
    move-object v1, v0

    move v12, v11

    .line 460
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    .line 461
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_851
    return v12

    :pswitch_data_852
    .packed-switch 0x1
        :pswitch_845
        :pswitch_82b
        :pswitch_819
        :pswitch_807
        :pswitch_7f5
        :pswitch_7e6
        :pswitch_7d3
        :pswitch_7c0
        :pswitch_7a9
        :pswitch_792
        :pswitch_77b
        :pswitch_764
        :pswitch_756
        :pswitch_748
        :pswitch_732
        :pswitch_71c
        :pswitch_6ff
        :pswitch_6e1
        :pswitch_6cc
        :pswitch_6ad
        :pswitch_63b
        :pswitch_614
        :pswitch_5eb
        :pswitch_5d9
        :pswitch_5aa
        :pswitch_57a
        :pswitch_558
        :pswitch_536
        :pswitch_516
        :pswitch_50a
        :pswitch_4f2
        :pswitch_4da
        :pswitch_4ca
        :pswitch_4b6
        :pswitch_4a2
        :pswitch_492
        :pswitch_47e
        :pswitch_472
        :pswitch_466
        :pswitch_45a
        :pswitch_44e
        :pswitch_442
        :pswitch_432
        :pswitch_422
        :pswitch_412
        :pswitch_406
        :pswitch_3f6
        :pswitch_3ea
        :pswitch_3de
        :pswitch_3d2
        :pswitch_3c6
        :pswitch_3ba
        :pswitch_3ae
        :pswitch_3a2
        :pswitch_39a
        :pswitch_38e
        :pswitch_382
        :pswitch_376
        :pswitch_36a
        :pswitch_35a
        :pswitch_34e
        :pswitch_336
        :pswitch_31e
        :pswitch_300
        :pswitch_2e4
        :pswitch_2d8
        :pswitch_2cc
        :pswitch_2c4
        :pswitch_2b4
        :pswitch_2a4
        :pswitch_298
        :pswitch_288
        :pswitch_27c
        :pswitch_270
        :pswitch_260
        :pswitch_254
        :pswitch_244
        :pswitch_230
        :pswitch_220
        :pswitch_214
        :pswitch_204
        :pswitch_1f4
        :pswitch_1e4
        :pswitch_1d8
        :pswitch_1c8
        :pswitch_1b8
        :pswitch_1a8
        :pswitch_198
        :pswitch_188
        :pswitch_178
        :pswitch_168
        :pswitch_15c
        :pswitch_154
        :pswitch_148
        :pswitch_138
        :pswitch_128
        :pswitch_114
        :pswitch_100
        :pswitch_ec
        :pswitch_dc
        :pswitch_cc
        :pswitch_c1
        :pswitch_b2
        :pswitch_a3
        :pswitch_94
        :pswitch_85
        :pswitch_76
        :pswitch_67
        :pswitch_58
        :pswitch_43
    .end packed-switch
.end method
