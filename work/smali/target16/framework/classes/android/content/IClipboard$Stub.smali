.class public abstract Landroid/content/IClipboard$Stub;
.super Landroid/os/Binder;
.source "IClipboard.java"

# interfaces
.implements Landroid/content/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IClipboard$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.IClipboard"

.field static final greylist-max-o TRANSACTION_addPrimaryClipChangedListener:I = 0x7

.field static final blacklist TRANSACTION_areClipboardAccessNotificationsEnabledForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_clearPrimaryClip:I = 0x3

.field static final greylist-max-o TRANSACTION_getPrimaryClip:I = 0x4

.field static final greylist-max-o TRANSACTION_getPrimaryClipDescription:I = 0x5

.field static final blacklist TRANSACTION_getPrimaryClipSource:I = 0xa

.field static final greylist-max-o TRANSACTION_hasClipboardText:I = 0x9

.field static final greylist-max-o TRANSACTION_hasPrimaryClip:I = 0x6

.field static final greylist-max-o TRANSACTION_removePrimaryClipChangedListener:I = 0x8

.field static final blacklist TRANSACTION_setClipboardAccessNotificationsEnabledForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setPrimaryClip:I = 0x1

.field static final blacklist TRANSACTION_setPrimaryClipAsPackage:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    nop

    .line 85
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/IClipboard$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.content.IClipboard"

    invoke-virtual {p0, p0, v0}, Landroid/content/IClipboard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    if-eqz p1, :cond_d

    .line 79
    iput-object p1, p0, Landroid/content/IClipboard$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 80
    return-void

    .line 77
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;
    .registers 3

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_4
    const-string v0, "android.content.IClipboard"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/IClipboard;

    if-eqz v1, :cond_13

    .line 98
    check-cast v0, Landroid/content/IClipboard;

    return-object v0

    .line 100
    :cond_13
    new-instance v0, Landroid/content/IClipboard$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/IClipboard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 109
    packed-switch p0, :pswitch_data_2e

    .line 161
    const/4 p0, 0x0

    return-object p0

    .line 157
    :pswitch_5
    const-string/jumbo p0, "setClipboardAccessNotificationsEnabledForUser"

    return-object p0

    .line 153
    :pswitch_9
    const-string p0, "areClipboardAccessNotificationsEnabledForUser"

    return-object p0

    .line 149
    :pswitch_c
    const-string p0, "getPrimaryClipSource"

    return-object p0

    .line 145
    :pswitch_f
    const-string p0, "hasClipboardText"

    return-object p0

    .line 141
    :pswitch_12
    const-string/jumbo p0, "removePrimaryClipChangedListener"

    return-object p0

    .line 137
    :pswitch_16
    const-string p0, "addPrimaryClipChangedListener"

    return-object p0

    .line 133
    :pswitch_19
    const-string p0, "hasPrimaryClip"

    return-object p0

    .line 129
    :pswitch_1c
    const-string p0, "getPrimaryClipDescription"

    return-object p0

    .line 125
    :pswitch_1f
    const-string p0, "getPrimaryClip"

    return-object p0

    .line 121
    :pswitch_22
    const-string p0, "clearPrimaryClip"

    return-object p0

    .line 117
    :pswitch_25
    const-string/jumbo p0, "setPrimaryClipAsPackage"

    return-object p0

    .line 113
    :pswitch_29
    const-string/jumbo p0, "setPrimaryClip"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 651
    const/16 v0, 0xb

    return v0
.end method

.method protected blacklist getPrimaryClipSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Landroid/content/IClipboard$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_CLIP_SOURCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 645
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 168
    invoke-static {p1}, Landroid/content/IClipboard$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    nop

    .line 173
    const-string v3, "android.content.IClipboard"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 174
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 177
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v7

    .line 180
    :cond_17
    packed-switch p1, :pswitch_data_18e

    .line 370
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 360
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1, v3}, Landroid/content/IClipboard$Stub;->setClipboardAccessNotificationsEnabledForUser(ZI)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_18c

    .line 350
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1}, Landroid/content/IClipboard$Stub;->areClipboardAccessNotificationsEnabledForUser(I)Z

    move-result v0

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 355
    goto/16 :goto_18c

    .line 334
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/content/IClipboard$Stub;->getPrimaryClipSource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    goto/16 :goto_18c

    .line 318
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/content/IClipboard$Stub;->hasClipboardText(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto/16 :goto_18c

    .line 301
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IClipboard$Stub;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto/16 :goto_18c

    .line 284
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IClipboard$Stub;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_18c

    .line 268
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->hasPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto/16 :goto_18c

    .line 252
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->getPrimaryClipDescription(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipDescription;

    move-result-object v0

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 263
    goto/16 :goto_18c

    .line 236
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->getPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipData;

    move-result-object v0

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    goto :goto_18c

    .line 221
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->clearPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_18c

    .line 202
    :pswitch_141
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/IClipboard$Stub;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_18c

    .line 185
    :pswitch_168
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ClipData;

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IClipboard$Stub;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;II)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    nop

    .line 373
    :goto_18c
    return v7

    nop

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_168
        :pswitch_141
        :pswitch_127
        :pswitch_109
        :pswitch_ea
        :pswitch_cb
        :pswitch_a7
        :pswitch_83
        :pswitch_64
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist setPrimaryClipAsPackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Landroid/content/IClipboard$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_CLIP_SOURCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 633
    return-void
.end method
