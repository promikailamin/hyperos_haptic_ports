.class public abstract Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;
.super Landroid/os/Binder;
.source "IComputerControlSession.java"

# interfaces
.implements Landroid/companion/virtual/computercontrol/IComputerControlSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/computercontrol/IComputerControlSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0xd

.field static final blacklist TRANSACTION_createInteractiveMirrorDisplay:I = 0x9

.field static final blacklist TRANSACTION_getVirtualDisplayId:I = 0x6

.field static final blacklist TRANSACTION_handOverApplications:I = 0x2

.field static final blacklist TRANSACTION_insertText:I = 0xa

.field static final blacklist TRANSACTION_launchApplication:I = 0x1

.field static final blacklist TRANSACTION_longPress:I = 0x5

.field static final blacklist TRANSACTION_performAction:I = 0xb

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x7

.field static final blacklist TRANSACTION_sendTouchEvent:I = 0x8

.field static final blacklist TRANSACTION_setStabilityListener:I = 0xc

.field static final blacklist TRANSACTION_swipe:I = 0x4

.field static final blacklist TRANSACTION_tap:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "android.companion.virtual.computercontrol.IComputerControlSession"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IComputerControlSession;
    .registers 3

    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_4
    const-string v0, "android.companion.virtual.computercontrol.IComputerControlSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtual/computercontrol/IComputerControlSession;

    if-eqz v1, :cond_13

    .line 107
    check-cast v0, Landroid/companion/virtual/computercontrol/IComputerControlSession;

    return-object v0

    .line 109
    :cond_13
    new-instance v0, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 118
    packed-switch p0, :pswitch_data_34

    .line 174
    const/4 p0, 0x0

    return-object p0

    .line 170
    :pswitch_5
    const-string p0, "close"

    return-object p0

    .line 166
    :pswitch_8
    const-string/jumbo p0, "setStabilityListener"

    return-object p0

    .line 162
    :pswitch_c
    const-string/jumbo p0, "performAction"

    return-object p0

    .line 158
    :pswitch_10
    const-string p0, "insertText"

    return-object p0

    .line 154
    :pswitch_13
    const-string p0, "createInteractiveMirrorDisplay"

    return-object p0

    .line 150
    :pswitch_16
    const-string/jumbo p0, "sendTouchEvent"

    return-object p0

    .line 146
    :pswitch_1a
    const-string/jumbo p0, "sendKeyEvent"

    return-object p0

    .line 142
    :pswitch_1e
    const-string p0, "getVirtualDisplayId"

    return-object p0

    .line 138
    :pswitch_21
    const-string/jumbo p0, "longPress"

    return-object p0

    .line 134
    :pswitch_25
    const-string/jumbo p0, "swipe"

    return-object p0

    .line 130
    :pswitch_29
    const-string/jumbo p0, "tap"

    return-object p0

    .line 126
    :pswitch_2d
    const-string p0, "handOverApplications"

    return-object p0

    .line 122
    :pswitch_30
    const-string/jumbo p0, "launchApplication"

    return-object p0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 113
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 590
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 181
    invoke-static {p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 185
    nop

    .line 186
    const-string v0, "android.companion.virtual.computercontrol.IComputerControlSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return v1

    .line 193
    :cond_17
    packed-switch p1, :pswitch_data_102

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 319
    :pswitch_1f
    invoke-virtual {p0}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->close()V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_101

    .line 311
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener;

    move-result-object p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->setStabilityListener(Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_101

    .line 302
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->performAction(I)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_101

    .line 289
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->insertText(Ljava/lang/String;ZZ)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_101

    .line 275
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 279
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->createInteractiveMirrorDisplay(IILandroid/view/Surface;)Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    move-result-object p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 284
    goto/16 :goto_101

    .line 266
    :pswitch_7f
    sget-object p1, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchEvent;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_101

    .line 257
    :pswitch_91
    sget-object p1, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualKeyEvent;

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_101

    .line 249
    :pswitch_a3
    invoke-virtual {p0}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->getVirtualDisplayId()I

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    goto :goto_101

    .line 239
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->longPress(II)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_101

    .line 224
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->swipe(IIII)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_101

    .line 213
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->tap(II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_101

    .line 206
    :pswitch_ec
    invoke-virtual {p0}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->handOverApplications()V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto :goto_101

    .line 198
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->launchApplication(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    nop

    .line 328
    :goto_101
    return v1

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_f3
        :pswitch_ec
        :pswitch_da
        :pswitch_c0
        :pswitch_ae
        :pswitch_a3
        :pswitch_91
        :pswitch_7f
        :pswitch_60
        :pswitch_49
        :pswitch_3a
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
