.class public abstract Lcom/xiaomi/mirror/IMirrorService$Stub;
.super Landroid/os/Binder;
.source "IMirrorService.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addMirrorStateListener:I = 0x1

.field static final blacklist TRANSACTION_cancelCurrentDrag:I = 0x13

.field static final blacklist TRANSACTION_cancelDragAndDrop:I = 0xa

.field static final blacklist TRANSACTION_grantUriPermissionsToPackage:I = 0x5

.field static final blacklist TRANSACTION_injectDragEvent:I = 0x8

.field static final blacklist TRANSACTION_isInMouseShareMode:I = 0x17

.field static final blacklist TRANSACTION_notifyMouseShareModeState:I = 0x16

.field static final blacklist TRANSACTION_notifyShadowImage:I = 0x15

.field static final blacklist TRANSACTION_onRemoteMenuActionCall:I = 0xd

.field static final blacklist TRANSACTION_performDrag:I = 0x7

.field static final blacklist TRANSACTION_registerCursorPositionChangedListener:I = 0xe

.field static final blacklist TRANSACTION_registerDelegate:I = 0x3

.field static final blacklist TRANSACTION_registerDragListener:I = 0x10

.field static final blacklist TRANSACTION_removeMirrorStateListener:I = 0x2

.field static final blacklist TRANSACTION_reportDropResult:I = 0x9

.field static final blacklist TRANSACTION_revokePermissions:I = 0x6

.field static final blacklist TRANSACTION_setDragAcceptable:I = 0xc

.field static final blacklist TRANSACTION_setDragSurfaceVisible:I = 0x12

.field static final blacklist TRANSACTION_setFinishAnimatorNeeded:I = 0x14

.field static final blacklist TRANSACTION_unregisterCursorPositionChangedListener:I = 0xf

.field static final blacklist TRANSACTION_unregisterDelegate:I = 0x4

.field static final blacklist TRANSACTION_unregisterDragListener:I = 0x11

