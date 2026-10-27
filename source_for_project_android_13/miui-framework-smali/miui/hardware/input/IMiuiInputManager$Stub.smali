.class public abstract Lmiui/hardware/input/IMiuiInputManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiInputManager.java"

# interfaces
.implements Lmiui/hardware/input/IMiuiInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/IMiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/input/IMiuiInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAppScrollerOptimizationConfig:I = 0xc

.field static final blacklist TRANSACTION_getDefaultKeyboardShortcutInfos:I = 0x3

.field static final blacklist TRANSACTION_getEdgeSuppressionSize:I = 0x5

.field static final blacklist TRANSACTION_getKeyboardBackLightBrightness:I = 0xf

.field static final blacklist TRANSACTION_getKeyboardShortcut:I = 0x2

.field static final blacklist TRANSACTION_getKeyboardType:I = 0x10

.field static final blacklist TRANSACTION_getMiKeyboardStatus:I = 0x4

.field static final blacklist TRANSACTION_hideCursor:I = 0x7

.field static final blacklist TRANSACTION_putStringForUser:I = 0x9

.field static final blacklist TRANSACTION_registerAppScrollerOptimizationConfigListener:I = 0xd

.field static final blacklist TRANSACTION_registerMiuiMotionEventListener:I = 0x14

.field static final blacklist TRANSACTION_registerShortcutChangedListener:I = 0xa

.field static final blacklist TRANSACTION_requestRedirect:I = 0x8

.field static final blacklist TRANSACTION_setCursorPosition:I = 0x6

.field static final blacklist TRANSACTION_setDeviceShareListener:I = 0x12

.field static final blacklist TRANSACTION_setHasEditTextOnScreen:I = 0x11

.field static final blacklist TRANSACTION_setKeyboardBackLightBrightness:I = 0xe

.field static final blacklist TRANSACTION_setTouchpadButtonState:I = 0x13

.field static final blacklist TRANSACTION_unregisterMiuiMotionEventListener:I = 0x15

.field static final blacklist TRANSACTION_unregisterShortcutChangedListener:I = 0xb

