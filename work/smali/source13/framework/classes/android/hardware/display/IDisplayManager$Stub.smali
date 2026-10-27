.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final blacklist TRANSACTION_areUserDisabledHdrTypesAllowed:I = 0x11

.field static final greylist-max-o TRANSACTION_connectWifiDisplay:I = 0x8

.field static final greylist-max-o TRANSACTION_createVirtualDisplay:I = 0x14

.field static final greylist-max-o TRANSACTION_disconnectWifiDisplay:I = 0x9

.field static final greylist-max-o TRANSACTION_forgetWifiDisplay:I = 0xb

.field static final greylist-max-o TRANSACTION_getAmbientBrightnessStats:I = 0x1b

.field static final blacklist TRANSACTION_getBrightness:I = 0x24

.field static final blacklist TRANSACTION_getBrightnessConfigurationForDisplay:I = 0x1e

.field static final greylist-max-o TRANSACTION_getBrightnessConfigurationForUser:I = 0x1f

.field static final greylist-max-o TRANSACTION_getBrightnessEvents:I = 0x1a

.field static final blacklist TRANSACTION_getBrightnessInfo:I = 0x27

.field static final greylist-max-o TRANSACTION_getDefaultBrightnessConfiguration:I = 0x20

.field static final blacklist TRANSACTION_getDisplayDecorationSupport:I = 0x30

.field static final greylist-max-o TRANSACTION_getDisplayIds:I = 0x2

.field static final greylist-max-o TRANSACTION_getDisplayInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_getMinimumBrightnessCurve:I = 0x26

.field static final blacklist TRANSACTION_getPreferredWideGamutColorSpaceId:I = 0x28

.field static final blacklist TRANSACTION_getRefreshRateSwitchingType:I = 0x2f

.field static final greylist-max-o TRANSACTION_getStableDisplaySize:I = 0x19

.field static final blacklist TRANSACTION_getSystemPreferredDisplayMode:I = 0x2b

.field static final blacklist TRANSACTION_getUserDisabledHdrTypes:I = 0x12

.field static final blacklist TRANSACTION_getUserPreferredDisplayMode:I = 0x2a

.field static final greylist-max-o TRANSACTION_getWifiDisplayStatus:I = 0xe

.field static final blacklist TRANSACTION_isMinimalPostProcessingRequested:I = 0x21

.field static final blacklist TRANSACTION_isUidPresentOnDisplay:I = 0x3

.field static final greylist-max-o TRANSACTION_pauseWifiDisplay:I = 0xc

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x4

.field static final blacklist TRANSACTION_registerCallbackWithEventMask:I = 0x5

.field static final greylist-max-o TRANSACTION_releaseVirtualDisplay:I = 0x17

.field static final greylist-max-o TRANSACTION_renameWifiDisplay:I = 0xa

.field static final greylist-max-o TRANSACTION_requestColorMode:I = 0x13

.field static final greylist-max-o TRANSACTION_resizeVirtualDisplay:I = 0x15

.field static final greylist-max-o TRANSACTION_resumeWifiDisplay:I = 0xd

.field static final blacklist TRANSACTION_setAreUserDisabledHdrTypesAllowed:I = 0x10

.field static final blacklist TRANSACTION_setBrightness:I = 0x23

.field static final blacklist TRANSACTION_setBrightnessConfigurationForDisplay:I = 0x1d

.field static final greylist-max-o TRANSACTION_setBrightnessConfigurationForUser:I = 0x1c

.field static final blacklist TRANSACTION_setLimitedFrameRate:I = 0x31

.field static final blacklist TRANSACTION_setRefreshRateSwitchingType:I = 0x2e

.field static final blacklist TRANSACTION_setShouldAlwaysRespectAppRequestedMode:I = 0x2c

.field static final greylist-max-o TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x25

.field static final greylist-max-o TRANSACTION_setTemporaryBrightness:I = 0x22

.field static final blacklist TRANSACTION_setUserDisabledHdrTypes:I = 0xf

.field static final blacklist TRANSACTION_setUserPreferredDisplayMode:I = 0x29

.field static final blacklist TRANSACTION_setVirtualDisplayState:I = 0x18

.field static final greylist-max-o TRANSACTION_setVirtualDisplaySurface:I = 0x16

.field static final blacklist TRANSACTION_shouldAlwaysRespectAppRequestedMode:I = 0x2d

.field static final greylist-max-o TRANSACTION_startWifiDisplayScan:I = 0x6

