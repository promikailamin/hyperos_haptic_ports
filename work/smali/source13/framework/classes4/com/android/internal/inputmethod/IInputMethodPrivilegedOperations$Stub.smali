.class public abstract Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.super Landroid/os/Binder;
.source "IInputMethodPrivilegedOperations.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyImeVisibilityAsync:I = 0xe

.field static final blacklist TRANSACTION_createInputContentUriToken:I = 0x3

.field static final blacklist TRANSACTION_hideMySoftInput:I = 0x7

.field static final blacklist TRANSACTION_notifyUserActionAsync:I = 0xd

.field static final blacklist TRANSACTION_onStylusHandwritingReady:I = 0xf

.field static final blacklist TRANSACTION_reportFullscreenModeAsync:I = 0x4

.field static final blacklist TRANSACTION_reportStartInputAsync:I = 0x2

.field static final blacklist TRANSACTION_resetStylusHandwriting:I = 0x10

.field static final blacklist TRANSACTION_sendKeyboardCaps:I = 0x11

.field static final blacklist TRANSACTION_setImeWindowStatusAsync:I = 0x1

.field static final blacklist TRANSACTION_setInputMethod:I = 0x5

.field static final blacklist TRANSACTION_setInputMethodAndSubtype:I = 0x6

.field static final blacklist TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0xc

.field static final blacklist TRANSACTION_showMySoftInput:I = 0x8

.field static final blacklist TRANSACTION_switchToNextInputMethod:I = 0xb

.field static final blacklist TRANSACTION_switchToPreviousInputMethod:I = 0xa

.field static final blacklist TRANSACTION_updateSessionId:I = 0x12

.field static final blacklist TRANSACTION_updateStatusIconAsync:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-eqz v1, :cond_14

    .line 97
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    return-object v1

    .line 99
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 108
    packed-switch p0, :pswitch_data_4a

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 180
    :pswitch_5
    const-string/jumbo v0, "updateSessionId"

    return-object v0

    .line 176
    :pswitch_9
    const-string/jumbo v0, "sendKeyboardCaps"

    return-object v0

    .line 172
    :pswitch_d
    const-string/jumbo v0, "resetStylusHandwriting"

    return-object v0

    .line 168
    :pswitch_11
    const-string/jumbo v0, "onStylusHandwritingReady"

    return-object v0

    .line 164
    :pswitch_15
    const-string v0, "applyImeVisibilityAsync"

    return-object v0

    .line 160
    :pswitch_18
    const-string/jumbo v0, "notifyUserActionAsync"

    return-object v0

    .line 156
    :pswitch_1c
    const-string/jumbo v0, "shouldOfferSwitchingToNextInputMethod"

    return-object v0

    .line 152
    :pswitch_20
    const-string/jumbo v0, "switchToNextInputMethod"

    return-object v0

    .line 148
    :pswitch_24
    const-string/jumbo v0, "switchToPreviousInputMethod"

    return-object v0

    .line 144
    :pswitch_28
    const-string/jumbo v0, "updateStatusIconAsync"

    return-object v0

    .line 140
    :pswitch_2c
    const-string/jumbo v0, "showMySoftInput"

    return-object v0

    .line 136
    :pswitch_30
    const-string v0, "hideMySoftInput"

    return-object v0

    .line 132
    :pswitch_33
    const-string/jumbo v0, "setInputMethodAndSubtype"

    return-object v0

    .line 128
    :pswitch_37
    const-string/jumbo v0, "setInputMethod"

    return-object v0

    .line 124
    :pswitch_3b
    const-string/jumbo v0, "reportFullscreenModeAsync"

    return-object v0

    .line 120
    :pswitch_3f
    const-string v0, "createInputContentUriToken"

    return-object v0

    .line 116
    :pswitch_42
    const-string/jumbo v0, "reportStartInputAsync"

    return-object v0

    .line 112
    :pswitch_46
    const-string/jumbo v0, "setImeWindowStatusAsync"

    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 646
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 191
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 195
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    .line 196
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 197
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    :cond_d
    packed-switch p1, :pswitch_data_138

    .line 207
    packed-switch p1, :pswitch_data_13e

    .line 373
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 203
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    return v1

    .line 366
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->updateSessionId(I)V

    .line 369
    goto/16 :goto_137

    .line 360
    .end local v2    # "_arg0":I
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->sendKeyboardCaps()V

    .line 361
    goto/16 :goto_137

    .line 353
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->resetStylusHandwriting(I)V

    .line 356
    goto/16 :goto_137

    .line 343
    .end local v2    # "_arg0":I
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->onStylusHandwritingReady(II)V

    .line 348
    goto/16 :goto_137

    .line 333
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 335
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 336
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->applyImeVisibilityAsync(Landroid/os/IBinder;Z)V

    .line 338
    goto/16 :goto_137

    .line 327
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->notifyUserActionAsync()V

    .line 328
    goto/16 :goto_137

    .line 320
    :pswitch_5e
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 321
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 323
    goto/16 :goto_137

    .line 310
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 312
    .local v2, "_arg0":Z
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 313
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    .line 315
    goto/16 :goto_137

    .line 302
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_82
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 303
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 305
    goto/16 :goto_137

    .line 292
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 295
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 297
    goto/16 :goto_137

    .line 282
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg0":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 285
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->showMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    .line 287
    goto/16 :goto_137

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 275
    .restart local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->hideMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    .line 277
    goto :goto_137

    .line 260
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 264
    .local v3, "_arg1":Landroid/view/inputmethod/InputMethodSubtype;
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 265
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    .line 267
    goto :goto_137

    .line 250
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 253
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 255
    goto :goto_137

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 243
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportFullscreenModeAsync(Z)V

    .line 245
    goto :goto_137

    .line 230
    .end local v2    # "_arg0":Z
    :pswitch_102
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 232
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 235
    .restart local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 237
    goto :goto_137

    .line 222
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 223
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportStartInputAsync(Landroid/os/IBinder;)V

    .line 225
    goto :goto_137

    .line 212
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setImeWindowStatusAsync(II)V

    .line 217
    nop

    .line 376
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_137
    return v1

    :pswitch_data_138
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_128
        :pswitch_11d
        :pswitch_102
        :pswitch_f7
        :pswitch_e4
        :pswitch_c9
        :pswitch_b6
        :pswitch_a2
        :pswitch_92
        :pswitch_82
        :pswitch_6e
        :pswitch_5e
        :pswitch_59
        :pswitch_49
        :pswitch_39
        :pswitch_2d
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
