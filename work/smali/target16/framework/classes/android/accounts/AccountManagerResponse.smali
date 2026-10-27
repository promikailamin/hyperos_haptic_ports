.class public Landroid/accounts/AccountManagerResponse;
.super Ljava/lang/Object;
.source "AccountManagerResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accounts/AccountManagerResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mResponse:Landroid/accounts/IAccountManagerResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/accounts/AccountManagerResponse$1;

    invoke-direct {v0}, Landroid/accounts/AccountManagerResponse$1;-><init>()V

    sput-object v0, Landroid/accounts/AccountManagerResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/accounts/IAccountManagerResponse;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/accounts/AccountManagerResponse;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 34
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    nop

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    iput-object p1, p0, Landroid/accounts/AccountManagerResponse;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 4

    .line 52
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManagerResponse;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 55
    goto :goto_7

    .line 53
    :catch_6
    move-exception p1

    .line 56
    :goto_7
    return-void
.end method

.method public greylist-max-o onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 44
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManagerResponse;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 47
    goto :goto_7

    .line 45
    :catch_6
    move-exception p1

    .line 48
    :goto_7
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 65
    iget-object p2, p0, Landroid/accounts/AccountManagerResponse;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {p2}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    return-void
.end method
