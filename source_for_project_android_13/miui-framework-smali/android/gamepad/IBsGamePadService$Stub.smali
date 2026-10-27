.class public abstract Landroid/gamepad/IBsGamePadService$Stub;
.super Landroid/os/Binder;
.source "IBsGamePadService.java"

# interfaces
.implements Landroid/gamepad/IBsGamePadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/IBsGamePadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamepad/IBsGamePadService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addExtraTouchDevice:I = 0x9

.field static final blacklist TRANSACTION_addExtraTouchId:I = 0xb

.field static final blacklist TRANSACTION_injectMotionEvent:I = 0xd

.field static final blacklist TRANSACTION_loadForceTouchMap:I = 0x5

.field static final blacklist TRANSACTION_loadKey:I = 0x1

.field static final blacklist TRANSACTION_loadKeyMap:I = 0x2

.field static final blacklist TRANSACTION_loadLiftKeyMap:I = 0x7

.field static final blacklist TRANSACTION_registerForceTouchEventListener:I = 0xe

.field static final blacklist TRANSACTION_registerGameKeyEventListener:I = 0x10

.field static final blacklist TRANSACTION_removeExtraTouchDevice:I = 0xa

.field static final blacklist TRANSACTION_removeExtraTouchId:I = 0xc

.field static final blacklist TRANSACTION_setAppSwitch:I = 0x12

.field static final blacklist TRANSACTION_setDeviceRotation:I = 0x3

.field static final blacklist TRANSACTION_unloadForceTouchMap:I = 0x6

.field static final blacklist TRANSACTION_unloadKeyMap:I = 0x4

.field static final blacklist TRANSACTION_unloadLiftKeyMap:I = 0x8

.field static final blacklist TRANSACTION_unregisterForceTouchEventListener:I = 0xf

.field static final blacklist TRANSACTION_unregisterGameKeyEventListener:I = 0x11


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.gamepad.IBsGamePadService"

    invoke-virtual {p0, p0, v0}, Landroid/gamepad/IBsGamePadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/gamepad/IBsGamePadService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    const-string v0, "android.gamepad.IBsGamePadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/gamepad/IBsGamePadService;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/gamepad/IBsGamePadService;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Landroid/gamepad/IBsGamePadService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gamepad/IBsGamePadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const-string v0, "android.gamepad.IBsGamePadService"

    .line 99
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_d
    packed-switch p1, :pswitch_data_140

    .line 110
    packed-switch p1, :pswitch_data_146

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 106
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 266
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 267
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->setAppSwitch(Z)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto/16 :goto_13e

    .line 259
    .end local v2    # "_arg0":Z
    :pswitch_2b
    invoke-virtual {p0}, Landroid/gamepad/IBsGamePadService$Stub;->unregisterGameKeyEventListener()V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_13e

    .line 251
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/gamepad/IGameKeyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gamepad/IGameKeyEventListener;

    move-result-object v2

    .line 252
    .local v2, "_arg0":Landroid/gamepad/IGameKeyEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->registerGameKeyEventListener(Landroid/gamepad/IGameKeyEventListener;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_13e

    .line 244
    .end local v2    # "_arg0":Landroid/gamepad/IGameKeyEventListener;
    :pswitch_46
    invoke-virtual {p0}, Landroid/gamepad/IBsGamePadService$Stub;->unregisterForceTouchEventListener()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_13e

    .line 236
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/gamepad/IForceTouchEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gamepad/IForceTouchEventListener;

    move-result-object v2

    .line 237
    .local v2, "_arg0":Landroid/gamepad/IForceTouchEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->registerForceTouchEventListener(Landroid/gamepad/IForceTouchEventListener;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_13e

    .line 227
    .end local v2    # "_arg0":Landroid/gamepad/IForceTouchEventListener;
    :pswitch_61
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 228
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->injectMotionEvent(Landroid/view/MotionEvent;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto/16 :goto_13e

    .line 220
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_74
    invoke-virtual {p0}, Landroid/gamepad/IBsGamePadService$Stub;->removeExtraTouchId()V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto/16 :goto_13e

    .line 210
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/gamepad/IExtraTouchIdListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gamepad/IExtraTouchIdListener;

    move-result-object v3

    .line 213
    .local v3, "_arg1":Landroid/gamepad/IExtraTouchIdListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3}, Landroid/gamepad/IBsGamePadService$Stub;->addExtraTouchId(ILandroid/gamepad/IExtraTouchIdListener;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto/16 :goto_13e

    .line 201
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/gamepad/IExtraTouchIdListener;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->removeExtraTouchDevice(I)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto/16 :goto_13e

    .line 190
    .end local v2    # "_arg0":I
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3}, Landroid/gamepad/IBsGamePadService$Stub;->addExtraTouchDevice(II)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto/16 :goto_13e

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b5
    invoke-virtual {p0}, Landroid/gamepad/IBsGamePadService$Stub;->unloadLiftKeyMap()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto/16 :goto_13e

    .line 174
    :pswitch_bd
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 175
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 176
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v3}, Landroid/gamepad/IBsGamePadService$Stub;->loadLiftKeyMap(Ljava/util/Map;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_13e

    .line 167
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    :pswitch_d3
    invoke-virtual {p0}, Landroid/gamepad/IBsGamePadService$Stub;->unloadForceTouchMap()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_13e

    .line 158
    :pswitch_da
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 159
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 160
    .restart local v3    # "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v3}, Landroid/gamepad/IBsGamePadService$Stub;->loadForceTouchMap(Ljava/util/Map;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_13e

    .line 149
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 150
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->unloadKeyMap(Z)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_13e

    .line 138
    .end local v2    # "_arg0":Z
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/gamepad/IBsGamePadService$Stub;->setDeviceRotation(II)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_13e

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 125
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 127
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 129
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 130
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v3, v4, v5}, Landroid/gamepad/IBsGamePadService$Stub;->loadKeyMap(Ljava/util/Map;ZZ)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_13e

    .line 115
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Z
    :pswitch_12e
    sget-object v2, Landroid/gamepad/BsGameKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 116
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/gamepad/BsGameKey;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Landroid/gamepad/IBsGamePadService$Stub;->loadKey(Ljava/util/List;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    nop

    .line 277
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/gamepad/BsGameKey;>;"
    :goto_13e
    return v1

    nop

    :pswitch_data_140
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_12e
        :pswitch_110
        :pswitch_fe
        :pswitch_f0
        :pswitch_da
        :pswitch_d3
        :pswitch_bd
        :pswitch_b5
        :pswitch_a2
        :pswitch_93
        :pswitch_7c
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_46
        :pswitch_33
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