.field static final greylist-max-o TRANSACTION_stopWifiDisplayScan:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 245
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 246
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 254
    if-nez p0, :cond_4

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 258
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_14

    .line 259
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    .line 261
    :cond_14
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 270
    packed-switch p0, :pswitch_data_b0

    .line 470
    const/4 v0, 0x0

    return-object v0

    .line 466
    :pswitch_5
    const-string/jumbo v0, "setLimitedFrameRate"

    return-object v0

    .line 462
    :pswitch_9
    const-string v0, "getDisplayDecorationSupport"

    return-object v0

    .line 458
    :pswitch_c
    const-string v0, "getRefreshRateSwitchingType"

    return-object v0

    .line 454
    :pswitch_f
    const-string/jumbo v0, "setRefreshRateSwitchingType"

    return-object v0

    .line 450
    :pswitch_13
    const-string/jumbo v0, "shouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 446
    :pswitch_17
    const-string/jumbo v0, "setShouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 442
    :pswitch_1b
    const-string v0, "getSystemPreferredDisplayMode"

    return-object v0

    .line 438
    :pswitch_1e
    const-string v0, "getUserPreferredDisplayMode"

    return-object v0

    .line 434
    :pswitch_21
    const-string/jumbo v0, "setUserPreferredDisplayMode"

    return-object v0

    .line 430
    :pswitch_25
    const-string v0, "getPreferredWideGamutColorSpaceId"

    return-object v0

    .line 426
    :pswitch_28
    const-string v0, "getBrightnessInfo"

    return-object v0

    .line 422
    :pswitch_2b
    const-string v0, "getMinimumBrightnessCurve"

    return-object v0

    .line 418
    :pswitch_2e
    const-string/jumbo v0, "setTemporaryAutoBrightnessAdjustment"

    return-object v0

    .line 414
    :pswitch_32
    const-string v0, "getBrightness"

    return-object v0

    .line 410
    :pswitch_35
    const-string/jumbo v0, "setBrightness"

    return-object v0

    .line 406
    :pswitch_39
    const-string/jumbo v0, "setTemporaryBrightness"

    return-object v0

    .line 402
    :pswitch_3d
    const-string v0, "isMinimalPostProcessingRequested"

    return-object v0

    .line 398
    :pswitch_40
    const-string v0, "getDefaultBrightnessConfiguration"

    return-object v0

    .line 394
    :pswitch_43
    const-string v0, "getBrightnessConfigurationForUser"

    return-object v0

    .line 390
    :pswitch_46
    const-string v0, "getBrightnessConfigurationForDisplay"

    return-object v0

    .line 386
    :pswitch_49
    const-string/jumbo v0, "setBrightnessConfigurationForDisplay"

    return-object v0

    .line 382
    :pswitch_4d
    const-string/jumbo v0, "setBrightnessConfigurationForUser"

    return-object v0

    .line 378
    :pswitch_51
    const-string v0, "getAmbientBrightnessStats"

    return-object v0

    .line 374
    :pswitch_54
    const-string v0, "getBrightnessEvents"

    return-object v0

    .line 370
    :pswitch_57
    const-string v0, "getStableDisplaySize"

    return-object v0

    .line 366
    :pswitch_5a
    const-string/jumbo v0, "setVirtualDisplayState"

    return-object v0

    .line 362
    :pswitch_5e
    const-string/jumbo v0, "releaseVirtualDisplay"

    return-object v0

    .line 358
    :pswitch_62
    const-string/jumbo v0, "setVirtualDisplaySurface"

    return-object v0

    .line 354
    :pswitch_66
    const-string/jumbo v0, "resizeVirtualDisplay"

    return-object v0

    .line 350
    :pswitch_6a
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 346
    :pswitch_6d
    const-string/jumbo v0, "requestColorMode"

    return-object v0

    .line 342
    :pswitch_71
    const-string v0, "getUserDisabledHdrTypes"

    return-object v0

    .line 338
    :pswitch_74
    const-string v0, "areUserDisabledHdrTypesAllowed"

    return-object v0

    .line 334
    :pswitch_77
    const-string/jumbo v0, "setAreUserDisabledHdrTypesAllowed"

    return-object v0

    .line 330
    :pswitch_7b
    const-string/jumbo v0, "setUserDisabledHdrTypes"

    return-object v0

    .line 326
    :pswitch_7f
    const-string v0, "getWifiDisplayStatus"

    return-object v0

    .line 322
    :pswitch_82
    const-string/jumbo v0, "resumeWifiDisplay"

    return-object v0

    .line 318
    :pswitch_86
    const-string/jumbo v0, "pauseWifiDisplay"

    return-object v0

    .line 314
    :pswitch_8a
    const-string v0, "forgetWifiDisplay"

    return-object v0

    .line 310
    :pswitch_8d
    const-string/jumbo v0, "renameWifiDisplay"

    return-object v0

    .line 306
    :pswitch_91
    const-string v0, "disconnectWifiDisplay"

    return-object v0

    .line 302
    :pswitch_94
    const-string v0, "connectWifiDisplay"

    return-object v0

    .line 298
    :pswitch_97
    const-string/jumbo v0, "stopWifiDisplayScan"

    return-object v0

    .line 294
    :pswitch_9b
    const-string/jumbo v0, "startWifiDisplayScan"

    return-object v0

    .line 290
    :pswitch_9f
    const-string/jumbo v0, "registerCallbackWithEventMask"

    return-object v0

    .line 286
    :pswitch_a3
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 282
    :pswitch_a7
    const-string v0, "isUidPresentOnDisplay"

    return-object v0

    .line 278
    :pswitch_aa
    const-string v0, "getDisplayIds"

    return-object v0

    .line 274
    :pswitch_ad
    const-string v0, "getDisplayInfo"

    return-object v0

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 265
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1899
    const/16 v0, 0x30

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 477
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    const-string v0, "android.hardware.display.IDisplayManager"

    .line 482
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 483
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    :cond_d
    packed-switch p1, :pswitch_data_378

    .line 493
    packed-switch p1, :pswitch_data_37e

    .line 960
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 489
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    return v1

    .line 950
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 952
    .local v2, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 953
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setLimitedFrameRate(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    goto/16 :goto_376

    .line 940
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":I
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v3

    .line 943
    .local v3, "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 945
    goto/16 :goto_376

    .line 932
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    :pswitch_46
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getRefreshRateSwitchingType()I

    move-result v2

    .line 933
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    goto/16 :goto_376

    .line 924
    .end local v2    # "_result":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 925
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType(I)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_376

    .line 916
    .end local v2    # "_arg0":I
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v2

    .line 917
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 919
    goto/16 :goto_376

    .line 908
    .end local v2    # "_result":Z
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 909
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    goto/16 :goto_376

    .line 898
    .end local v2    # "_arg0":Z
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 899
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    .line 901
    .local v3, "_result":Landroid/view/Display$Mode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 903
    goto/16 :goto_376

    .line 888
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/Display$Mode;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 889
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    .line 891
    .restart local v3    # "_result":Landroid/view/Display$Mode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 893
    goto/16 :goto_376

    .line 877
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/Display$Mode;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 879
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 880
    .local v3, "_arg1":Landroid/view/Display$Mode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    goto/16 :goto_376

    .line 869
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/Display$Mode;
    :pswitch_b9
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPreferredWideGamutColorSpaceId()I

    move-result v2

    .line 870
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    goto/16 :goto_376

    .line 860
    .end local v2    # "_result":I
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 861
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v3

    .line 863
    .local v3, "_result":Landroid/hardware/display/BrightnessInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 865
    goto/16 :goto_376

    .line 852
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/display/BrightnessInfo;
    :pswitch_d8
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v2

    .line 853
    .local v2, "_result":Landroid/hardware/display/Curve;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 855
    goto/16 :goto_376

    .line 844
    .end local v2    # "_result":Landroid/hardware/display/Curve;
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 845
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_376

    .line 834
    .end local v2    # "_arg0":F
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 835
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness(I)F

    move-result v3

    .line 837
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 839
    goto/16 :goto_376

    .line 823
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 825
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 826
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness(IF)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto/16 :goto_376

    .line 812
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 814
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 815
    .restart local v3    # "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(IF)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    goto/16 :goto_376

    .line 802
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 803
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->isMinimalPostProcessingRequested(I)Z

    move-result v3

    .line 805
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 807
    goto/16 :goto_376

    .line 794
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_13f
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 795
    .local v2, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 797
    goto/16 :goto_376

    .line 785
    .end local v2    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 786
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    .line 788
    .local v3, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 790
    goto/16 :goto_376

    .line 773
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 776
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v4

    .line 778
    .local v4, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 780
    goto/16 :goto_376

    .line 758
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_175
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 760
    .local v2, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 764
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_376

    .line 745
    .end local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_194
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 747
    .restart local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 749
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 750
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_376

    .line 737
    .end local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_1af
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 738
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 740
    goto/16 :goto_376

    .line 728
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 731
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 733
    goto/16 :goto_376

    .line 720
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1ce
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 721
    .local v2, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 723
    goto/16 :goto_376

    .line 710
    .end local v2    # "_result":Landroid/graphics/Point;
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 712
    .local v2, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 713
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto/16 :goto_376

    .line 701
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":Z
    :pswitch_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 702
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_376

    .line 690
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :pswitch_204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 692
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 693
    .local v3, "_arg1":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    goto/16 :goto_376

    .line 675
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":Landroid/view/Surface;
    :pswitch_21f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 677
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 679
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 681
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 682
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto/16 :goto_376

    .line 659
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_23e
    sget-object v2, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/VirtualDisplayConfig;

    .line 661
    .local v2, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v3

    .line 663
    .local v3, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v4

    .line 665
    .local v4, "_arg2":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v6

    .line 668
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    goto/16 :goto_376

    .line 648
    .end local v2    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v3    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v4    # "_arg2":Landroid/media/projection/IMediaProjection;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 650
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 651
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    goto/16 :goto_376

    .line 640
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_27c
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserDisabledHdrTypes()[I

    move-result-object v2

    .line 641
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 643
    goto/16 :goto_376

    .line 633
    .end local v2    # "_result":[I
    :pswitch_288
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->areUserDisabledHdrTypesAllowed()Z

    move-result v2

    .line 634
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 636
    goto/16 :goto_376

    .line 625
    .end local v2    # "_result":Z
    :pswitch_294
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 626
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_376

    .line 616
    .end local v2    # "_arg0":Z
    :pswitch_2a3
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 617
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes([I)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_376

    .line 608
    .end local v2    # "_arg0":[I
    :pswitch_2b2
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    .line 609
    .local v2, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 611
    goto/16 :goto_376

    .line 602
    .end local v2    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :pswitch_2be
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    goto/16 :goto_376

    .line 596
    :pswitch_2c6
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto/16 :goto_376

    .line 588
    :pswitch_2ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    goto/16 :goto_376

    .line 577
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 579
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    goto/16 :goto_376

    .line 570
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2f0
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    goto/16 :goto_376

    .line 562
    :pswitch_2f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto :goto_376

    .line 555
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_306
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto :goto_376

    .line 549
    :pswitch_30d
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto :goto_376

    .line 539
    :pswitch_314
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    .line 541
    .local v2, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 542
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto :goto_376

    .line 530
    .end local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    .end local v3    # "_arg1":J
    :pswitch_32a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    .line 531
    .restart local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    goto :goto_376

    .line 518
    .end local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :pswitch_33c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->isUidPresentOnDisplay(II)Z

    move-result v4

    .line 523
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 525
    goto :goto_376

    .line 508
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_352
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 509
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds(Z)[I

    move-result-object v3

    .line 511
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 513
    goto :goto_376

    .line 498
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":[I
    :pswitch_364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 501
    .local v3, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 503
    nop

    .line 963
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/DisplayInfo;
    :goto_376
    return v1

    nop

    :pswitch_data_378
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_37e
    .packed-switch 0x1
        :pswitch_364
        :pswitch_352
        :pswitch_33c
        :pswitch_32a
        :pswitch_314
        :pswitch_30d
        :pswitch_306
        :pswitch_2f8
        :pswitch_2f0
        :pswitch_2dd
        :pswitch_2ce
        :pswitch_2c6
        :pswitch_2be
        :pswitch_2b2
        :pswitch_2a3
        :pswitch_294
        :pswitch_288
        :pswitch_27c
        :pswitch_269
        :pswitch_23e
        :pswitch_21f
        :pswitch_204
        :pswitch_1f1
        :pswitch_1da
        :pswitch_1ce
        :pswitch_1bb
        :pswitch_1af
        :pswitch_194
        :pswitch_175
        :pswitch_15e
        :pswitch_14b
        :pswitch_13f
        :pswitch_12c
        :pswitch_119
        :pswitch_106
        :pswitch_f3
        :pswitch_e4
        :pswitch_d8
        :pswitch_c5
        :pswitch_b9
        :pswitch_a2
        :pswitch_8f
        :pswitch_7c
        :pswitch_6d
        :pswitch_61
        :pswitch_52
        :pswitch_46
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
