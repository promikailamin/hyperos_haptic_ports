.class public abstract Lmiui/app/IMiuiFreeFormManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiFreeFormManager.java"

# interfaces
.implements Lmiui/app/IMiuiFreeFormManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IMiuiFreeFormManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IMiuiFreeFormManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_freeformEludeToShow:I = 0x22

.field static final blacklist TRANSACTION_freeformKillAll:I = 0x23

.field static final blacklist TRANSACTION_freeformToElude:I = 0x21

.field static final blacklist TRANSACTION_getAllFreeFormStackInfosOnDisplay:I = 0x1

.field static final blacklist TRANSACTION_getAllFreeFormStackOnDisplayEndPinByHandyMode:I = 0x20

.field static final blacklist TRANSACTION_getAllPinedFreeFormStackInfosOnDisplay:I = 0x1f

.field static final blacklist TRANSACTION_getFirstUseMiuiFreeForm:I = 0xd

.field static final blacklist TRANSACTION_getFirstUseTipConfirmTimes:I = 0xb

.field static final blacklist TRANSACTION_getFreeFormStackInfoByActivity:I = 0x2

.field static final blacklist TRANSACTION_getFreeFormStackInfoByStackId:I = 0x4

.field static final blacklist TRANSACTION_getFreeFormStackInfoByWindow:I = 0x3

.field static final blacklist TRANSACTION_getFreeFormStackToAvoid:I = 0xa

.field static final blacklist TRANSACTION_getMaxMiuiFreeFormStackCountForFlashBack:I = 0x5

.field static final blacklist TRANSACTION_getMaxNumFreeformDesktopMode:I = 0x24

.field static final blacklist TRANSACTION_getShowGuideDock:I = 0x11

.field static final blacklist TRANSACTION_getShowGuideFreeform:I = 0xf

.field static final blacklist TRANSACTION_getShowGuideNotification:I = 0x12

.field static final blacklist TRANSACTION_getShowGuidePin:I = 0x10

.field static final blacklist TRANSACTION_getShowGuideSideBar:I = 0x13

.field static final blacklist TRANSACTION_hasTipView:I = 0x18

.field static final blacklist TRANSACTION_hasTipViewType:I = 0x17

.field static final blacklist TRANSACTION_hidePinFloatingWindow:I = 0x1d

.field static final blacklist TRANSACTION_isSupportPin:I = 0x1e

.field static final blacklist TRANSACTION_notifyCameraStateChanged:I = 0x8

.field static final blacklist TRANSACTION_openCameraInFreeForm:I = 0x9

.field static final blacklist TRANSACTION_registerFreeformCallback:I = 0x6

.field static final blacklist TRANSACTION_removeFreeFormTipView:I = 0x19

.field static final blacklist TRANSACTION_setFirstUseMiuiFreeForm:I = 0xe

.field static final blacklist TRANSACTION_setFirstUseTipConfirmTimes:I = 0xc

.field static final blacklist TRANSACTION_showFreeFormTipView:I = 0x14

.field static final blacklist TRANSACTION_showFreeFormTipViewByBounds:I = 0x16

.field static final blacklist TRANSACTION_showFreeFormTipViewByClassName:I = 0x15

.field static final blacklist TRANSACTION_showHidedFreeform:I = 0x25

.field static final blacklist TRANSACTION_trackClickSmallWindowEvent:I = 0x1a

.field static final blacklist TRANSACTION_trackDeskTopFunctionGuideExposeEvent:I = 0x27

.field static final blacklist TRANSACTION_trackDeskTopOpenEvent:I = 0x26

.field static final blacklist TRANSACTION_unPinFloatingWindow:I = 0x1c

.field static final blacklist TRANSACTION_unregisterFreeformCallback:I = 0x7