.field static final blacklist TRANSACTION_updateShadow:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "com.xiaomi.mirror.IMirrorService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_4
    const-string v0, "com.xiaomi.mirror.IMirrorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v1, :cond_14

    .line 108
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/mirror/IMirrorService;

    return-object v1

    .line 110
    :cond_14
    new-instance v1, Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/IMirrorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
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

    .line 118
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.xiaomi.mirror.IMirrorService"

    .line 119
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 120
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_15
    packed-switch v7, :pswitch_data_1ee

    .line 130
    packed-switch v7, :pswitch_data_1f4

    .line 359
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 126
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v11

    .line 352
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->isInMouseShareMode()Z

    move-result v0

    .line 353
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 355
    goto/16 :goto_1ed

    .line 345
    .end local v0    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 346
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->notifyMouseShareModeState(Z)V

    .line 348
    goto/16 :goto_1ed

    .line 337
    .end local v0    # "_arg0":Z
    :pswitch_3c
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 338
    .local v0, "_arg0":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->notifyShadowImage(Landroid/graphics/Bitmap;)V

    .line 340
    goto/16 :goto_1ed

    .line 329
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 330
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->setFinishAnimatorNeeded(Z)V

    .line 332
    goto/16 :goto_1ed

    .line 321
    .end local v0    # "_arg0":Z
    :pswitch_58
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->cancelCurrentDrag()Z

    move-result v0

    .line 322
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    goto/16 :goto_1ed

    .line 312
    .end local v0    # "_result":Z
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 313
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->setDragSurfaceVisible(Z)Z

    move-result v1

    .line 315
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto/16 :goto_1ed

    .line 303
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IDragListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IDragListener;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Lcom/xiaomi/mirror/IDragListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->unregisterDragListener(Lcom/xiaomi/mirror/IDragListener;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_1ed

    .line 294
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/IDragListener;
    :pswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IDragListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IDragListener;

    move-result-object v0

    .line 295
    .restart local v0    # "_arg0":Lcom/xiaomi/mirror/IDragListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->registerDragListener(Lcom/xiaomi/mirror/IDragListener;)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_1ed

    .line 285
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/IDragListener;
    :pswitch_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/ICursorPositionChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/ICursorPositionChangedListener;

    move-result-object v0

    .line 286
    .local v0, "_arg0":Lcom/xiaomi/mirror/ICursorPositionChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->unregisterCursorPositionChangedListener(Lcom/xiaomi/mirror/ICursorPositionChangedListener;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto/16 :goto_1ed

    .line 276
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/ICursorPositionChangedListener;
    :pswitch_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/ICursorPositionChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/ICursorPositionChangedListener;

    move-result-object v0

    .line 277
    .restart local v0    # "_arg0":Lcom/xiaomi/mirror/ICursorPositionChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->registerCursorPositionChangedListener(Lcom/xiaomi/mirror/ICursorPositionChangedListener;)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto/16 :goto_1ed

    .line 266
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/ICursorPositionChangedListener;
    :pswitch_c3
    sget-object v0, Lcom/xiaomi/mirror/MirrorMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/MirrorMenu;

    .line 268
    .local v0, "_arg0":Lcom/xiaomi/mirror/MirrorMenu;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V

    .line 271
    goto/16 :goto_1ed

    .line 258
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/MirrorMenu;
    .end local v1    # "_arg1":I
    :pswitch_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 259
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->setDragAcceptable(Z)V

    .line 261
    goto/16 :goto_1ed

    .line 250
    .end local v0    # "_arg0":Z
    :pswitch_e3
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 251
    .local v0, "_arg0":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->updateShadow(Landroid/graphics/Bitmap;)V

    .line 253
    goto/16 :goto_1ed

    .line 241
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    :pswitch_f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 242
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->cancelDragAndDrop(Landroid/os/IBinder;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto/16 :goto_1ed

    .line 230
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 232
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 233
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto/16 :goto_1ed

    .line 215
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    :pswitch_119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 221
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 222
    .local v3, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaomi/mirror/IMirrorService$Stub;->injectDragEvent(IIFF)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_1ed

    .line 197
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":F
    :pswitch_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v12

    .line 199
    .local v12, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 201
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 203
    .local v14, "_arg2":I
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ClipData;

    .line 205
    .local v15, "_arg3":Landroid/content/ClipData;
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Bitmap;

    .line 206
    .local v16, "_arg4":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService$Stub;->performDrag(Landroid/view/IWindow;IILandroid/content/ClipData;Landroid/graphics/Bitmap;)Landroid/os/IBinder;

    move-result-object v0

    .line 208
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 210
    goto/16 :goto_1ed

    .line 187
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v12    # "_arg0":Landroid/view/IWindow;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/content/ClipData;
    .end local v16    # "_arg4":Landroid/graphics/Bitmap;
    :pswitch_16e
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 189
    .local v0, "_arg0":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->revokePermissions(Landroid/content/ClipData;I)V

    .line 192
    goto/16 :goto_1ed

    .line 170
    .end local v0    # "_arg0":Landroid/content/ClipData;
    .end local v1    # "_arg1":I
    :pswitch_182
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 172
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 174
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 176
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 178
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 179
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService$Stub;->grantUriPermissionsToPackage(Ljava/util/List;ILjava/lang/String;II)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_1ed

    .line 162
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorDelegate;

    move-result-object v0

    .line 163
    .local v0, "_arg0":Lcom/xiaomi/mirror/IMirrorDelegate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->unregisterDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;)V

    .line 165
    goto :goto_1ed

    .line 151
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/IMirrorDelegate;
    :pswitch_1b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorDelegate;

    move-result-object v0

    .line 153
    .restart local v0    # "_arg0":Lcom/xiaomi/mirror/IMirrorDelegate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mirror/IMirrorService$Stub;->registerDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_1ed

    .line 143
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/IMirrorDelegate;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorStateListener;

    move-result-object v0

    .line 144
    .local v0, "_arg0":Lcom/xiaomi/mirror/IMirrorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->removeMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V

    .line 146
    goto :goto_1ed

    .line 135
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/IMirrorStateListener;
    :pswitch_1de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorStateListener;

    move-result-object v0

    .line 136
    .restart local v0    # "_arg0":Lcom/xiaomi/mirror/IMirrorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {v6, v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->addMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V

    .line 138
    nop

    .line 362
    .end local v0    # "_arg0":Lcom/xiaomi/mirror/IMirrorStateListener;
    :goto_1ed
    return v11

    :pswitch_data_1ee
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_1de
        :pswitch_1cf
        :pswitch_1b9
        :pswitch_1aa
        :pswitch_182
        :pswitch_16e
        :pswitch_134
        :pswitch_119
        :pswitch_102
        :pswitch_f3
        :pswitch_e3
        :pswitch_d7
        :pswitch_c3
        :pswitch_b0
        :pswitch_9d
        :pswitch_8a
        :pswitch_77
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_3c
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
