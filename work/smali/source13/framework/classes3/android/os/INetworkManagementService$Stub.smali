.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final greylist-max-o TRANSACTION_addInterfaceToLocalNetwork:I = 0x34

.field static final greylist-max-o TRANSACTION_addRoute:I = 0xd

.field static final greylist-max-o TRANSACTION_allowProtect:I = 0x32

.field static final greylist-max-o TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final blacklist TRANSACTION_closeSocketForAurogon:I = 0x39

.field static final greylist-max-o TRANSACTION_denyProtect:I = 0x33

.field static final greylist-max-o TRANSACTION_disableIpv6:I = 0xa

.field static final greylist-max-o TRANSACTION_disableNat:I = 0x1d

.field static final greylist-max-o TRANSACTION_enableIpv6:I = 0xb

.field static final greylist-max-o TRANSACTION_enableNat:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDnsForwarders:I = 0x19

.field static final greylist-max-o TRANSACTION_getInterfaceConfig:I = 0x4

.field static final greylist-max-o TRANSACTION_getIpForwardingEnabled:I = 0x10

.field static final blacklist TRANSACTION_getMiuiNetworkManager:I = 0x38

.field static final greylist-max-o TRANSACTION_getNetworkStatsTethering:I = 0x21

.field static final greylist-max-o TRANSACTION_isBandwidthControlEnabled:I = 0x2b

.field static final greylist-max-o TRANSACTION_isFirewallEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_isNetworkRestricted:I = 0x37

.field static final greylist-max-o TRANSACTION_isTetheringStarted:I = 0x15

.field static final greylist-max-o TRANSACTION_listInterfaces:I = 0x3

.field static final greylist-max-o TRANSACTION_listTetheredInterfaces:I = 0x18

.field static final greylist-max-o TRANSACTION_registerObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_registerTetheringStatsProvider:I = 0x1e

.field static final greylist-max-o TRANSACTION_removeInterfaceAlert:I = 0x25

.field static final greylist-max-o TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x35

.field static final greylist-max-o TRANSACTION_removeInterfaceQuota:I = 0x23

.field static final greylist-max-o TRANSACTION_removeRoute:I = 0xe

.field static final greylist-max-o TRANSACTION_removeRoutesFromLocalNetwork:I = 0x36

.field static final greylist-max-o TRANSACTION_setDataSaverModeEnabled:I = 0x29

.field static final greylist-max-o TRANSACTION_setFirewallChainEnabled:I = 0x31

.field static final greylist-max-o TRANSACTION_setFirewallEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_setFirewallInterfaceRule:I = 0x2e

.field static final greylist-max-o TRANSACTION_setFirewallUidRule:I = 0x2f

.field static final greylist-max-o TRANSACTION_setFirewallUidRules:I = 0x30

.field static final greylist-max-o TRANSACTION_setGlobalAlert:I = 0x26

.field static final greylist-max-o TRANSACTION_setIPv6AddrGenMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInterfaceAlert:I = 0x24

.field static final greylist-max-o TRANSACTION_setInterfaceConfig:I = 0x5

.field static final greylist-max-o TRANSACTION_setInterfaceDown:I = 0x7

.field static final greylist-max-o TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final greylist-max-o TRANSACTION_setInterfaceQuota:I = 0x22

.field static final greylist-max-o TRANSACTION_setInterfaceUp:I = 0x8

.field static final greylist-max-o TRANSACTION_setIpForwardingEnabled:I = 0x11

.field static final greylist-max-o TRANSACTION_setUidCleartextNetworkPolicy:I = 0x2a

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkAllowlist:I = 0x28

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkDenylist:I = 0x27

.field static final greylist-max-o TRANSACTION_shutdown:I = 0xf

.field static final greylist-max-o TRANSACTION_startInterfaceForwarding:I = 0x1a

.field static final greylist-max-o TRANSACTION_startTethering:I = 0x12

.field static final blacklist TRANSACTION_startTetheringWithConfiguration:I = 0x13

.field static final greylist-max-o TRANSACTION_stopInterfaceForwarding:I = 0x1b

.field static final greylist-max-o TRANSACTION_stopTethering:I = 0x14

.field static final greylist-max-o TRANSACTION_tetherInterface:I = 0x16

.field static final greylist-max-o TRANSACTION_tetherLimitReached:I = 0x20

.field static final greylist-max-o TRANSACTION_unregisterObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterTetheringStatsProvider:I = 0x1f

