.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final blacklist TRANSACTION_bindInput:I = 0x13

.field static final greylist-max-o TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final blacklist TRANSACTION_createImeSession:I = 0x11

.field static final greylist-max-o TRANSACTION_init:I = 0x1

.field static final greylist-max-o TRANSACTION_onAccessibilityButtonAvailabilityChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onAccessibilityButtonClicked:I = 0xe

.field static final greylist-max-o TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_onFingerprintCapturingGesturesChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onFingerprintGesture:I = 0xd

.field static final greylist-max-o TRANSACTION_onGesture:I = 0x4

.field static final greylist-max-o TRANSACTION_onInterrupt:I = 0x3

.field static final greylist-max-o TRANSACTION_onKeyEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_onMagnificationChanged:I = 0x7

.field static final blacklist TRANSACTION_onMotionEvent:I = 0x8

.field static final greylist-max-o TRANSACTION_onPerformGestureResult:I = 0xb

.field static final greylist-max-o TRANSACTION_onSoftKeyboardShowModeChanged:I = 0xa

.field static final blacklist TRANSACTION_onSystemActionsChanged:I = 0x10

.field static final blacklist TRANSACTION_onTouchStateChanged:I = 0x9

.field static final blacklist TRANSACTION_setImeSessionEnabled:I = 0x12

.field static final blacklist TRANSACTION_startInput:I = 0x15

.field static final blacklist TRANSACTION_unbindInput:I = 0x14


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 3

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_4
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_13

    .line 108
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-object v0

    .line 110
    :cond_13
    new-instance v0, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 119
    packed-switch p0, :pswitch_data_56

    .line 207
    const/4 p0, 0x0

    return-object p0

    .line 203
    :pswitch_5
    const-string/jumbo p0, "startInput"

    return-object p0

    .line 199
    :pswitch_9
    const-string/jumbo p0, "unbindInput"

    return-object p0

    .line 195
    :pswitch_d
    const-string p0, "bindInput"

    return-object p0

    .line 191
    :pswitch_10
    const-string/jumbo p0, "setImeSessionEnabled"

    return-object p0

    .line 187
    :pswitch_14
    const-string p0, "createImeSession"

    return-object p0

    .line 183
    :pswitch_17
    const-string/jumbo p0, "onSystemActionsChanged"

    return-object p0

    .line 179
    :pswitch_1b
    const-string/jumbo p0, "onAccessibilityButtonAvailabilityChanged"

    return-object p0

    .line 175
    :pswitch_1f
    const-string/jumbo p0, "onAccessibilityButtonClicked"

    return-object p0

    .line 171
    :pswitch_23
    const-string/jumbo p0, "onFingerprintGesture"

    return-object p0

    .line 167
    :pswitch_27
    const-string/jumbo p0, "onFingerprintCapturingGesturesChanged"

    return-object p0

    .line 163
    :pswitch_2b
    const-string/jumbo p0, "onPerformGestureResult"

    return-object p0

    .line 159
    :pswitch_2f
    const-string/jumbo p0, "onSoftKeyboardShowModeChanged"

    return-object p0

    .line 155
    :pswitch_33
    const-string/jumbo p0, "onTouchStateChanged"

    return-object p0

    .line 151
    :pswitch_37
    const-string/jumbo p0, "onMotionEvent"

    return-object p0

    .line 147
    :pswitch_3b
    const-string/jumbo p0, "onMagnificationChanged"

    return-object p0

    .line 143
    :pswitch_3f
    const-string/jumbo p0, "onKeyEvent"

    return-object p0

    .line 139
    :pswitch_43
    const-string p0, "clearAccessibilityCache"

    return-object p0

    .line 135
    :pswitch_46
    const-string/jumbo p0, "onGesture"

    return-object p0

    .line 131
    :pswitch_4a
    const-string/jumbo p0, "onInterrupt"

    return-object p0

    .line 127
    :pswitch_4e
    const-string/jumbo p0, "onAccessibilityEvent"

    return-object p0

    .line 123
    :pswitch_52
    const-string p0, "init"

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 710
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 214
    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 218
    nop

    .line 219
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 220
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 223
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return v1

    .line 226
    :cond_17
    packed-switch p1, :pswitch_data_14a

    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 394
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object p1

    .line 396
    sget-object p3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/EditorInfo;

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, p1, p3, p4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 401
    goto/16 :goto_148

    .line 388
    :pswitch_3b
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->unbindInput()V

    .line 389
    goto/16 :goto_148

    .line 383
    :pswitch_40
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->bindInput()V

    .line 384
    goto/16 :goto_148

    .line 374
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move-result-object p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, p1, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    .line 379
    goto/16 :goto_148

    .line 366
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    move-result-object p1

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 369
    goto/16 :goto_148

    .line 360
    :pswitch_69
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSystemActionsChanged()V

    .line 361
    goto/16 :goto_148

    .line 353
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 356
    goto/16 :goto_148

    .line 345
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonClicked(I)V

    .line 348
    goto/16 :goto_148

    .line 337
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintGesture(I)V

    .line 340
    goto/16 :goto_148

    .line 329
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintCapturingGesturesChanged(Z)V

    .line 332
    goto/16 :goto_148

    .line 319
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    .line 324
    goto/16 :goto_148

    .line 311
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    .line 314
    goto/16 :goto_148

    .line 301
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onTouchStateChanged(II)V

    .line 306
    goto/16 :goto_148

    .line 293
    :pswitch_ca
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 296
    goto :goto_148

    .line 281
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 283
    sget-object p3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Region;

    .line 285
    sget-object p4, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/accessibilityservice/MagnificationConfig;

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, p1, p3, p4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 288
    goto :goto_148

    .line 271
    :pswitch_f4
    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, p1, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 276
    goto :goto_148

    .line 265
    :pswitch_107
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    .line 266
    goto :goto_148

    .line 258
    :pswitch_10b
    sget-object p1, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 261
    goto :goto_148

    .line 252
    :pswitch_11a
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    .line 253
    goto :goto_148

    .line 243
    :pswitch_11e
    sget-object p1, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 248
    goto :goto_148

    .line 231
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, p1, p3, p4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 238
    nop

    .line 408
    :goto_148
    return v1

    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_131
        :pswitch_11e
        :pswitch_11a
        :pswitch_10b
        :pswitch_107
        :pswitch_f4
        :pswitch_d9
        :pswitch_ca
        :pswitch_ba
        :pswitch_ae
        :pswitch_9e
        :pswitch_92
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_69
        :pswitch_59
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
