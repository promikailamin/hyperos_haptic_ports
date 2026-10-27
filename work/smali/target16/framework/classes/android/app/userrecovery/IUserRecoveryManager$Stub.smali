.class public abstract Landroid/app/userrecovery/IUserRecoveryManager$Stub;
.super Landroid/os/Binder;
.source "IUserRecoveryManager.java"

# interfaces
.implements Landroid/app/userrecovery/IUserRecoveryManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/userrecovery/IUserRecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/userrecovery/IUserRecoveryManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createRecoverySession:I = 0x1

.field static final blacklist TRANSACTION_requestRart:I = 0x2

.field static final blacklist TRANSACTION_startRecovery:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.app.userrecovery.IUserRecoveryManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/userrecovery/IUserRecoveryManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/userrecovery/IUserRecoveryManager;
    .registers 3

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    const-string v0, "android.app.userrecovery.IUserRecoveryManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/userrecovery/IUserRecoveryManager;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Landroid/app/userrecovery/IUserRecoveryManager;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Landroid/app/userrecovery/IUserRecoveryManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/userrecovery/IUserRecoveryManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 79
    packed-switch p0, :pswitch_data_10

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 91
    :pswitch_5
    const-string/jumbo p0, "startRecovery"

    return-object p0

    .line 87
    :pswitch_9
    const-string/jumbo p0, "requestRart"

    return-object p0

    .line 83
    :pswitch_d
    const-string p0, "createRecoverySession"

    return-object p0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 241
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Landroid/app/userrecovery/IUserRecoveryManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    nop

    .line 107
    const-string v0, "android.app.userrecovery.IUserRecoveryManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_17
    packed-switch p1, :pswitch_data_56

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/app/userrecovery/IUserRecoveryManager$Stub;->startRecovery(I)Landroid/app/userrecovery/RecoveryChallenge;

    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    goto :goto_55

    .line 129
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/app/userrecovery/IUserRecoveryManager$Stub;->requestRart(I)[B

    move-result-object p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 134
    goto :goto_55

    .line 119
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/userrecovery/IUserRecoveryManager$Stub;->createRecoverySession(I)Landroid/app/userrecovery/IUserRecoverySession;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 124
    nop

    .line 151
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
