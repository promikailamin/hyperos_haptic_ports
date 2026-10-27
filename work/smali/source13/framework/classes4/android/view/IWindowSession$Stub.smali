.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final greylist-max-o TRANSACTION_addToDisplay:I = 0x1

.field static final blacklist TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_cancelDragAndDrop:I = 0x12

.field static final blacklist TRANSACTION_clearTouchableRegion:I = 0x2d

.field static final greylist-max-o TRANSACTION_dragRecipientEntered:I = 0x13

.field static final greylist-max-o TRANSACTION_dragRecipientExited:I = 0x14

.field static final blacklist TRANSACTION_dropForAccessibility:I = 0x10

.field static final greylist-max-o TRANSACTION_finishDrawing:I = 0xb

.field static final blacklist TRANSACTION_finishMovingTask:I = 0x20

.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x2a

.field static final greylist-max-o TRANSACTION_getInTouchMode:I = 0xd

.field static final blacklist TRANSACTION_getParentSurfaceControl:I = 0x2c

.field static final greylist-max-o TRANSACTION_getWindowId:I = 0x1d

.field static final blacklist TRANSACTION_grantEmbeddedWindowFocus:I = 0x29

.field static final blacklist TRANSACTION_grantInputChannel:I = 0x26

.field static final greylist-max-o TRANSACTION_onRectangleOnScreenRequested:I = 0x1c

.field static final greylist-max-o TRANSACTION_outOfMemory:I = 0x9

.field static final greylist-max-o TRANSACTION_performDrag:I = 0xf

.field static final greylist-max-o TRANSACTION_performHapticFeedback:I = 0xe

.field static final greylist-max-o TRANSACTION_pokeDrawLock:I = 0x1e

.field static final greylist-max-o TRANSACTION_prepareToReplaceWindows:I = 0x8

.field static final greylist-max-o TRANSACTION_relayout:I = 0x5

.field static final greylist-max-o TRANSACTION_remove:I = 0x4

.field static final greylist-max-o TRANSACTION_reportDropResult:I = 0x11

.field static final blacklist TRANSACTION_reportKeepClearAreasChanged:I = 0x25

.field static final blacklist TRANSACTION_reportSystemGestureExclusionChanged:I = 0x24

.field static final greylist-max-o TRANSACTION_sendWallpaperCommand:I = 0x1a

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInsets:I = 0xa

.field static final blacklist TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x2b

.field static final blacklist TRANSACTION_setPendingDragEndedLoc:I = 0x28

.field static final blacklist TRANSACTION_setShouldZoomOutWallpaper:I = 0x17

.field static final greylist-max-o TRANSACTION_setWallpaperDisplayOffset:I = 0x19

.field static final greylist-max-o TRANSACTION_setWallpaperPosition:I = 0x15

.field static final blacklist TRANSACTION_setWallpaperZoomOut:I = 0x16

.field static final greylist-max-o TRANSACTION_startMovingTask:I = 0x1f

.field static final blacklist TRANSACTION_updateInputChannel:I = 0x27

.field static final blacklist TRANSACTION_updateLayout:I = 0x7

.field static final greylist-max-o TRANSACTION_updatePointerIcon:I = 0x21

.field static final blacklist TRANSACTION_updateRequestedVisibilities:I = 0x23

.field static final greylist-max-o TRANSACTION_updateTapExcludeRegion:I = 0x22

.field static final blacklist TRANSACTION_updateVisibility:I = 0x6

.field static final greylist-max-o TRANSACTION_wallpaperCommandComplete:I = 0x1b