.field static final greylist-max-o TRANSACTION_untetherInterface:I = 0x17


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 289
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 290
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 298
    if-nez p0, :cond_4

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 302
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_14

    .line 303
    move-object v1, v0

    check-cast v1, Landroid/os/INetworkManagementService;

    return-object v1

    .line 305
    :cond_14
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 314
    packed-switch p0, :pswitch_data_da

    .line 546
    const/4 v0, 0x0

    return-object v0

    .line 542
    :pswitch_5
    const-string v0, "closeSocketForAurogon"

    return-object v0

    .line 538
    :pswitch_8
    const-string v0, "getMiuiNetworkManager"

    return-object v0

    .line 534
    :pswitch_b
    const-string/jumbo v0, "isNetworkRestricted"

    return-object v0

    .line 530
    :pswitch_f
    const-string/jumbo v0, "removeRoutesFromLocalNetwork"

    return-object v0

    .line 526
    :pswitch_13
    const-string/jumbo v0, "removeInterfaceFromLocalNetwork"

    return-object v0

    .line 522
    :pswitch_17
    const-string v0, "addInterfaceToLocalNetwork"

    return-object v0

    .line 518
    :pswitch_1a
    const-string v0, "denyProtect"

    return-object v0

    .line 514
    :pswitch_1d
    const-string v0, "allowProtect"

    return-object v0

    .line 510
    :pswitch_20
    const-string/jumbo v0, "setFirewallChainEnabled"

    return-object v0

    .line 506
    :pswitch_24
    const-string/jumbo v0, "setFirewallUidRules"

    return-object v0

    .line 502
    :pswitch_28
    const-string/jumbo v0, "setFirewallUidRule"

    return-object v0

    .line 498
    :pswitch_2c
    const-string/jumbo v0, "setFirewallInterfaceRule"

    return-object v0

    .line 494
    :pswitch_30
    const-string/jumbo v0, "isFirewallEnabled"

    return-object v0

    .line 490
    :pswitch_34
    const-string/jumbo v0, "setFirewallEnabled"

    return-object v0

    .line 486
    :pswitch_38
    const-string/jumbo v0, "isBandwidthControlEnabled"

    return-object v0

    .line 482
    :pswitch_3c
    const-string/jumbo v0, "setUidCleartextNetworkPolicy"

    return-object v0

    .line 478
    :pswitch_40
    const-string/jumbo v0, "setDataSaverModeEnabled"

    return-object v0

    .line 474
    :pswitch_44
    const-string/jumbo v0, "setUidOnMeteredNetworkAllowlist"

    return-object v0

    .line 470
    :pswitch_48
    const-string/jumbo v0, "setUidOnMeteredNetworkDenylist"

    return-object v0

    .line 466
    :pswitch_4c
    const-string/jumbo v0, "setGlobalAlert"

    return-object v0

    .line 462
    :pswitch_50
    const-string/jumbo v0, "removeInterfaceAlert"

    return-object v0

    .line 458
    :pswitch_54
    const-string/jumbo v0, "setInterfaceAlert"

    return-object v0

    .line 454
    :pswitch_58
    const-string/jumbo v0, "removeInterfaceQuota"

    return-object v0

    .line 450
    :pswitch_5c
    const-string/jumbo v0, "setInterfaceQuota"

    return-object v0

    .line 446
    :pswitch_60
    const-string v0, "getNetworkStatsTethering"

    return-object v0

    .line 442
    :pswitch_63
    const-string/jumbo v0, "tetherLimitReached"

    return-object v0

    .line 438
    :pswitch_67
    const-string/jumbo v0, "unregisterTetheringStatsProvider"

    return-object v0

    .line 434
    :pswitch_6b
    const-string/jumbo v0, "registerTetheringStatsProvider"

    return-object v0

    .line 430
    :pswitch_6f
    const-string v0, "disableNat"

    return-object v0

    .line 426
    :pswitch_72
    const-string v0, "enableNat"

    return-object v0

    .line 422
    :pswitch_75
    const-string/jumbo v0, "stopInterfaceForwarding"

    return-object v0

    .line 418
    :pswitch_79
    const-string/jumbo v0, "startInterfaceForwarding"

    return-object v0

    .line 414
    :pswitch_7d
    const-string v0, "getDnsForwarders"

    return-object v0

    .line 410
    :pswitch_80
    const-string/jumbo v0, "listTetheredInterfaces"

    return-object v0

    .line 406
    :pswitch_84
    const-string/jumbo v0, "untetherInterface"

    return-object v0

    .line 402
    :pswitch_88
    const-string/jumbo v0, "tetherInterface"

    return-object v0

    .line 398
    :pswitch_8c
    const-string/jumbo v0, "isTetheringStarted"

    return-object v0

    .line 394
    :pswitch_90
    const-string/jumbo v0, "stopTethering"

    return-object v0

    .line 390
    :pswitch_94
    const-string/jumbo v0, "startTetheringWithConfiguration"

    return-object v0

    .line 386
    :pswitch_98
    const-string/jumbo v0, "startTethering"

    return-object v0

    .line 382
    :pswitch_9c
    const-string/jumbo v0, "setIpForwardingEnabled"

    return-object v0

    .line 378
    :pswitch_a0
    const-string v0, "getIpForwardingEnabled"

    return-object v0

    .line 374
    :pswitch_a3
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 370
    :pswitch_a7
    const-string/jumbo v0, "removeRoute"

    return-object v0

    .line 366
    :pswitch_ab
    const-string v0, "addRoute"

    return-object v0

    .line 362
    :pswitch_ae
    const-string/jumbo v0, "setIPv6AddrGenMode"

    return-object v0

    .line 358
    :pswitch_b2
    const-string v0, "enableIpv6"

    return-object v0

    .line 354
    :pswitch_b5
    const-string v0, "disableIpv6"

    return-object v0

    .line 350
    :pswitch_b8
    const-string/jumbo v0, "setInterfaceIpv6PrivacyExtensions"

    return-object v0

    .line 346
    :pswitch_bc
    const-string/jumbo v0, "setInterfaceUp"

    return-object v0

    .line 342
    :pswitch_c0
    const-string/jumbo v0, "setInterfaceDown"

    return-object v0

    .line 338
    :pswitch_c4
    const-string v0, "clearInterfaceAddresses"

    return-object v0

    .line 334
    :pswitch_c7
    const-string/jumbo v0, "setInterfaceConfig"

    return-object v0

    .line 330
    :pswitch_cb
    const-string v0, "getInterfaceConfig"

    return-object v0

    .line 326
    :pswitch_ce
    const-string/jumbo v0, "listInterfaces"

    return-object v0

    .line 322
    :pswitch_d2
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 318
    :pswitch_d6
    const-string/jumbo v0, "registerObserver"

    return-object v0

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_cb
        :pswitch_c7
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_ae
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 309
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2188
    const/16 v0, 0x38

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 553
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    const-string v0, "android.os.INetworkManagementService"

    .line 558
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 559
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    :cond_d
    packed-switch p1, :pswitch_data_3dc

    .line 569
    packed-switch p1, :pswitch_data_3e2

    .line 1115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 565
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    return v1

    .line 1107
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1108
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->closeSocketForAurogon([I)V

    .line 1110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    goto/16 :goto_3da

    .line 1099
    .end local v2    # "_arg0":[I
    :pswitch_2b
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getMiuiNetworkManager()Landroid/os/IBinder;

    move-result-object v2

    .line 1100
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1102
    goto/16 :goto_3da

    .line 1090
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1091
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result v3

    .line 1093
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1095
    goto/16 :goto_3da

    .line 1080
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4a
    sget-object v2, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1081
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v3

    .line 1083
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    goto/16 :goto_3da

    .line 1071
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    .end local v3    # "_result":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    goto/16 :goto_3da

    .line 1060
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1063
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    goto/16 :goto_3da

    .line 1051
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1052
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto/16 :goto_3da

    .line 1042
    .end local v2    # "_arg0":I
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1043
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_3da

    .line 1031
    .end local v2    # "_arg0":I
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1033
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1034
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    goto/16 :goto_3da

    .line 1018
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1020
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1022
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1023
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    goto/16 :goto_3da

    .line 1005
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1007
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1009
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1010
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_3da

    .line 994
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 997
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 999
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    goto/16 :goto_3da

    .line 986
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_f5
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v2

    .line 987
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 989
    goto/16 :goto_3da

    .line 978
    .end local v2    # "_result":Z
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 979
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    goto/16 :goto_3da

    .line 970
    .end local v2    # "_arg0":Z
    :pswitch_110
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v2

    .line 971
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 973
    goto/16 :goto_3da

    .line 960
    .end local v2    # "_result":Z
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 962
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 963
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    goto/16 :goto_3da

    .line 950
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 951
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v3

    .line 953
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 955
    goto/16 :goto_3da

    .line 939
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 942
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_3da

    .line 928
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 930
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 931
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    goto/16 :goto_3da

    .line 919
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 920
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    goto/16 :goto_3da

    .line 910
    .end local v2    # "_arg0":J
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_3da

    .line 899
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 901
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 902
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    goto/16 :goto_3da

    .line 890
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 891
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    goto/16 :goto_3da

    .line 879
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 881
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 882
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_3da

    .line 869
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 870
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 872
    .local v3, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 874
    goto/16 :goto_3da

    .line 860
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/net/NetworkStats;
    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    .line 861
    .local v2, "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    goto/16 :goto_3da

    .line 851
    .end local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    .line 852
    .restart local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_3da

    .line 840
    .end local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_1f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v2

    .line 842
    .restart local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V

    .line 845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    goto/16 :goto_3da

    .line 829
    .end local v2    # "_arg0":Landroid/net/ITetheringStatsProvider;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_20b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 832
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    goto/16 :goto_3da

    .line 818
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_21e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 820
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 821
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_3da

    .line 807
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 809
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 810
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    goto/16 :goto_3da

    .line 796
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 798
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 799
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_3da

    .line 788
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_257
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 791
    goto/16 :goto_3da

    .line 781
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_263
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 782
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 784
    goto/16 :goto_3da

    .line 773
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_26f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    goto/16 :goto_3da

    .line 764
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_27e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 765
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_3da

    .line 756
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_28d
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v2

    .line 757
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 759
    goto/16 :goto_3da

    .line 750
    .end local v2    # "_result":Z
    :pswitch_299
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto/16 :goto_3da

    .line 740
    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 742
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startTetheringWithConfiguration(Z[Ljava/lang/String;)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_3da

    .line 731
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_2b4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    goto/16 :goto_3da

    .line 722
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_2c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 723
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    goto/16 :goto_3da

    .line 714
    .end local v2    # "_arg0":Z
    :pswitch_2d2
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v2

    .line 715
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 717
    goto/16 :goto_3da

    .line 708
    .end local v2    # "_result":Z
    :pswitch_2de
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_3da

    .line 698
    :pswitch_2e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .local v2, "_arg0":I
    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 701
    .local v3, "_arg1":Landroid/net/RouteInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    goto/16 :goto_3da

    .line 687
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_2fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 689
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 690
    .restart local v3    # "_arg1":Landroid/net/RouteInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto/16 :goto_3da

    .line 676
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 679
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_3da

    .line 667
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 668
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_3da

    .line 658
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 659
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_3da

    .line 647
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 649
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 650
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    goto/16 :goto_3da

    .line 638
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 639
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    goto/16 :goto_3da

    .line 629
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto :goto_3da

    .line 620
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 621
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto :goto_3da

    .line 609
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfiguration;

    .line 612
    .local v3, "_arg1":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto :goto_3da

    .line 599
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/InterfaceConfiguration;
    :pswitch_399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 600
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    .line 602
    .local v3, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 604
    goto :goto_3da

    .line 591
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/InterfaceConfiguration;
    :pswitch_3ab
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 594
    goto :goto_3da

    .line 583
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    .line 584
    .local v2, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto :goto_3da

    .line 574
    .end local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :pswitch_3c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    .line 575
    .restart local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    nop

    .line 1118
    .end local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :goto_3da
    return v1

    nop

    :pswitch_data_3dc
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e2
    .packed-switch 0x1
        :pswitch_3c8
        :pswitch_3b6
        :pswitch_3ab
        :pswitch_399
        :pswitch_383
        :pswitch_375
        :pswitch_367
        :pswitch_358
        :pswitch_345
        :pswitch_336
        :pswitch_327
        :pswitch_314
        :pswitch_2fd
        :pswitch_2e6
        :pswitch_2de
        :pswitch_2d2
        :pswitch_2c3
        :pswitch_2b4
        :pswitch_2a1
        :pswitch_299
        :pswitch_28d
        :pswitch_27e
        :pswitch_26f
        :pswitch_263
        :pswitch_257
        :pswitch_244
        :pswitch_231
        :pswitch_21e
        :pswitch_20b
        :pswitch_1f4
        :pswitch_1e1
        :pswitch_1ce
        :pswitch_1bb
        :pswitch_1a8
        :pswitch_199
        :pswitch_186
        :pswitch_177
        :pswitch_168
        :pswitch_155
        :pswitch_142
        :pswitch_12f
        :pswitch_11c
        :pswitch_110
        :pswitch_101
        :pswitch_f5
        :pswitch_e2
        :pswitch_cb
        :pswitch_b4
        :pswitch_a1
        :pswitch_92
        :pswitch_83
        :pswitch_6e
        :pswitch_5f
        :pswitch_4a
        :pswitch_37
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
