.class public abstract Landroid/app/blob/IBlobStoreSession$Stub;
.super Landroid/os/Binder;
.source "IBlobStoreSession.java"

# interfaces
.implements Landroid/app/blob/IBlobStoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/IBlobStoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobStoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abandon:I = 0xb

.field static final blacklist TRANSACTION_allowPackageAccess:I = 0x3

.field static final blacklist TRANSACTION_allowPublicAccess:I = 0x5

.field static final blacklist TRANSACTION_allowSameSignatureAccess:I = 0x4

.field static final blacklist TRANSACTION_close:I = 0xa

.field static final blacklist TRANSACTION_commit:I = 0xc

.field static final blacklist TRANSACTION_getSize:I = 0x9

.field static final blacklist TRANSACTION_isPackageAccessAllowed:I = 0x6

.field static final blacklist TRANSACTION_isPublicAccessAllowed:I = 0x8

.field static final blacklist TRANSACTION_isSameSignatureAccessAllowed:I = 0x7

.field static final blacklist TRANSACTION_openRead:I = 0x2

.field static final blacklist TRANSACTION_openWrite:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/blob/IBlobStoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobStoreSession;
    .registers 3

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_4
    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/blob/IBlobStoreSession;

    if-eqz v1, :cond_13

    .line 83
    check-cast v0, Landroid/app/blob/IBlobStoreSession;

    return-object v0

    .line 85
    :cond_13
    new-instance v0, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 94
    packed-switch p0, :pswitch_data_2c

    .line 146
    const/4 p0, 0x0

    return-object p0

    .line 142
    :pswitch_5
    const-string p0, "commit"

    return-object p0

    .line 138
    :pswitch_8
    const-string p0, "abandon"

    return-object p0

    .line 134
    :pswitch_b
    const-string p0, "close"

    return-object p0

    .line 130
    :pswitch_e
    const-string p0, "getSize"

    return-object p0

    .line 126
    :pswitch_11
    const-string p0, "isPublicAccessAllowed"

    return-object p0

    .line 122
    :pswitch_14
    const-string/jumbo p0, "isSameSignatureAccessAllowed"

    return-object p0

    .line 118
    :pswitch_18
    const-string p0, "isPackageAccessAllowed"

    return-object p0

    .line 114
    :pswitch_1b
    const-string p0, "allowPublicAccess"

    return-object p0

    .line 110
    :pswitch_1e
    const-string p0, "allowSameSignatureAccess"

    return-object p0

    .line 106
    :pswitch_21
    const-string p0, "allowPackageAccess"

    return-object p0

    .line 102
    :pswitch_24
    const-string/jumbo p0, "openRead"

    return-object p0

    .line 98
    :pswitch_28
    const-string/jumbo p0, "openWrite"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
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

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 494
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 153
    invoke-static {p1}, Landroid/app/blob/IBlobStoreSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    nop

    .line 158
    const-string v0, "android.app.blob.IBlobStoreSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 165
    :cond_17
    packed-switch p1, :pswitch_data_bc

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 257
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/blob/IBlobCommitCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobCommitCallback;

    move-result-object p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1}, Landroid/app/blob/IBlobStoreSession$Stub;->commit(Landroid/app/blob/IBlobCommitCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_ba

    .line 250
    :pswitch_32
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->abandon()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_ba

    .line 244
    :pswitch_3a
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->close()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_ba

    .line 237
    :pswitch_42
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->getSize()J

    move-result-wide p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    goto :goto_ba

    .line 230
    :pswitch_4d
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isPublicAccessAllowed()Z

    move-result p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    goto :goto_ba

    .line 223
    :pswitch_58
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isSameSignatureAccessAllowed()Z

    move-result p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    goto :goto_ba

    .line 212
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, p1, p4}, Landroid/app/blob/IBlobStoreSession$Stub;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto :goto_ba

    .line 205
    :pswitch_79
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPublicAccess()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_ba

    .line 199
    :pswitch_80
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowSameSignatureAccess()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_ba

    .line 189
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1, p4}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPackageAccess(Ljava/lang/String;[B)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_ba

    .line 181
    :pswitch_99
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->openRead()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    goto :goto_ba

    .line 170
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/blob/IBlobStoreSession$Stub;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    nop

    .line 268
    :goto_ba
    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_99
        :pswitch_87
        :pswitch_80
        :pswitch_79
        :pswitch_63
        :pswitch_58
        :pswitch_4d
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