.field static final greylist-max-o TRANSACTION_wallpaperOffsetsComplete:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 380
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 381
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 389
    if-nez p0, :cond_4

    .line 390
    const/4 v0, 0x0

    return-object v0

    .line 392
    :cond_4
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 393
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_14

    .line 394
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    .line 396
    :cond_14
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 405
    packed-switch p0, :pswitch_data_aa

    .line 589
    const/4 v0, 0x0

    return-object v0

    .line 585
    :pswitch_5
    const-string v0, "clearTouchableRegion"

    return-object v0

    .line 581
    :pswitch_8
    const-string v0, "getParentSurfaceControl"

    return-object v0

    .line 577
    :pswitch_b
    const-string/jumbo v0, "setOnBackInvokedCallbackInfo"

    return-object v0

    .line 573
    :pswitch_f
    const-string v0, "generateDisplayHash"

    return-object v0

    .line 569
    :pswitch_12
    const-string v0, "grantEmbeddedWindowFocus"

    return-object v0

    .line 565
    :pswitch_15
    const-string/jumbo v0, "setPendingDragEndedLoc"

    return-object v0

    .line 561
    :pswitch_19
    const-string/jumbo v0, "updateInputChannel"

    return-object v0

    .line 557
    :pswitch_1d
    const-string v0, "grantInputChannel"

    return-object v0

    .line 553
    :pswitch_20
    const-string/jumbo v0, "reportKeepClearAreasChanged"

    return-object v0

    .line 549
    :pswitch_24
    const-string/jumbo v0, "reportSystemGestureExclusionChanged"

    return-object v0

    .line 545
    :pswitch_28
    const-string/jumbo v0, "updateRequestedVisibilities"

    return-object v0

    .line 541
    :pswitch_2c
    const-string/jumbo v0, "updateTapExcludeRegion"

    return-object v0

    .line 537
    :pswitch_30
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    .line 533
    :pswitch_34
    const-string v0, "finishMovingTask"

    return-object v0

    .line 529
    :pswitch_37
    const-string/jumbo v0, "startMovingTask"

    return-object v0

    .line 525
    :pswitch_3b
    const-string/jumbo v0, "pokeDrawLock"

    return-object v0

    .line 521
    :pswitch_3f
    const-string v0, "getWindowId"

    return-object v0

    .line 517
    :pswitch_42
    const-string/jumbo v0, "onRectangleOnScreenRequested"

    return-object v0

    .line 513
    :pswitch_46
    const-string/jumbo v0, "wallpaperCommandComplete"

    return-object v0

    .line 509
    :pswitch_4a
    const-string/jumbo v0, "sendWallpaperCommand"

    return-object v0

    .line 505
    :pswitch_4e
    const-string/jumbo v0, "setWallpaperDisplayOffset"

    return-object v0

    .line 501
    :pswitch_52
    const-string/jumbo v0, "wallpaperOffsetsComplete"

    return-object v0

    .line 497
    :pswitch_56
    const-string/jumbo v0, "setShouldZoomOutWallpaper"

    return-object v0

    .line 493
    :pswitch_5a
    const-string/jumbo v0, "setWallpaperZoomOut"

    return-object v0

    .line 489
    :pswitch_5e
    const-string/jumbo v0, "setWallpaperPosition"

    return-object v0

    .line 485
    :pswitch_62
    const-string v0, "dragRecipientExited"

    return-object v0

    .line 481
    :pswitch_65
    const-string v0, "dragRecipientEntered"

    return-object v0

    .line 477
    :pswitch_68
    const-string v0, "cancelDragAndDrop"

    return-object v0

    .line 473
    :pswitch_6b
    const-string/jumbo v0, "reportDropResult"

    return-object v0

    .line 469
    :pswitch_6f
    const-string v0, "dropForAccessibility"

    return-object v0

    .line 465
    :pswitch_72
    const-string/jumbo v0, "performDrag"

    return-object v0

    .line 461
    :pswitch_76
    const-string/jumbo v0, "performHapticFeedback"

    return-object v0

    .line 457
    :pswitch_7a
    const-string v0, "getInTouchMode"

    return-object v0

    .line 453
    :pswitch_7d
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 449
    :pswitch_81
    const-string v0, "finishDrawing"

    return-object v0

    .line 445
    :pswitch_84
    const-string/jumbo v0, "setInsets"

    return-object v0

    .line 441
    :pswitch_88
    const-string/jumbo v0, "outOfMemory"

    return-object v0

    .line 437
    :pswitch_8c
    const-string/jumbo v0, "prepareToReplaceWindows"

    return-object v0

    .line 433
    :pswitch_90
    const-string/jumbo v0, "updateLayout"

    return-object v0

    .line 429
    :pswitch_94
    const-string/jumbo v0, "updateVisibility"

    return-object v0

    .line 425
    :pswitch_98
    const-string/jumbo v0, "relayout"

    return-object v0

    .line 421
    :pswitch_9c
    const-string/jumbo v0, "remove"

    return-object v0

    .line 417
    :pswitch_a0
    const-string v0, "addToDisplayWithoutInputChannel"

    return-object v0

    .line 413
    :pswitch_a3
    const-string v0, "addToDisplayAsUser"

    return-object v0

    .line 409
    :pswitch_a6
    const-string v0, "addToDisplay"

    return-object v0

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 400
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2338
    const/16 v0, 0x2c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 596
    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.view.IWindowSession"

    .line 601
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 602
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    :cond_15
    packed-switch v14, :pswitch_data_7c0

    .line 612
    packed-switch v14, :pswitch_data_7c6

    .line 1261
    move-object v14, v12

    move-object v10, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 608
    :pswitch_22
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    return v10

    .line 1253
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1254
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_7bf

    .line 1243
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1244
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->getParentSurfaceControl(Landroid/view/IWindow;)Landroid/view/WallpaperAnimationTarget;

    move-result-object v1

    .line 1246
    .local v1, "_result":Landroid/view/WallpaperAnimationTarget;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1248
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_7bf

    .line 1233
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Landroid/view/WallpaperAnimationTarget;
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1235
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallbackInfo;

    .line 1236
    .local v1, "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 1238
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_7bf

    .line 1219
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1221
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1223
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1225
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1226
    .local v3, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 1228
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_7bf

    .line 1206
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1208
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1210
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1211
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1212
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V

    .line 1213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_7bf

    .line 1189
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Z
    :pswitch_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 1191
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1193
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1195
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1197
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1198
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setPendingDragEndedLoc(Landroid/view/IWindow;IIII)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_7bf

    .line 1171
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1173
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1175
    .local v8, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/SurfaceControl;

    .line 1177
    .local v9, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1179
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1181
    .local v17, "_arg4":I
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    .line 1182
    .local v18, "_arg5":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1183
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V

    .line 1184
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_7bf

    .line 1143
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/view/SurfaceControl;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/graphics/Region;
    :pswitch_12b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1145
    .local v16, "_arg0":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    .line 1147
    .local v17, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v18

    .line 1149
    .local v18, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1151
    .local v19, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1153
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1155
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1157
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    .line 1159
    .local v23, "_arg7":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1161
    .local v24, "_arg8":Ljava/lang/String;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    .line 1162
    .local v9, "_arg9":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v25, v9

    .end local v9    # "_arg9":Landroid/view/InputChannel;
    .local v25, "_arg9":Landroid/view/InputChannel;
    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    move-object/from16 v0, v25

    .end local v25    # "_arg9":Landroid/view/InputChannel;
    .local v0, "_arg9":Landroid/view/InputChannel;
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1166
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1131
    .end local v0    # "_arg9":Landroid/view/InputChannel;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/view/SurfaceControl;
    .end local v18    # "_arg2":Landroid/view/IWindow;
    .end local v19    # "_arg3":Landroid/os/IBinder;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Landroid/os/IBinder;
    .end local v24    # "_arg8":Ljava/lang/String;
    :pswitch_18d
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1133
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1135
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1136
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    .line 1138
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1121
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :pswitch_1af
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1123
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1124
    .restart local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    .line 1126
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1111
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :pswitch_1cb
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1113
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsVisibilities;

    .line 1114
    .local v1, "_arg1":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V

    .line 1116
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1101
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/InsetsVisibilities;
    :pswitch_1e9
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1103
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 1104
    .local v1, "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 1106
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1093
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Region;
    :pswitch_207
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1094
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 1096
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1085
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_21d
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1086
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    .line 1088
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1071
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_233
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1073
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1075
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1076
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    .line 1078
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1080
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1062
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":Z
    :pswitch_258
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1063
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1052
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_26d
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1053
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    .line 1055
    .local v1, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1057
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1042
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/view/IWindowId;
    :pswitch_286
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1044
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1045
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1046
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1047
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1032
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :pswitch_2a0
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1034
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1035
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1037
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 1010
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_2ba
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1012
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1014
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1016
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1018
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1020
    .local v17, "_arg4":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 1022
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1023
    .local v19, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1025
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1027
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 998
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/Bundle;
    .end local v19    # "_arg6":Z
    :pswitch_2fe
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1000
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1002
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1003
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 1005
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 990
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_318
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 991
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 993
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 980
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_32a
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 982
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 983
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 985
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 970
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_340
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 972
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 973
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 975
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 954
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":F
    :pswitch_356
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 956
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 958
    .local v7, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 960
    .local v8, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 962
    .local v9, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 963
    .local v10, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 965
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 946
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":F
    .end local v10    # "_arg4":F
    :pswitch_37f
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 947
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 949
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 938
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_395
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 939
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 941
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 928
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_3ab
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 930
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 931
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 933
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 918
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_3c1
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 920
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 921
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 923
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 904
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    :pswitch_3db
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 906
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 908
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 909
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v3

    .line 911
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 913
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 878
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_400
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v10

    .line 880
    .local v10, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 882
    .local v16, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    .line 884
    .local v17, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 886
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 888
    .local v19, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 890
    .local v20, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 892
    .local v21, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 894
    .local v22, "_arg7":F
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/content/ClipData;

    .line 895
    .local v23, "_arg8":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    .line 897
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 899
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 866
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v10    # "_arg0":Landroid/view/IWindow;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Landroid/view/SurfaceControl;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":F
    .end local v20    # "_arg5":F
    .end local v21    # "_arg6":F
    .end local v22    # "_arg7":F
    .end local v23    # "_arg8":Landroid/content/ClipData;
    :pswitch_45c
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 869
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(IZ)Z

    move-result v2

    .line 871
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 873
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 858
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_479
    move v14, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v0

    .line 859
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 861
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 851
    .end local v0    # "_result":Z
    :pswitch_48b
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 852
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 854
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 839
    .end local v0    # "_arg0":Z
    :pswitch_49d
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 841
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 843
    .local v1, "_arg1":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 846
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 823
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "_arg2":I
    :pswitch_4bf
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 825
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 827
    .local v7, "_arg1":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Rect;

    .line 829
    .local v8, "_arg2":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Rect;

    .line 831
    .local v9, "_arg3":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Region;

    .line 832
    .local v10, "_arg4":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 834
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 813
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    .end local v10    # "_arg4":Landroid/graphics/Region;
    :pswitch_4fb
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 814
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    .line 816
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 803
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Z
    :pswitch_518
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 805
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 806
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    .line 808
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 785
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_52e
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    .line 787
    .local v7, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 789
    .local v8, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 791
    .local v9, "_arg2":I
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/window/ClientWindowFrames;

    .line 793
    .local v10, "_arg3":Landroid/window/ClientWindowFrames;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 795
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 796
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V

    .line 798
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 754
    .end local v7    # "_arg0":Landroid/view/IWindow;
    .end local v8    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/window/ClientWindowFrames;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_56c
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    .line 756
    .local v8, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 758
    .local v9, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 760
    .local v10, "_arg2":I
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v7, v0

    .line 762
    .local v7, "_arg3":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v6, v0

    .line 764
    .local v6, "_arg4":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v5, v0

    .line 766
    .local v5, "_arg5":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 767
    .local v4, "_arg6_length":I
    if-gez v4, :cond_59d

    .line 768
    const/4 v0, 0x0

    move-object v3, v0

    .local v0, "_arg6":[Landroid/view/InsetsSourceControl;
    goto :goto_5a0

    .line 770
    .end local v0    # "_arg6":[Landroid/view/InsetsSourceControl;
    :cond_59d
    new-array v0, v4, [Landroid/view/InsetsSourceControl;

    move-object v3, v0

    .line 772
    .local v3, "_arg6":[Landroid/view/InsetsSourceControl;
    :goto_5a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v16, v3

    .end local v3    # "_arg6":[Landroid/view/InsetsSourceControl;
    .local v16, "_arg6":[Landroid/view/InsetsSourceControl;
    move v3, v10

    move/from16 v17, v4

    .end local v4    # "_arg6_length":I
    .local v17, "_arg6_length":I
    move-object v4, v7

    move-object/from16 v18, v5

    .end local v5    # "_arg5":Landroid/view/InsetsState;
    .local v18, "_arg5":Landroid/view/InsetsState;
    move-object v5, v6

    move-object/from16 v26, v6

    .end local v6    # "_arg4":Landroid/view/SurfaceControl;
    .local v26, "_arg4":Landroid/view/SurfaceControl;
    move-object/from16 v6, v18

    move-object/from16 v19, v8

    move-object v8, v7

    .end local v7    # "_arg3":Landroid/util/MergedConfiguration;
    .local v8, "_arg3":Landroid/util/MergedConfiguration;
    .local v19, "_arg0":Landroid/view/IWindow;
    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 774
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    invoke-virtual {v12, v8, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 777
    move-object/from16 v1, v26

    .end local v26    # "_arg4":Landroid/view/SurfaceControl;
    .local v1, "_arg4":Landroid/view/SurfaceControl;
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 778
    move-object/from16 v2, v18

    .end local v18    # "_arg5":Landroid/view/InsetsState;
    .local v2, "_arg5":Landroid/view/InsetsState;
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 779
    move-object/from16 v3, v16

    .end local v16    # "_arg6":[Landroid/view/InsetsSourceControl;
    .restart local v3    # "_arg6":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 780
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_7bf

    .line 711
    .end local v0    # "_result":I
    .end local v1    # "_arg4":Landroid/view/SurfaceControl;
    .end local v2    # "_arg5":Landroid/view/InsetsState;
    .end local v3    # "_arg6":[Landroid/view/InsetsSourceControl;
    .end local v8    # "_arg3":Landroid/util/MergedConfiguration;
    .end local v9    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "_arg2":I
    .end local v17    # "_arg6_length":I
    .end local v19    # "_arg0":Landroid/view/IWindow;
    :pswitch_5dc
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 713
    .local v16, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 715
    .local v17, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 717
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 719
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 721
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 723
    .local v21, "_arg5":I
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v10, v0

    .line 725
    .local v10, "_arg6":Landroid/window/ClientWindowFrames;
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v9, v0

    .line 727
    .local v9, "_arg7":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v8, v0

    .line 729
    .local v8, "_arg8":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v0

    .line 731
    .local v7, "_arg9":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 732
    .local v6, "_arg10_length":I
    if-gez v6, :cond_620

    .line 733
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg10":[Landroid/view/InsetsSourceControl;
    goto :goto_623

    .line 735
    .end local v0    # "_arg10":[Landroid/view/InsetsSourceControl;
    :cond_620
    new-array v0, v6, [Landroid/view/InsetsSourceControl;

    move-object v5, v0

    .line 738
    .local v5, "_arg10":[Landroid/view/InsetsSourceControl;
    :goto_623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 739
    .local v4, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v22, v4

    .end local v4    # "_arg11":Landroid/os/Bundle;
    .local v22, "_arg11":Landroid/os/Bundle;
    move/from16 v4, v19

    move-object/from16 v23, v5

    .end local v5    # "_arg10":[Landroid/view/InsetsSourceControl;
    .local v23, "_arg10":[Landroid/view/InsetsSourceControl;
    move/from16 v5, v20

    move/from16 v24, v6

    .end local v6    # "_arg10_length":I
    .local v24, "_arg10_length":I
    move/from16 v6, v21

    move-object/from16 v25, v7

    .end local v7    # "_arg9":Landroid/view/InsetsState;
    .local v25, "_arg9":Landroid/view/InsetsState;
    move-object v7, v10

    move-object/from16 v26, v8

    .end local v8    # "_arg8":Landroid/view/SurfaceControl;
    .local v26, "_arg8":Landroid/view/SurfaceControl;
    move-object v8, v9

    move-object/from16 v27, v9

    .end local v9    # "_arg7":Landroid/util/MergedConfiguration;
    .local v27, "_arg7":Landroid/util/MergedConfiguration;
    move-object/from16 v9, v26

    move-object v15, v10

    .end local v10    # "_arg6":Landroid/window/ClientWindowFrames;
    .local v15, "_arg6":Landroid/window/ClientWindowFrames;
    move-object/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v23

    move-object v14, v12

    move-object/from16 v12, v22

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .line 741
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v1, 0x1

    invoke-virtual {v14, v15, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 744
    move-object/from16 v2, v27

    .end local v27    # "_arg7":Landroid/util/MergedConfiguration;
    .local v2, "_arg7":Landroid/util/MergedConfiguration;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 745
    move-object/from16 v3, v26

    .end local v26    # "_arg8":Landroid/view/SurfaceControl;
    .local v3, "_arg8":Landroid/view/SurfaceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 746
    move-object/from16 v4, v25

    .end local v25    # "_arg9":Landroid/view/InsetsState;
    .local v4, "_arg9":Landroid/view/InsetsState;
    invoke-virtual {v14, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 747
    move-object/from16 v5, v23

    .end local v23    # "_arg10":[Landroid/view/InsetsSourceControl;
    .restart local v5    # "_arg10":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 748
    move-object/from16 v6, v22

    .end local v22    # "_arg11":Landroid/os/Bundle;
    .local v6, "_arg11":Landroid/os/Bundle;
    invoke-virtual {v14, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 749
    move-object/from16 v10, p2

    const/4 v1, 0x1

    goto/16 :goto_7bf

    .line 702
    .end local v0    # "_result":I
    .end local v2    # "_arg7":Landroid/util/MergedConfiguration;
    .end local v3    # "_arg8":Landroid/view/SurfaceControl;
    .end local v4    # "_arg9":Landroid/view/InsetsState;
    .end local v5    # "_arg10":[Landroid/view/InsetsSourceControl;
    .end local v6    # "_arg11":Landroid/os/Bundle;
    .end local v15    # "_arg6":Landroid/window/ClientWindowFrames;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v24    # "_arg10_length":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_680
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 703
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    move-object/from16 v10, p2

    const/4 v1, 0x1

    goto/16 :goto_7bf

    .line 683
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_699
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 685
    .local v6, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v10, p2

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 687
    .local v7, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 689
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 691
    .local v9, "_arg3":I
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v11, v0

    .line 692
    .local v11, "_arg4":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;)I

    move-result v0

    .line 694
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v1, 0x1

    invoke-virtual {v14, v11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 697
    const/4 v1, 0x1

    goto/16 :goto_7bf

    .line 649
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_6d8
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v11

    .line 651
    .local v11, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 653
    .local v12, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 655
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 657
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 659
    .local v17, "_arg4":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InsetsVisibilities;

    .line 661
    .local v18, "_arg5":Landroid/view/InsetsVisibilities;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    .line 663
    .local v9, "_arg6":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v8, v0

    .line 665
    .local v8, "_arg7":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 666
    .local v7, "_arg8_length":I
    if-gez v7, :cond_718

    .line 667
    const/4 v0, 0x0

    move-object v6, v0

    .local v0, "_arg8":[Landroid/view/InsetsSourceControl;
    goto :goto_71b

    .line 669
    .end local v0    # "_arg8":[Landroid/view/InsetsSourceControl;
    :cond_718
    new-array v0, v7, [Landroid/view/InsetsSourceControl;

    move-object v6, v0

    .line 671
    .local v6, "_arg8":[Landroid/view/InsetsSourceControl;
    :goto_71b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "_arg8":[Landroid/view/InsetsSourceControl;
    .local v19, "_arg8":[Landroid/view/InsetsSourceControl;
    move-object/from16 v6, v18

    move/from16 v20, v7

    .end local v7    # "_arg8_length":I
    .local v20, "_arg8_length":I
    move-object v7, v9

    move-object/from16 v21, v8

    .end local v8    # "_arg7":Landroid/view/InsetsState;
    .local v21, "_arg7":Landroid/view/InsetsState;
    move-object/from16 v22, v11

    move-object v11, v9

    .end local v9    # "_arg6":Landroid/view/InputChannel;
    .local v11, "_arg6":Landroid/view/InputChannel;
    .local v22, "_arg0":Landroid/view/IWindow;
    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 673
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/4 v1, 0x1

    invoke-virtual {v14, v11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    move-object/from16 v2, v21

    .end local v21    # "_arg7":Landroid/view/InsetsState;
    .local v2, "_arg7":Landroid/view/InsetsState;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 677
    move-object/from16 v3, v19

    .end local v19    # "_arg8":[Landroid/view/InsetsSourceControl;
    .local v3, "_arg8":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 678
    const/4 v1, 0x1

    goto/16 :goto_7bf

    .line 617
    .end local v0    # "_result":I
    .end local v2    # "_arg7":Landroid/view/InsetsState;
    .end local v3    # "_arg8":[Landroid/view/InsetsSourceControl;
    .end local v12    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/view/InsetsVisibilities;
    .end local v20    # "_arg8_length":I
    .end local v22    # "_arg0":Landroid/view/IWindow;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_750
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    .line 619
    .local v9, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 621
    .local v11, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 623
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 625
    .local v15, "_arg3":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/InsetsVisibilities;

    .line 627
    .local v16, "_arg4":Landroid/view/InsetsVisibilities;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v8, v0

    .line 629
    .local v8, "_arg5":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v0

    .line 631
    .local v7, "_arg6":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 632
    .local v6, "_arg7_length":I
    if-gez v6, :cond_78c

    .line 633
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg7":[Landroid/view/InsetsSourceControl;
    goto :goto_78f

    .line 635
    .end local v0    # "_arg7":[Landroid/view/InsetsSourceControl;
    :cond_78c
    new-array v0, v6, [Landroid/view/InsetsSourceControl;

    move-object v5, v0

    .line 637
    .local v5, "_arg7":[Landroid/view/InsetsSourceControl;
    :goto_78f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v11

    move v3, v12

    move v4, v15

    move-object/from16 v17, v5

    .end local v5    # "_arg7":[Landroid/view/InsetsSourceControl;
    .local v17, "_arg7":[Landroid/view/InsetsSourceControl;
    move-object/from16 v5, v16

    move/from16 v18, v6

    .end local v6    # "_arg7_length":I
    .local v18, "_arg7_length":I
    move-object v6, v8

    move-object/from16 v19, v7

    .end local v7    # "_arg6":Landroid/view/InsetsState;
    .local v19, "_arg6":Landroid/view/InsetsState;
    move-object/from16 v20, v9

    move-object v9, v8

    .end local v8    # "_arg5":Landroid/view/InputChannel;
    .local v9, "_arg5":Landroid/view/InputChannel;
    .local v20, "_arg0":Landroid/view/IWindow;
    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 639
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v1, 0x1

    invoke-virtual {v14, v9, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 642
    move-object/from16 v2, v19

    .end local v19    # "_arg6":Landroid/view/InsetsState;
    .local v2, "_arg6":Landroid/view/InsetsState;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 643
    move-object/from16 v3, v17

    .end local v17    # "_arg7":[Landroid/view/InsetsSourceControl;
    .local v3, "_arg7":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 644
    nop

    .line 1264
    .end local v0    # "_result":I
    .end local v2    # "_arg6":Landroid/view/InsetsState;
    .end local v3    # "_arg7":[Landroid/view/InsetsSourceControl;
    .end local v9    # "_arg5":Landroid/view/InputChannel;
    .end local v11    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/view/InsetsVisibilities;
    .end local v18    # "_arg7_length":I
    .end local v20    # "_arg0":Landroid/view/IWindow;
    :goto_7bf
    return v1

    :pswitch_data_7c0
    .packed-switch 0x5f4e5446
        :pswitch_22
    .end packed-switch

    :pswitch_data_7c6
    .packed-switch 0x1
        :pswitch_750
        :pswitch_6d8
        :pswitch_699
        :pswitch_680
        :pswitch_5dc
        :pswitch_56c
        :pswitch_52e
        :pswitch_518
        :pswitch_4fb
        :pswitch_4bf
        :pswitch_49d
        :pswitch_48b
        :pswitch_479
        :pswitch_45c
        :pswitch_400
        :pswitch_3db
        :pswitch_3c1
        :pswitch_3ab
        :pswitch_395
        :pswitch_37f
        :pswitch_356
        :pswitch_340
        :pswitch_32a
        :pswitch_318
        :pswitch_2fe
        :pswitch_2ba
        :pswitch_2a0
        :pswitch_286
        :pswitch_26d
        :pswitch_258
        :pswitch_233
        :pswitch_21d
        :pswitch_207
        :pswitch_1e9
        :pswitch_1cb
        :pswitch_1af
        :pswitch_18d
        :pswitch_12b
        :pswitch_f0
        :pswitch_c0
        :pswitch_a0
        :pswitch_77
        :pswitch_5a
        :pswitch_3e
        :pswitch_26
    .end packed-switch
.end method