.field static final blacklist TRANSACTION_updateKeyboardShortcut:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 126
    const-string v0, "miui.hardware.input.IMiuiInputManager"

    invoke-virtual {p0, p0, v0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/hardware/input/IMiuiInputManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 134
    if-nez p0, :cond_4

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_4
    const-string v0, "miui.hardware.input.IMiuiInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 138
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v1, :cond_14

    .line 139
    move-object v1, v0

    check-cast v1, Lmiui/hardware/input/IMiuiInputManager;

    return-object v1

    .line 141
    :cond_14
    new-instance v1, Lmiui/hardware/input/IMiuiInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/hardware/input/IMiuiInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 145
    return-object p0
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

    .line 149
    const-string v0, "miui.hardware.input.IMiuiInputManager"

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_d
    packed-switch p1, :pswitch_data_172

    .line 161
    packed-switch p1, :pswitch_data_178

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 157
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 347
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->unregisterMiuiMotionEventListener()V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_170

    .line 339
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/hardware/input/IMiuiMotionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/input/IMiuiMotionEventListener;

    move-result-object v2

    .line 340
    .local v2, "_arg0":Lmiui/hardware/input/IMiuiMotionEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->registerMiuiMotionEventListener(Lmiui/hardware/input/IMiuiMotionEventListener;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto/16 :goto_170

    .line 328
    .end local v2    # "_arg0":Lmiui/hardware/input/IMiuiMotionEventListener;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 331
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3}, Lmiui/hardware/input/IMiuiInputManager$Stub;->setTouchpadButtonState(IZ)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto/16 :goto_170

    .line 315
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_4a
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 317
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/hardware/input/IDeviceShareStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/input/IDeviceShareStateChangedListener;

    move-result-object v4

    .line 320
    .local v4, "_arg2":Lmiui/hardware/input/IDeviceShareStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3, v4}, Lmiui/hardware/input/IMiuiInputManager$Stub;->setDeviceShareListener(Landroid/os/ParcelFileDescriptor;ILmiui/hardware/input/IDeviceShareStateChangedListener;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_170

    .line 307
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lmiui/hardware/input/IDeviceShareStateChangedListener;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 308
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->setHasEditTextOnScreen(Z)V

    .line 310
    goto/16 :goto_170

    .line 299
    .end local v2    # "_arg0":Z
    :pswitch_75
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->getKeyboardType()I

    move-result v2

    .line 300
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    goto/16 :goto_170

    .line 292
    .end local v2    # "_result":I
    :pswitch_81
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->getKeyboardBackLightBrightness()I

    move-result v2

    .line 293
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    goto/16 :goto_170

    .line 284
    .end local v2    # "_result":I
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->setKeyboardBackLightBrightness(I)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_170

    .line 273
    .end local v2    # "_arg0":I
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener;

    move-result-object v3

    .line 276
    .local v3, "_arg1":Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3}, Lmiui/hardware/input/IMiuiInputManager$Stub;->registerAppScrollerOptimizationConfigListener(Ljava/lang/String;Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener;)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_170

    .line 263
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->getAppScrollerOptimizationConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 268
    goto/16 :goto_170

    .line 256
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_c6
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->unregisterShortcutChangedListener()V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_170

    .line 248
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/hardware/input/IShortcutSettingsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/input/IShortcutSettingsChangedListener;

    move-result-object v2

    .line 249
    .local v2, "_arg0":Lmiui/hardware/input/IShortcutSettingsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->registerShortcutChangedListener(Lmiui/hardware/input/IShortcutSettingsChangedListener;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_170

    .line 236
    .end local v2    # "_arg0":Lmiui/hardware/input/IShortcutSettingsChangedListener;
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Lmiui/hardware/input/IMiuiInputManager$Stub;->putStringForUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 241
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    goto/16 :goto_170

    .line 227
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->requestRedirect(I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_170

    .line 219
    .end local v2    # "_arg0":I
    :pswitch_106
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->hideCursor()Z

    move-result v2

    .line 220
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    goto :goto_170

    .line 208
    .end local v2    # "_result":Z
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 210
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 211
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3}, Lmiui/hardware/input/IMiuiInputManager$Stub;->setCursorPosition(FF)Z

    move-result v4

    .line 213
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto :goto_170

    .line 198
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    .end local v4    # "_result":Z
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 199
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->getEdgeSuppressionSize(Z)[I

    move-result-object v3

    .line 201
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 203
    goto :goto_170

    .line 190
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":[I
    :pswitch_139
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->getMiKeyboardStatus()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    goto :goto_170

    .line 183
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_144
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->getDefaultKeyboardShortcutInfos()Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 186
    goto :goto_170

    .line 176
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    :pswitch_14f
    invoke-virtual {p0}, Lmiui/hardware/input/IMiuiInputManager$Stub;->getKeyboardShortcut()Ljava/util/List;

    move-result-object v2

    .line 177
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    goto :goto_170

    .line 166
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    :pswitch_15a
    sget-object v2, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyboardShortcutInfo;

    .line 168
    .local v2, "_arg0":Landroid/view/KeyboardShortcutInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Lmiui/hardware/input/IMiuiInputManager$Stub;->updateKeyboardShortcut(Landroid/view/KeyboardShortcutInfo;I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    nop

    .line 356
    .end local v2    # "_arg0":Landroid/view/KeyboardShortcutInfo;
    .end local v3    # "_arg1":I
    :goto_170
    return v1

    nop

    :pswitch_data_172
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_14f
        :pswitch_144
        :pswitch_139
        :pswitch_127
        :pswitch_111
        :pswitch_106
        :pswitch_f8
        :pswitch_e1
        :pswitch_ce
        :pswitch_c6
        :pswitch_b3
        :pswitch_9c
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_4a
        :pswitch_37
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
