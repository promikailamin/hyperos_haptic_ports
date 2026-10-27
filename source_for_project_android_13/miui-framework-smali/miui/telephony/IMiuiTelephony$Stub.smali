.class public abstract Lmiui/telephony/IMiuiTelephony$Stub;
.super Landroid/os/Binder;
.source "IMiuiTelephony.java"

# interfaces
.implements Lmiui/telephony/IMiuiTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/IMiuiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/IMiuiTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_get5GIndicatorStatus:I = 0x2d

.field static final blacklist TRANSACTION_getAllEsimProfiles:I = 0x3c

.field static final blacklist TRANSACTION_getCellLocationForSlot:I = 0x1a

.field static final blacklist TRANSACTION_getCotaOpconfigVersionCode:I = 0x3e

.field static final blacklist TRANSACTION_getCotaOpconfigVersionName:I = 0x3d

.field static final blacklist TRANSACTION_getDeviceId:I = 0x13

.field static final blacklist TRANSACTION_getDeviceIdList:I = 0x10

.field static final blacklist TRANSACTION_getEsimGPIOState:I = 0x38

.field static final blacklist TRANSACTION_getFeatureInfoIntentByCloud:I = 0x44

.field static final blacklist TRANSACTION_getImei:I = 0x14

.field static final blacklist TRANSACTION_getImeiList:I = 0x11

.field static final blacklist TRANSACTION_getMeid:I = 0x15

.field static final blacklist TRANSACTION_getMeidList:I = 0x12

.field static final blacklist TRANSACTION_getMobileNetworkCapability:I = 0x35

.field static final blacklist TRANSACTION_getNrConfigType:I = 0x2a

.field static final blacklist TRANSACTION_getProductEid:I = 0x39

.field static final blacklist TRANSACTION_getRestrictDcnrStatus:I = 0x2f

.field static final blacklist TRANSACTION_getSmallDeviceId:I = 0x16

.field static final blacklist TRANSACTION_getSpn:I = 0x18

.field static final blacklist TRANSACTION_getSystemDefaultSlotId:I = 0xc

.field static final blacklist TRANSACTION_getUiccSlotForCardId:I = 0x34

.field static final blacklist TRANSACTION_getUpperlayerStatus:I = 0x2e

.field static final blacklist TRANSACTION_getXMNetworkType:I = 0x2b

.field static final blacklist TRANSACTION_isConcurrentCallsPossible:I = 0x43

.field static final blacklist TRANSACTION_isCotaOpconfigUsed:I = 0x3f

.field static final blacklist TRANSACTION_isDsdaEnabled:I = 0x41

.field static final blacklist TRANSACTION_isDualNrEnabled:I = 0x33

.field static final blacklist TRANSACTION_isDualSaEnabled:I = 0x29

.field static final blacklist TRANSACTION_isEsimActive:I = 0x3a

.field static final blacklist TRANSACTION_isFeatureDisabledByCloud:I = 0x45

.field static final blacklist TRANSACTION_isFeatureEnabledByCloud:I = 0x46

.field static final blacklist TRANSACTION_isFiveGCapable:I = 0x2c

.field static final blacklist TRANSACTION_isGameFiveGOptimizeSupported:I = 0x32

.field static final blacklist TRANSACTION_isGwsdSupport:I = 0xd

.field static final blacklist TRANSACTION_isIccCardActivate:I = 0xe

.field static final blacklist TRANSACTION_isImsRegistered:I = 0x3

.field static final blacklist TRANSACTION_isNrCAEnabled:I = 0x21

.field static final blacklist TRANSACTION_isSameOperator:I = 0x17

.field static final blacklist TRANSACTION_isSupportEsimForCountry:I = 0x3b

.field static final blacklist TRANSACTION_isUserFiveGEnabled:I = 0x1d

.field static final blacklist TRANSACTION_isUserFiveGSaEnabled:I = 0x1e