.field static final blacklist TRANSACTION_updatePinFloatingWindowPos:I = 0x1b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 160
    const-string v0, "miui.app.IMiuiFreeFormManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/app/IMiuiFreeFormManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 168
    if-nez p0, :cond_4

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_4
    const-string v0, "miui.app.IMiuiFreeFormManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 172
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/IMiuiFreeFormManager;

    if-eqz v1, :cond_14

    .line 173
    move-object v1, v0

    check-cast v1, Lmiui/app/IMiuiFreeFormManager;

    return-object v1

    .line 175
    :cond_14
    new-instance v1, Lmiui/app/IMiuiFreeFormManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/IMiuiFreeFormManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 184
    packed-switch p0, :pswitch_data_7a

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 340
    :pswitch_5
    const-string v0, "trackDeskTopFunctionGuideExposeEvent"

    return-object v0

    .line 336
    :pswitch_8
    const-string v0, "trackDeskTopOpenEvent"

    return-object v0

    .line 332
    :pswitch_b
    const-string v0, "showHidedFreeform"

    return-object v0

    .line 328
    :pswitch_e
    const-string v0, "getMaxNumFreeformDesktopMode"

    return-object v0

    .line 324
    :pswitch_11
    const-string v0, "freeformKillAll"

    return-object v0

    .line 320
    :pswitch_14
    const-string v0, "freeformEludeToShow"

    return-object v0

    .line 316
    :pswitch_17
    const-string v0, "freeformToElude"

    return-object v0

    .line 312
    :pswitch_1a
    const-string v0, "getAllFreeFormStackOnDisplayEndPinByHandyMode"

    return-object v0

    .line 308
    :pswitch_1d
    const-string v0, "getAllPinedFreeFormStackInfosOnDisplay"

    return-object v0

    .line 304
    :pswitch_20
    const-string v0, "isSupportPin"

    return-object v0

    .line 300
    :pswitch_23
    const-string v0, "hidePinFloatingWindow"

    return-object v0

    .line 296
    :pswitch_26
    const-string v0, "unPinFloatingWindow"

    return-object v0

    .line 292
    :pswitch_29
    const-string v0, "updatePinFloatingWindowPos"

    return-object v0

    .line 288
    :pswitch_2c
    const-string v0, "trackClickSmallWindowEvent"

    return-object v0

    .line 284
    :pswitch_2f
    const-string v0, "removeFreeFormTipView"

    return-object v0

    .line 280
    :pswitch_32
    const-string v0, "hasTipView"

    return-object v0

    .line 276
    :pswitch_35
    const-string v0, "hasTipViewType"

    return-object v0

    .line 272
    :pswitch_38
    const-string v0, "showFreeFormTipViewByBounds"

    return-object v0

    .line 268
    :pswitch_3b
    const-string v0, "showFreeFormTipViewByClassName"

    return-object v0

    .line 264
    :pswitch_3e
    const-string v0, "showFreeFormTipView"

    return-object v0

    .line 260
    :pswitch_41
    const-string v0, "getShowGuideSideBar"

    return-object v0

    .line 256
    :pswitch_44
    const-string v0, "getShowGuideNotification"

    return-object v0

    .line 252
    :pswitch_47
    const-string v0, "getShowGuideDock"

    return-object v0

    .line 248
    :pswitch_4a
    const-string v0, "getShowGuidePin"

    return-object v0

    .line 244
    :pswitch_4d
    const-string v0, "getShowGuideFreeform"

    return-object v0

    .line 240
    :pswitch_50
    const-string v0, "setFirstUseMiuiFreeForm"

    return-object v0

    .line 236
    :pswitch_53
    const-string v0, "getFirstUseMiuiFreeForm"

    return-object v0

    .line 232
    :pswitch_56
    const-string v0, "setFirstUseTipConfirmTimes"

    return-object v0

    .line 228
    :pswitch_59
    const-string v0, "getFirstUseTipConfirmTimes"

    return-object v0

    .line 224
    :pswitch_5c
    const-string v0, "getFreeFormStackToAvoid"

    return-object v0

    .line 220
    :pswitch_5f
    const-string v0, "openCameraInFreeForm"

    return-object v0

    .line 216
    :pswitch_62
    const-string v0, "notifyCameraStateChanged"

    return-object v0

    .line 212
    :pswitch_65
    const-string v0, "unregisterFreeformCallback"

    return-object v0

    .line 208
    :pswitch_68
    const-string v0, "registerFreeformCallback"

    return-object v0

    .line 204
    :pswitch_6b
    const-string v0, "getMaxMiuiFreeFormStackCountForFlashBack"

    return-object v0

    .line 200
    :pswitch_6e
    const-string v0, "getFreeFormStackInfoByStackId"

    return-object v0

    .line 196
    :pswitch_71
    const-string v0, "getFreeFormStackInfoByWindow"

    return-object v0

    .line 192
    :pswitch_74
    const-string v0, "getFreeFormStackInfoByActivity"

    return-object v0

    .line 188
    :pswitch_77
    const-string v0, "getAllFreeFormStackInfosOnDisplay"

    return-object v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 179
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1438
    const/16 v0, 0x26

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 351
    invoke-static {p1}, Lmiui/app/IMiuiFreeFormManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 355
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "miui.app.IMiuiFreeFormManager"

    .line 356
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 357
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    :cond_15
    packed-switch v7, :pswitch_data_2c4

    .line 367
    packed-switch v7, :pswitch_data_2ca

    .line 734
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 363
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    return v11

    .line 726
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->trackDeskTopFunctionGuideExposeEvent(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_2c3

    .line 717
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 718
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->trackDeskTopOpenEvent(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_2c3

    .line 710
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->showHidedFreeform()V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_2c3

    .line 703
    :pswitch_4a
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getMaxNumFreeformDesktopMode()I

    move-result v0

    .line 704
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    goto/16 :goto_2c3

    .line 697
    .end local v0    # "_result":I
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->freeformKillAll()V

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    goto/16 :goto_2c3

    .line 691
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->freeformEludeToShow()V

    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto/16 :goto_2c3

    .line 685
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->freeformToElude()V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    goto/16 :goto_2c3

    .line 676
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getAllFreeFormStackOnDisplayEndPinByHandyMode(I)Z

    move-result v1

    .line 679
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 681
    goto/16 :goto_2c3

    .line 666
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 667
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    .line 669
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 671
    goto/16 :goto_2c3

    .line 658
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    :pswitch_94
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->isSupportPin()Z

    move-result v0

    .line 659
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 661
    goto/16 :goto_2c3

    .line 650
    .end local v0    # "_result":Z
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 651
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->hidePinFloatingWindow(I)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    goto/16 :goto_2c3

    .line 632
    .end local v0    # "_arg0":I
    :pswitch_af
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Rect;

    .line 634
    .local v12, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 636
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 638
    .local v14, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 640
    .local v15, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 641
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/app/IMiuiFreeFormManager$Stub;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    move-result v0

    .line 643
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 645
    goto/16 :goto_2c3

    .line 622
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Landroid/graphics/Rect;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":F
    .end local v15    # "_arg3":F
    .end local v16    # "_arg4":Z
    :pswitch_df
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 624
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 625
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {v6, v0, v1}, Lmiui/app/IMiuiFreeFormManager$Stub;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V

    .line 627
    goto/16 :goto_2c3

    .line 615
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":I
    :pswitch_f3
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->trackClickSmallWindowEvent()V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    goto/16 :goto_2c3

    .line 607
    :pswitch_fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 608
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->removeFreeFormTipView(I)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_2c3

    .line 599
    .end local v0    # "_arg0":I
    :pswitch_10a
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->hasTipView()Z

    move-result v0

    .line 600
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 602
    goto/16 :goto_2c3

    .line 590
    .end local v0    # "_result":Z
    :pswitch_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 591
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->hasTipViewType(I)Z

    move-result v1

    .line 593
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 595
    goto/16 :goto_2c3

    .line 573
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 575
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 577
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 579
    .local v14, "_arg2":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/graphics/Rect;

    .line 581
    .local v15, "_arg3":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 582
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/app/IMiuiFreeFormManager$Stub;->showFreeFormTipViewByBounds(IIILandroid/graphics/Rect;I)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_2c3

    .line 556
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    :pswitch_155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 558
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 560
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 562
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 564
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 565
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/app/IMiuiFreeFormManager$Stub;->showFreeFormTipViewByClassName(IIIILjava/lang/String;)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    goto/16 :goto_2c3

    .line 541
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 543
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 547
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {v6, v0, v1, v2, v3}, Lmiui/app/IMiuiFreeFormManager$Stub;->showFreeFormTipView(IIII)V

    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto/16 :goto_2c3

    .line 533
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_197
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getShowGuideSideBar()I

    move-result v0

    .line 534
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    goto/16 :goto_2c3

    .line 526
    .end local v0    # "_result":I
    :pswitch_1a3
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getShowGuideNotification()I

    move-result v0

    .line 527
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    goto/16 :goto_2c3

    .line 519
    .end local v0    # "_result":I
    :pswitch_1af
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getShowGuideDock()I

    move-result v0

    .line 520
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    goto/16 :goto_2c3

    .line 512
    .end local v0    # "_result":I
    :pswitch_1bb
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getShowGuidePin()I

    move-result v0

    .line 513
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    goto/16 :goto_2c3

    .line 505
    .end local v0    # "_result":I
    :pswitch_1c7
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getShowGuideFreeform()I

    move-result v0

    .line 506
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    goto/16 :goto_2c3

    .line 497
    .end local v0    # "_result":I
    :pswitch_1d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 498
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->setFirstUseMiuiFreeForm(I)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    goto/16 :goto_2c3

    .line 489
    .end local v0    # "_arg0":I
    :pswitch_1e2
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFirstUseMiuiFreeForm()I

    move-result v0

    .line 490
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    goto/16 :goto_2c3

    .line 481
    .end local v0    # "_result":I
    :pswitch_1ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 482
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->setFirstUseTipConfirmTimes(I)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_2c3

    .line 473
    .end local v0    # "_arg0":I
    :pswitch_1fd
    invoke-virtual/range {p0 .. p0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFirstUseTipConfirmTimes()I

    move-result v0

    .line 474
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    goto/16 :goto_2c3

    .line 460
    .end local v0    # "_result":I
    :pswitch_209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 465
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {v6, v0, v1, v2}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackToAvoid(ILjava/lang/String;I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v3

    .line 467
    .local v3, "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 469
    goto/16 :goto_2c3

    .line 450
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    :pswitch_224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->openCameraInFreeForm(Ljava/lang/String;)Z

    move-result v1

    .line 453
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 455
    goto/16 :goto_2c3

    .line 440
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v6, v0, v1}, Lmiui/app/IMiuiFreeFormManager$Stub;->notifyCameraStateChanged(Ljava/lang/String;I)V

    .line 445
    goto/16 :goto_2c3

    .line 432
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/IFreeformCallback;

    move-result-object v0

    .line 433
    .local v0, "_arg0":Lmiui/app/IFreeformCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V

    .line 435
    goto :goto_2c3

    .line 424
    .end local v0    # "_arg0":Lmiui/app/IFreeformCallback;
    :pswitch_256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/IFreeformCallback;

    move-result-object v0

    .line 425
    .restart local v0    # "_arg0":Lmiui/app/IFreeformCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    .line 427
    goto :goto_2c3

    .line 412
    .end local v0    # "_arg0":Lmiui/app/IFreeformCallback;
    :pswitch_265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 415
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {v6, v0, v1}, Lmiui/app/IMiuiFreeFormManager$Stub;->getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I

    move-result v2

    .line 417
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    goto :goto_2c3

    .line 402
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_27b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    .line 405
    .local v1, "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 407
    goto :goto_2c3

    .line 392
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    :pswitch_28d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 393
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackInfoByWindow(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    .line 395
    .restart local v1    # "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 397
    goto :goto_2c3

    .line 382
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    :pswitch_29f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 383
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getFreeFormStackInfoByActivity(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v1

    .line 385
    .restart local v1    # "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 387
    goto :goto_2c3

    .line 372
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    :pswitch_2b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v6, v0}, Lmiui/app/IMiuiFreeFormManager$Stub;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    .line 375
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 377
    nop

    .line 737
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    :goto_2c3
    return v11

    :pswitch_data_2c4
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2ca
    .packed-switch 0x1
        :pswitch_2b1
        :pswitch_29f
        :pswitch_28d
        :pswitch_27b
        :pswitch_265
        :pswitch_256
        :pswitch_247
        :pswitch_237
        :pswitch_224
        :pswitch_209
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1e2
        :pswitch_1d3
        :pswitch_1c7
        :pswitch_1bb
        :pswitch_1af
        :pswitch_1a3
        :pswitch_197
        :pswitch_17c
        :pswitch_155
        :pswitch_129
        :pswitch_116
        :pswitch_10a
        :pswitch_fb
        :pswitch_f3
        :pswitch_df
        :pswitch_af
        :pswitch_a0
        :pswitch_94
        :pswitch_81
        :pswitch_6e
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4a
        :pswitch_42
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
