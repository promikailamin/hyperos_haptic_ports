.class public abstract Lmiui/turbosched/ITurboSchedManager$Stub;
.super Landroid/os/Binder;
.source "ITurboSchedManager.java"

# interfaces
.implements Lmiui/turbosched/ITurboSchedManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/turbosched/ITurboSchedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/turbosched/ITurboSchedManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_breakThermlimit:I = 0xd

.field static final blacklist TRANSACTION_checkBoostPermission:I = 0x1

.field static final blacklist TRANSACTION_checkPackagePermission:I = 0x2

.field static final blacklist TRANSACTION_frameTurboMarkScene:I = 0xf

.field static final blacklist TRANSACTION_frameTurboRegisterSceneCallback:I = 0x11

.field static final blacklist TRANSACTION_frameTurboTrigger:I = 0x10

.field static final blacklist TRANSACTION_frameTurboUnregisterSceneCallback:I = 0x12

.field static final blacklist TRANSACTION_getCoreAppList:I = 0xe

.field static final blacklist TRANSACTION_isCoreApp:I = 0x3

.field static final blacklist TRANSACTION_notifyOnScroll:I = 0xc

.field static final blacklist TRANSACTION_onCoreAppFirstActivityStart:I = 0x13

.field static final blacklist TRANSACTION_onCoreAppLastActivityStop:I = 0x14

.field static final blacklist TRANSACTION_setTurboSchedAction:I = 0x4

.field static final blacklist TRANSACTION_setTurboSchedActionToLittleCore:I = 0x8

.field static final blacklist TRANSACTION_setTurboSchedActionWithBoostFrequency:I = 0x6

.field static final blacklist TRANSACTION_setTurboSchedActionWithId:I = 0xb

.field static final blacklist TRANSACTION_setTurboSchedActionWithPriority:I = 0x7

.field static final blacklist TRANSACTION_setTurboSchedActionWithoutBlock:I = 0x5

.field static final blacklist TRANSACTION_triggerBoostAction:I = 0x9

