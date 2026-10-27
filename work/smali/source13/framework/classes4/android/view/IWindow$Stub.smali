.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x9

.field static final greylist-max-o TRANSACTION_dispatchAppVisibility:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatchDragEvent:I = 0xc

.field static final blacklist TRANSACTION_dispatchEnterDragArea:I = 0x15

.field static final blacklist TRANSACTION_dispatchFreeFormStackModeChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_dispatchGetNewSurface:I = 0x8

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0xb

.field static final greylist-max-o TRANSACTION_dispatchWallpaperOffsets:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatchWindowShown:I = 0xe

.field static final greylist-max-o TRANSACTION_executeCommand:I = 0x1

.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_moved:I = 0x6

.field static final blacklist TRANSACTION_notifyCastMode:I = 0x11

.field static final blacklist TRANSACTION_notifyProjectionMode:I = 0x13

.field static final blacklist TRANSACTION_notifyRotationChanged:I = 0x12

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0xf

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x10

.field static final greylist-max-o TRANSACTION_resized:I = 0x2

.field static final blacklist TRANSACTION_showInsets:I = 0x4

.field static final blacklist TRANSACTION_updateClientHoverState:I = 0x16

.field static final greylist-max-o TRANSACTION_updatePointerIcon:I = 0xd


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_4

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_4
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_14

    .line 141
    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    .line 143
    :cond_14
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 152
    packed-switch p0, :pswitch_data_52

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 240
    :pswitch_5
    const-string/jumbo v0, "updateClientHoverState"

    return-object v0

    .line 236
    :pswitch_9
    const-string v0, "dispatchEnterDragArea"

    return-object v0

    .line 232
    :pswitch_c
    const-string v0, "dispatchFreeFormStackModeChanged"

    return-object v0

    .line 228
    :pswitch_f
    const-string/jumbo v0, "notifyProjectionMode"

    return-object v0

    .line 224
    :pswitch_13
    const-string/jumbo v0, "notifyRotationChanged"

    return-object v0

    .line 220
    :pswitch_17
    const-string/jumbo v0, "notifyCastMode"

    return-object v0

    .line 216
    :pswitch_1b
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 212
    :pswitch_1f
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 208
    :pswitch_23
    const-string v0, "dispatchWindowShown"

    return-object v0

    .line 204
    :pswitch_26
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    .line 200
    :pswitch_2a
    const-string v0, "dispatchDragEvent"

    return-object v0

    .line 196
    :pswitch_2d
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    .line 192
    :pswitch_30
    const-string v0, "dispatchWallpaperOffsets"

    return-object v0

    .line 188
    :pswitch_33
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 184
    :pswitch_36
    const-string v0, "dispatchGetNewSurface"

    return-object v0

    .line 180
    :pswitch_39
    const-string v0, "dispatchAppVisibility"

    return-object v0

    .line 176
    :pswitch_3c
    const-string/jumbo v0, "moved"

    return-object v0

    .line 172
    :pswitch_40
    const-string v0, "hideInsets"

    return-object v0

    .line 168
    :pswitch_43
    const-string/jumbo v0, "showInsets"

    return-object v0

    .line 164
    :pswitch_47
    const-string v0, "insetsControlChanged"

    return-object v0

    .line 160
    :pswitch_4a
    const-string/jumbo v0, "resized"

    return-object v0

    .line 156
    :pswitch_4e
    const-string v0, "executeCommand"

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
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

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 869
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 251
    invoke-static {p1}, Landroid/view/IWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.view.IWindow"

    .line 256
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_13

    const v0, 0xffffff

    if-gt v11, v0, :cond_13

    .line 257
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    :cond_13
    packed-switch v11, :pswitch_data_1f0

    .line 267
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_1f6

    .line 497
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 263
    :pswitch_20
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    return v14

    .line 488
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 490
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 491
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->updateClientHoverState(ZZ)V

    .line 493
    goto/16 :goto_1ef

    .line 480
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_36
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 481
    .local v0, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchEnterDragArea(Landroid/view/MotionEvent;)V

    .line 483
    goto/16 :goto_1ef

    .line 470
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .local v0, "_arg0":I
    sget-object v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 473
    .local v1, "_arg1":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 475
    goto/16 :goto_1ef

    .line 462
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 463
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->notifyProjectionMode(Z)V

    .line 465
    goto/16 :goto_1ef

    .line 454
    .end local v0    # "_arg0":Z
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 455
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->notifyRotationChanged(Z)V

    .line 457
    goto/16 :goto_1ef

    .line 446
    .end local v0    # "_arg0":Z
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 447
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->notifyCastMode(Z)V

    .line 449
    goto/16 :goto_1ef

    .line 438
    .end local v0    # "_arg0":Z
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v0

    .line 439
    .local v0, "_arg0":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V

    .line 441
    goto/16 :goto_1ef

    .line 428
    .end local v0    # "_arg0":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 430
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 433
    goto/16 :goto_1ef

    .line 422
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_a2
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    .line 423
    goto/16 :goto_1ef

    .line 413
    :pswitch_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 415
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 416
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    .line 418
    goto/16 :goto_1ef

    .line 405
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :pswitch_b7
    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DragEvent;

    .line 406
    .local v0, "_arg0":Landroid/view/DragEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 408
    goto/16 :goto_1ef

    .line 387
    .end local v0    # "_arg0":Landroid/view/DragEvent;
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 391
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 393
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 395
    .local v16, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 397
    .local v17, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 398
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 400
    goto/16 :goto_1ef

    .line 369
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "_arg5":Z
    :pswitch_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 371
    .local v7, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 373
    .local v8, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 375
    .local v9, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 377
    .local v16, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 379
    .local v17, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 380
    .restart local v18    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 382
    goto/16 :goto_1ef

    .line 361
    .end local v7    # "_arg0":F
    .end local v8    # "_arg1":F
    .end local v9    # "_arg2":F
    .end local v16    # "_arg3":F
    .end local v17    # "_arg4":F
    .end local v18    # "_arg5":Z
    :pswitch_123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 364
    goto/16 :goto_1ef

    .line 355
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_12f
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    .line 356
    goto/16 :goto_1ef

    .line 348
    :pswitch_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 349
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    .line 351
    goto/16 :goto_1ef

    .line 338
    .end local v0    # "_arg0":Z
    :pswitch_140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->moved(II)V

    .line 343
    goto/16 :goto_1ef

    .line 328
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 331
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->hideInsets(IZ)V

    .line 333
    goto/16 :goto_1ef

    .line 318
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 321
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->showInsets(IZ)V

    .line 323
    goto/16 :goto_1ef

    .line 308
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_170
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    .line 310
    .local v0, "_arg0":Landroid/view/InsetsState;
    sget-object v1, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/InsetsSourceControl;

    .line 311
    .local v1, "_arg1":[Landroid/view/InsetsSourceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 313
    goto :goto_1ef

    .line 284
    .end local v0    # "_arg0":Landroid/view/InsetsState;
    .end local v1    # "_arg1":[Landroid/view/InsetsSourceControl;
    :pswitch_187
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/window/ClientWindowFrames;

    .line 286
    .local v16, "_arg0":Landroid/window/ClientWindowFrames;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 288
    .local v17, "_arg1":Z
    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/util/MergedConfiguration;

    .line 290
    .local v18, "_arg2":Landroid/util/MergedConfiguration;
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsState;

    .line 292
    .local v19, "_arg3":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 294
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 296
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 298
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 300
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 301
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindow$Stub;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    .line 303
    goto :goto_1ef

    .line 272
    .end local v16    # "_arg0":Landroid/window/ClientWindowFrames;
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/util/MergedConfiguration;
    .end local v19    # "_arg3":Landroid/view/InsetsState;
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_1d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 277
    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v10, v0, v1, v2}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 279
    nop

    .line 500
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_1ef
    return v14

    :pswitch_data_1f0
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1d8
        :pswitch_187
        :pswitch_170
        :pswitch_160
        :pswitch_150
        :pswitch_140
        :pswitch_134
        :pswitch_12f
        :pswitch_123
        :pswitch_f8
        :pswitch_c7
        :pswitch_b7
        :pswitch_a7
        :pswitch_a2
        :pswitch_8e
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_5a
        :pswitch_46
        :pswitch_36
        :pswitch_26
    .end packed-switch
.end method