.field static final blacklist TRANSACTION_isVideoTelephonyAvailable:I = 0x4

.field static final blacklist TRANSACTION_isVoNREnabled:I = 0x20

.field static final blacklist TRANSACTION_isVoNRSupported:I = 0x1f

.field static final blacklist TRANSACTION_isVolteEnabledByPlatform:I = 0xa

.field static final blacklist TRANSACTION_isVolteEnabledByPlatformForSlot:I = 0xb

.field static final blacklist TRANSACTION_isVolteEnabledByUser:I = 0x6

.field static final blacklist TRANSACTION_isVolteEnabledByUserForSlot:I = 0x7

.field static final blacklist TRANSACTION_isVtEnabledByPlatform:I = 0x8

.field static final blacklist TRANSACTION_isVtEnabledByPlatformForSlot:I = 0x9

.field static final blacklist TRANSACTION_isWifiCallingAvailable:I = 0x5

.field static final blacklist TRANSACTION_onOperatorNumericOrNameSet:I = 0x19

.field static final blacklist TRANSACTION_recordTelephonyEvent:I = 0x22

.field static final blacklist TRANSACTION_registerFiveGServiceStateCallback:I = 0x30

.field static final blacklist TRANSACTION_setCallForwardingOption:I = 0x1b

.field static final blacklist TRANSACTION_setCotaOpconfigUsed:I = 0x40

.field static final blacklist TRANSACTION_setCrbtDisable:I = 0x24

.field static final blacklist TRANSACTION_setDefaultDataSlotId:I = 0x2

.field static final blacklist TRANSACTION_setDefaultVoiceSlotId:I = 0x1

.field static final blacklist TRANSACTION_setDsdaEnabled:I = 0x42

.field static final blacklist TRANSACTION_setDualSaEnabled:I = 0x28

.field static final blacklist TRANSACTION_setEsimState:I = 0x37

.field static final blacklist TRANSACTION_setIccCardActivate:I = 0xf

.field static final blacklist TRANSACTION_setMobileNetworkCapability:I = 0x36

.field static final blacklist TRANSACTION_setUserFiveGEnabled:I = 0x1c

.field static final blacklist TRANSACTION_setUserFiveGSaEnabled:I = 0x27

.field static final blacklist TRANSACTION_setUserNrCAEnabled:I = 0x23

.field static final blacklist TRANSACTION_setUserVoNREnabled:I = 0x26

.field static final blacklist TRANSACTION_shouldDisplayCrbtButton:I = 0x25

.field static final blacklist TRANSACTION_shouldHideIntelligentDualSimButton:I = 0x47