.field static final blacklist TRANSACTION_triggerBoostTask:I = 0xa


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "miui.turbosched.ITurboSchedManager"

    invoke-virtual {p0, p0, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_4
    const-string v0, "miui.turbosched.ITurboSchedManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/turbosched/ITurboSchedManager;

    if-eqz v1, :cond_14

    .line 133
    move-object v1, v0

    check-cast v1, Lmiui/turbosched/ITurboSchedManager;

    return-object v1

    .line 135
    :cond_14
    new-instance v1, Lmiui/turbosched/ITurboSchedManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/turbosched/ITurboSchedManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 139
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "miui.turbosched.ITurboSchedManager"

    .line 144
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    .line 145
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 144
    :cond_16
    move-object/from16 v12, p2

    .line 147
    :goto_18
    packed-switch v8, :pswitch_data_17c

    .line 155
    packed-switch v8, :pswitch_data_182

    .line 354
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 151
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v11

    .line 346
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {v7, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->onCoreAppLastActivityStop(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_17b

    .line 337
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v7, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->onCoreAppFirstActivityStart(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    goto/16 :goto_17b

    .line 328
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

    move-result-object v0

    .line 329
    .local v0, "_arg0":Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {v7, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->frameTurboUnregisterSceneCallback(Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_17b

    .line 319
    .end local v0    # "_arg0":Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

    move-result-object v0

    .line 320
    .restart local v0    # "_arg0":Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v7, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->frameTurboRegisterSceneCallback(Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_17b

    .line 305
    .end local v0    # "_arg0":Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 307
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 309
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 310
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v7, v0, v1, v2}, Lmiui/turbosched/ITurboSchedManager$Stub;->frameTurboTrigger(ZLjava/util/List;Ljava/util/List;)I

    move-result v3

    .line 312
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    goto/16 :goto_17b

    .line 293
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":I
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 296
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v7, v0, v1}, Lmiui/turbosched/ITurboSchedManager$Stub;->frameTurboMarkScene(Ljava/lang/String;Z)I

    move-result v2

    .line 298
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto/16 :goto_17b

    .line 285
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_9d
    invoke-virtual/range {p0 .. p0}, Lmiui/turbosched/ITurboSchedManager$Stub;->getCoreAppList()Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 288
    goto/16 :goto_17b

    .line 276
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 278
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 279
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v7, v0, v1, v2}, Lmiui/turbosched/ITurboSchedManager$Stub;->breakThermlimit(IJ)V

    .line 281
    goto/16 :goto_17b

    .line 268
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 269
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v7, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->notifyOnScroll(Z)V

    .line 271
    goto/16 :goto_17b

    .line 254
    .end local v0    # "_arg0":Z
    :pswitch_c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .line 256
    .local v13, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 258
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 260
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 261
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lmiui/turbosched/ITurboSchedManager$Stub;->setTurboSchedActionWithId([IJJI)V

    .line 263
    goto/16 :goto_17b

    .line 244
    .end local v13    # "_arg0":[I
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":I
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v7, v0, v1}, Lmiui/turbosched/ITurboSchedManager$Stub;->triggerBoostTask(II)V

    .line 249
    goto/16 :goto_17b

    .line 236
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v7, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->triggerBoostAction(I)V

    .line 239
    goto/16 :goto_17b

    .line 226
    .end local v0    # "_arg0":I
    :pswitch_101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 228
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 229
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {v7, v0, v1, v2}, Lmiui/turbosched/ITurboSchedManager$Stub;->setTurboSchedActionToLittleCore([IJ)V

    .line 231
    goto :goto_17b

    .line 216
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":J
    :pswitch_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 218
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 219
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {v7, v0, v1, v2}, Lmiui/turbosched/ITurboSchedManager$Stub;->setTurboSchedActionWithPriority([IJ)V

    .line 221
    goto :goto_17b

    .line 206
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":J
    :pswitch_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 208
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 209
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {v7, v0, v1, v2}, Lmiui/turbosched/ITurboSchedManager$Stub;->setTurboSchedActionWithBoostFrequency([IJ)V

    .line 211
    goto :goto_17b

    .line 196
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":J
    :pswitch_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 198
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 199
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {v7, v0, v1, v2}, Lmiui/turbosched/ITurboSchedManager$Stub;->setTurboSchedActionWithoutBlock([IJ)V

    .line 201
    goto :goto_17b

    .line 184
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":J
    :pswitch_13d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 187
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v7, v0, v1, v2}, Lmiui/turbosched/ITurboSchedManager$Stub;->setTurboSchedAction([IJ)Z

    move-result v3

    .line 189
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    goto :goto_17b

    .line 176
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_153
    invoke-virtual/range {p0 .. p0}, Lmiui/turbosched/ITurboSchedManager$Stub;->isCoreApp()Z

    move-result v0

    .line 177
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_17b

    .line 167
    .end local v0    # "_result":Z
    :pswitch_15e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {v7, v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->checkPackagePermission(Ljava/lang/String;)Z

    move-result v1

    .line 170
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 172
    goto :goto_17b

    .line 159
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_170
    invoke-virtual/range {p0 .. p0}, Lmiui/turbosched/ITurboSchedManager$Stub;->checkBoostPermission()I

    move-result v0

    .line 160
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    nop

    .line 357
    .end local v0    # "_result":I
    :goto_17b
    return v11

    :pswitch_data_17c
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_170
        :pswitch_15e
        :pswitch_153
        :pswitch_13d
        :pswitch_12e
        :pswitch_11f
        :pswitch_110
        :pswitch_101
        :pswitch_f5
        :pswitch_e5
        :pswitch_c5
        :pswitch_b9
        :pswitch_a9
        :pswitch_9d
        :pswitch_86
        :pswitch_6b
        :pswitch_58
        :pswitch_45
        :pswitch_36
        :pswitch_27
    .end packed-switch
.end method
