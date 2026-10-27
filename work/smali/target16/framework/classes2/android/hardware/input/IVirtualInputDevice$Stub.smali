.class public abstract Landroid/hardware/input/IVirtualInputDevice$Stub;
.super Landroid/os/Binder;
.source "IVirtualInputDevice.java"

# interfaces
.implements Landroid/hardware/input/IVirtualInputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IVirtualInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IVirtualInputDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_getAssociatedDisplayId:I = 0x3

.field static final blacklist TRANSACTION_getCursorPositionInLogicalDisplay:I = 0xe

.field static final blacklist TRANSACTION_getCursorPositionInPhysicalDisplay:I = 0xd

.field static final blacklist TRANSACTION_getInputDeviceId:I = 0x2

.field static final blacklist TRANSACTION_sendDpadKeyEvent:I = 0x4

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x5

.field static final blacklist TRANSACTION_sendMouseButtonEvent:I = 0x6

.field static final blacklist TRANSACTION_sendMouseRelativeEvent:I = 0x7

.field static final blacklist TRANSACTION_sendMouseScrollEvent:I = 0x8

.field static final blacklist TRANSACTION_sendRotaryEncoderScrollEvent:I = 0xc

.field static final blacklist TRANSACTION_sendStylusButtonEvent:I = 0xb

.field static final blacklist TRANSACTION_sendStylusMotionEvent:I = 0xa

.field static final blacklist TRANSACTION_sendTouchEvent:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    const-string v0, "android.hardware.input.IVirtualInputDevice"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IVirtualInputDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 122
    if-nez p0, :cond_4

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_4
    const-string v0, "android.hardware.input.IVirtualInputDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/input/IVirtualInputDevice;

    if-eqz v1, :cond_13

    .line 127
    check-cast v0, Landroid/hardware/input/IVirtualInputDevice;

    return-object v0

    .line 129
    :cond_13
    new-instance v0, Landroid/hardware/input/IVirtualInputDevice$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/input/IVirtualInputDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 138
    packed-switch p0, :pswitch_data_30

    .line 198
    const/4 p0, 0x0

    return-object p0

    .line 194
    :pswitch_5
    const-string p0, "getCursorPositionInLogicalDisplay"

    return-object p0

    .line 190
    :pswitch_8
    const-string p0, "getCursorPositionInPhysicalDisplay"

    return-object p0

    .line 186
    :pswitch_b
    const-string p0, "sendRotaryEncoderScrollEvent"

    return-object p0

    .line 182
    :pswitch_e
    const-string p0, "sendStylusButtonEvent"

    return-object p0

    .line 178
    :pswitch_11
    const-string p0, "sendStylusMotionEvent"

    return-object p0

    .line 174
    :pswitch_14
    const-string p0, "sendTouchEvent"

    return-object p0

    .line 170
    :pswitch_17
    const-string p0, "sendMouseScrollEvent"

    return-object p0

    .line 166
    :pswitch_1a
    const-string p0, "sendMouseRelativeEvent"

    return-object p0

    .line 162
    :pswitch_1d
    const-string p0, "sendMouseButtonEvent"

    return-object p0

    .line 158
    :pswitch_20
    const-string p0, "sendKeyEvent"

    return-object p0

    .line 154
    :pswitch_23
    const-string p0, "sendDpadKeyEvent"

    return-object p0

    .line 150
    :pswitch_26
    const-string p0, "getAssociatedDisplayId"

    return-object p0

    .line 146
    :pswitch_29
    const-string p0, "getInputDeviceId"

    return-object p0

    .line 142
    :pswitch_2c
    const-string p0, "close"

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
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

    .line 133
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 653
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 205
    invoke-static {p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    nop

    .line 210
    const-string v0, "android.hardware.input.IVirtualInputDevice"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 211
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v1

    .line 217
    :cond_17
    packed-switch p1, :pswitch_data_120

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 338
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/input/IVirtualInputDevice$Stub;->getCursorPositionInLogicalDisplay()Landroid/graphics/PointF;

    move-result-object p1

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 341
    goto/16 :goto_11f

    .line 331
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/input/IVirtualInputDevice$Stub;->getCursorPositionInPhysicalDisplay()Landroid/graphics/PointF;

    move-result-object p1

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 334
    goto/16 :goto_11f

    .line 322
    :pswitch_37
    sget-object p1, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendRotaryEncoderScrollEvent(Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z

    move-result p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 327
    goto/16 :goto_11f

    .line 312
    :pswitch_4e
    sget-object p1, Landroid/hardware/input/VirtualStylusButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualStylusButtonEvent;

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendStylusButtonEvent(Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto/16 :goto_11f

    .line 302
    :pswitch_65
    sget-object p1, Landroid/hardware/input/VirtualStylusMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualStylusMotionEvent;

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendStylusMotionEvent(Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    goto/16 :goto_11f

    .line 292
    :pswitch_7c
    sget-object p1, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchEvent;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 297
    goto/16 :goto_11f

    .line 282
    :pswitch_93
    sget-object p1, Landroid/hardware/input/VirtualMouseScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendMouseScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result p1

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 287
    goto/16 :goto_11f

    .line 272
    :pswitch_aa
    sget-object p1, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendMouseRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result p1

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 277
    goto :goto_11f

    .line 262
    :pswitch_c0
    sget-object p1, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendMouseButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    goto :goto_11f

    .line 252
    :pswitch_d6
    sget-object p1, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualKeyEvent;

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p1

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 257
    goto :goto_11f

    .line 242
    :pswitch_ec
    sget-object p1, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualKeyEvent;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->sendDpadKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    goto :goto_11f

    .line 234
    :pswitch_102
    invoke-virtual {p0}, Landroid/hardware/input/IVirtualInputDevice$Stub;->getAssociatedDisplayId()I

    move-result p1

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    goto :goto_11f

    .line 227
    :pswitch_10d
    invoke-virtual {p0}, Landroid/hardware/input/IVirtualInputDevice$Stub;->getInputDeviceId()I

    move-result p1

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    goto :goto_11f

    .line 221
    :pswitch_118
    invoke-virtual {p0}, Landroid/hardware/input/IVirtualInputDevice$Stub;->close()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    nop

    .line 348
    :goto_11f
    return v1

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_118
        :pswitch_10d
        :pswitch_102
        :pswitch_ec
        :pswitch_d6
        :pswitch_c0
        :pswitch_aa
        :pswitch_93
        :pswitch_7c
        :pswitch_65
        :pswitch_4e
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