.field static final blacklist TRANSACTION_unRegisterFiveGServiceStateCallback:I = 0x31


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 294
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 295
    const-string v0, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p0, p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/telephony/IMiuiTelephony;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 303
    if-nez p0, :cond_4

    .line 304
    const/4 v0, 0x0

    return-object v0

    .line 306
    :cond_4
    const-string v0, "miui.telephony.IMiuiTelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 307
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/telephony/IMiuiTelephony;

    if-eqz v1, :cond_14

    .line 308
    move-object v1, v0

    check-cast v1, Lmiui/telephony/IMiuiTelephony;

    return-object v1

    .line 310
    :cond_14
    new-instance v1, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 314
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

    .line 318
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "miui.telephony.IMiuiTelephony"

    .line 319
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 320
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    :cond_15
    packed-switch v7, :pswitch_data_50e

    .line 330
    packed-switch v7, :pswitch_data_514

    .line 1013
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 326
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    return v11

    .line 1006
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->shouldHideIntelligentDualSimButton()Z

    move-result v0

    .line 1007
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1009
    goto/16 :goto_50d

    .line 997
    .end local v0    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isFeatureEnabledByCloud(Ljava/lang/String;)Z

    move-result v1

    .line 1000
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1002
    goto/16 :goto_50d

    .line 987
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 988
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isFeatureDisabledByCloud(Ljava/lang/String;)Z

    move-result v1

    .line 990
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 992
    goto/16 :goto_50d

    .line 977
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 980
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 982
    goto/16 :goto_50d

    .line 969
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/Intent;
    :pswitch_69
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isConcurrentCallsPossible()Z

    move-result v0

    .line 970
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 972
    goto/16 :goto_50d

    .line 959
    .end local v0    # "_result":Z
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 961
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 962
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setDsdaEnabled(ZI)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_50d

    .line 951
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_88
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isDsdaEnabled()Z

    move-result v0

    .line 952
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 954
    goto/16 :goto_50d

    .line 942
    .end local v0    # "_result":Z
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 943
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->setCotaOpconfigUsed(Z)Z

    move-result v1

    .line 945
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 947
    goto/16 :goto_50d

    .line 934
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_a7
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isCotaOpconfigUsed()Z

    move-result v0

    .line 935
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 937
    goto/16 :goto_50d

    .line 927
    .end local v0    # "_result":Z
    :pswitch_b3
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getCotaOpconfigVersionCode()J

    move-result-wide v0

    .line 928
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 930
    goto/16 :goto_50d

    .line 920
    .end local v0    # "_result":J
    :pswitch_bf
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getCotaOpconfigVersionName()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    goto/16 :goto_50d

    .line 913
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_cb
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getAllEsimProfiles()Ljava/util/List;

    move-result-object v0

    .line 914
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/euicc/EuiccProfileInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 916
    goto/16 :goto_50d

    .line 904
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/euicc/EuiccProfileInfo;>;"
    :pswitch_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isSupportEsimForCountry(Ljava/lang/String;)Z

    move-result v1

    .line 907
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 909
    goto/16 :goto_50d

    .line 896
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_ea
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isEsimActive()Z

    move-result v0

    .line 897
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 899
    goto/16 :goto_50d

    .line 889
    .end local v0    # "_result":Z
    :pswitch_f6
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getProductEid()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    goto/16 :goto_50d

    .line 882
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_102
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getEsimGPIOState()I

    move-result v0

    .line 883
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    goto/16 :goto_50d

    .line 873
    .end local v0    # "_result":I
    :pswitch_10e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 874
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->setEsimState(I)I

    move-result v1

    .line 876
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    goto/16 :goto_50d

    .line 864
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->setMobileNetworkCapability(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    goto/16 :goto_50d

    .line 854
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getMobileNetworkCapability(I)Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 859
    goto/16 :goto_50d

    .line 844
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getUiccSlotForCardId(Ljava/lang/String;)I

    move-result v1

    .line 847
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    goto/16 :goto_50d

    .line 836
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_156
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isDualNrEnabled()Z

    move-result v0

    .line 837
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 839
    goto/16 :goto_50d

    .line 829
    .end local v0    # "_result":Z
    :pswitch_162
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isGameFiveGOptimizeSupported()Z

    move-result v0

    .line 830
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 832
    goto/16 :goto_50d

    .line 819
    .end local v0    # "_result":Z
    :pswitch_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lguplus/IMiuiFiveGServiceStateCallback;

    move-result-object v0

    .line 821
    .local v0, "_arg0":Lcom/lguplus/IMiuiFiveGServiceStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 822
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->unRegisterFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;I)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_50d

    .line 808
    .end local v0    # "_arg0":Lcom/lguplus/IMiuiFiveGServiceStateCallback;
    .end local v1    # "_arg1":I
    :pswitch_185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lguplus/IMiuiFiveGServiceStateCallback;

    move-result-object v0

    .line 810
    .restart local v0    # "_arg0":Lcom/lguplus/IMiuiFiveGServiceStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 811
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;I)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    goto/16 :goto_50d

    .line 798
    .end local v0    # "_arg0":Lcom/lguplus/IMiuiFiveGServiceStateCallback;
    .end local v1    # "_arg1":I
    :pswitch_19c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 799
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getRestrictDcnrStatus(I)I

    move-result v1

    .line 801
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    goto/16 :goto_50d

    .line 788
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 789
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getUpperlayerStatus(I)I

    move-result v1

    .line 791
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    goto/16 :goto_50d

    .line 778
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 779
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->get5GIndicatorStatus(I)I

    move-result v1

    .line 781
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    goto/16 :goto_50d

    .line 770
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1d5
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isFiveGCapable()Z

    move-result v0

    .line 771
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 773
    goto/16 :goto_50d

    .line 761
    .end local v0    # "_result":Z
    :pswitch_1e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getXMNetworkType(I)I

    move-result v1

    .line 764
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    goto/16 :goto_50d

    .line 751
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 752
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getNrConfigType(I)I

    move-result v1

    .line 754
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    goto/16 :goto_50d

    .line 743
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_207
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isDualSaEnabled()Z

    move-result v0

    .line 744
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 746
    goto/16 :goto_50d

    .line 735
    .end local v0    # "_result":Z
    :pswitch_213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 736
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->setDualSaEnabled(Z)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_50d

    .line 724
    .end local v0    # "_arg0":Z
    :pswitch_222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 726
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 727
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setUserFiveGSaEnabled(ZI)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_50d

    .line 713
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 715
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 716
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setUserVoNREnabled(IZ)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_50d

    .line 705
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_248
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->shouldDisplayCrbtButton()Z

    move-result v0

    .line 706
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 708
    goto/16 :goto_50d

    .line 697
    .end local v0    # "_result":Z
    :pswitch_254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 698
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->setCrbtDisable(Z)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    goto/16 :goto_50d

    .line 686
    .end local v0    # "_arg0":Z
    :pswitch_263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 688
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setUserNrCAEnabled(II)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_50d

    .line 677
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_276
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 678
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->recordTelephonyEvent(Landroid/os/Bundle;)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    goto/16 :goto_50d

    .line 667
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 668
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isNrCAEnabled(I)Z

    move-result v1

    .line 670
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 672
    goto/16 :goto_50d

    .line 657
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_29c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 658
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVoNREnabled(I)Z

    move-result v1

    .line 660
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 662
    goto/16 :goto_50d

    .line 649
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2af
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVoNRSupported()Z

    move-result v0

    .line 650
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 652
    goto/16 :goto_50d

    .line 640
    .end local v0    # "_result":Z
    :pswitch_2bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 641
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isUserFiveGSaEnabled(I)Z

    move-result v1

    .line 643
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 645
    goto/16 :goto_50d

    .line 630
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 631
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isUserFiveGEnabled(I)Z

    move-result v1

    .line 633
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 635
    goto/16 :goto_50d

    .line 619
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 621
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 622
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setUserFiveGEnabled(ZI)V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_50d

    .line 602
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_2f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 604
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 606
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 608
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 610
    .local v15, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/ResultReceiver;

    .line 611
    .local v16, "_arg4":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/telephony/IMiuiTelephony$Stub;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto/16 :goto_50d

    .line 590
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Landroid/os/ResultReceiver;
    :pswitch_321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 592
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 595
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 597
    goto/16 :goto_50d

    .line 576
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {v6, v0, v1, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    goto/16 :goto_50d

    .line 560
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 564
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 567
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/telephony/IMiuiTelephony$Stub;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    goto/16 :goto_50d

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 553
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 555
    goto/16 :goto_50d

    .line 538
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    goto/16 :goto_50d

    .line 526
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_39c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    goto/16 :goto_50d

    .line 514
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->getImei(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    goto/16 :goto_50d

    .line 504
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    goto/16 :goto_50d

    .line 494
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 497
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 499
    goto/16 :goto_50d

    .line 484
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 485
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getImeiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 487
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 489
    goto/16 :goto_50d

    .line 474
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 477
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 479
    goto/16 :goto_50d

    .line 463
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 465
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 466
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setIccCardActivate(IZ)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_50d

    .line 453
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isIccCardActivate(I)Z

    move-result v1

    .line 456
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 458
    goto/16 :goto_50d

    .line 445
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_43c
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isGwsdSupport()Z

    move-result v0

    .line 446
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 448
    goto/16 :goto_50d

    .line 438
    .end local v0    # "_result":Z
    :pswitch_448
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getSystemDefaultSlotId()I

    move-result v0

    .line 439
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    goto/16 :goto_50d

    .line 429
    .end local v0    # "_result":I
    :pswitch_454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByPlatformForSlot(I)Z

    move-result v1

    .line 432
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 434
    goto/16 :goto_50d

    .line 421
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_467
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByPlatform()Z

    move-result v0

    .line 422
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 424
    goto/16 :goto_50d

    .line 412
    .end local v0    # "_result":Z
    :pswitch_473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 413
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVtEnabledByPlatformForSlot(I)Z

    move-result v1

    .line 415
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 417
    goto/16 :goto_50d

    .line 404
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_486
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVtEnabledByPlatform()Z

    move-result v0

    .line 405
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 407
    goto/16 :goto_50d

    .line 395
    .end local v0    # "_result":Z
    :pswitch_492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 396
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByUserForSlot(I)Z

    move-result v1

    .line 398
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    goto :goto_50d

    .line 387
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4a4
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByUser()Z

    move-result v0

    .line 388
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto :goto_50d

    .line 378
    .end local v0    # "_result":Z
    :pswitch_4af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isWifiCallingAvailable(I)Z

    move-result v1

    .line 381
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 383
    goto :goto_50d

    .line 368
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVideoTelephonyAvailable(I)Z

    move-result v1

    .line 371
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    goto :goto_50d

    .line 358
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v6, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isImsRegistered(I)Z

    move-result v1

    .line 361
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 363
    goto :goto_50d

    .line 346
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultDataSlotId(ILjava/lang/String;)Z

    move-result v2

    .line 351
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto :goto_50d

    .line 335
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_4fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v6, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultVoiceSlotId(ILjava/lang/String;)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    nop

    .line 1016
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_50d
    return v11

    :pswitch_data_50e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_514
    .packed-switch 0x1
        :pswitch_4fb
        :pswitch_4e5
        :pswitch_4d3
        :pswitch_4c1
        :pswitch_4af
        :pswitch_4a4
        :pswitch_492
        :pswitch_486
        :pswitch_473
        :pswitch_467
        :pswitch_454
        :pswitch_448
        :pswitch_43c
        :pswitch_429
        :pswitch_416
        :pswitch_403
        :pswitch_3f0
        :pswitch_3dd
        :pswitch_3ca
        :pswitch_3b3
        :pswitch_39c
        :pswitch_389
        :pswitch_372
        :pswitch_353
        :pswitch_338
        :pswitch_321
        :pswitch_2f4
        :pswitch_2e1
        :pswitch_2ce
        :pswitch_2bb
        :pswitch_2af
        :pswitch_29c
        :pswitch_289
        :pswitch_276
        :pswitch_263
        :pswitch_254
        :pswitch_248
        :pswitch_235
        :pswitch_222
        :pswitch_213
        :pswitch_207
        :pswitch_1f4
        :pswitch_1e1
        :pswitch_1d5
        :pswitch_1c2
        :pswitch_1af
        :pswitch_19c
        :pswitch_185
        :pswitch_16e
        :pswitch_162
        :pswitch_156
        :pswitch_143
        :pswitch_130
        :pswitch_121
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_d7
        :pswitch_cb
        :pswitch_bf
        :pswitch_b3
        :pswitch_a7
        :pswitch_94
        :pswitch_88
        :pswitch_75
        :pswitch_69
        :pswitch_56
        :pswitch_43
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
