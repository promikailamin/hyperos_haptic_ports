.class public abstract Landroid/app/userrecovery/IUserRecoverySession$Stub;
.super Landroid/os/Binder;
.source "IUserRecoverySession.java"

# interfaces
.implements Landroid/app/userrecovery/IUserRecoverySession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/userrecovery/IUserRecoverySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/userrecovery/IUserRecoverySession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x4

.field static final blacklist TRANSACTION_requestValidation:I = 0x3

.field static final blacklist TRANSACTION_saveEscrowToken:I = 0x1

.field static final blacklist TRANSACTION_saveKeyPair:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.app.userrecovery.IUserRecoverySession"

    invoke-virtual {p0, p0, v0}, Landroid/app/userrecovery/IUserRecoverySession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/userrecovery/IUserRecoverySession;
    .registers 3

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    const-string v0, "android.app.userrecovery.IUserRecoverySession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/userrecovery/IUserRecoverySession;

    if-eqz v1, :cond_13

    .line 74
    check-cast v0, Landroid/app/userrecovery/IUserRecoverySession;

    return-object v0

    .line 76
    :cond_13
    new-instance v0, Landroid/app/userrecovery/IUserRecoverySession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/userrecovery/IUserRecoverySession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 85
    packed-switch p0, :pswitch_data_14

    .line 105
    const/4 p0, 0x0

    return-object p0

    .line 101
    :pswitch_5
    const-string p0, "close"

    return-object p0

    .line 97
    :pswitch_8
    const-string/jumbo p0, "requestValidation"

    return-object p0

    .line 93
    :pswitch_c
    const-string/jumbo p0, "saveKeyPair"

    return-object p0

    .line 89
    :pswitch_10
    const-string/jumbo p0, "saveEscrowToken"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 271
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 112
    invoke-static {p1}, Landroid/app/userrecovery/IUserRecoverySession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 116
    nop

    .line 117
    const-string v0, "android.app.userrecovery.IUserRecoverySession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 158
    :pswitch_1f
    invoke-virtual {p0}, Landroid/app/userrecovery/IUserRecoverySession$Stub;->close()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_62

    .line 149
    :pswitch_26
    sget-object p1, Landroid/app/userrecovery/RecoveryAgentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/userrecovery/RecoveryAgentResponse;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/userrecovery/IUserRecoverySession$Stub;->requestValidation(Landroid/app/userrecovery/RecoveryAgentResponse;)Z

    move-result p1

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    goto :goto_62

    .line 138
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 140
    sget-object p4, Landroid/app/userrecovery/CertificateBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, p4}, Landroid/app/userrecovery/IUserRecoverySession$Stub;->saveKeyPair([BLjava/util/List;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_62

    .line 129
    :pswitch_50
    sget-object p1, Landroid/app/userrecovery/EscrowToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/userrecovery/EscrowToken;

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/app/userrecovery/IUserRecoverySession$Stub;->saveEscrowToken(Landroid/app/userrecovery/EscrowToken;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 167
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_50
        :pswitch_3c
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
