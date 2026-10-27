.class Landroid/gui/TransactionBarrier$1;
.super Ljava/lang/Object;
.source "TransactionBarrier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gui/TransactionBarrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/gui/TransactionBarrier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/gui/TransactionBarrier;
    .registers 3

    .line 18
    new-instance v0, Landroid/gui/TransactionBarrier;

    invoke-direct {v0}, Landroid/gui/TransactionBarrier;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Landroid/gui/TransactionBarrier;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Landroid/gui/TransactionBarrier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gui/TransactionBarrier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/gui/TransactionBarrier;
    .registers 2

    .line 24
    new-array p1, p1, [Landroid/gui/TransactionBarrier;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Landroid/gui/TransactionBarrier$1;->newArray(I)[Landroid/gui/TransactionBarrier;

    move-result-object p1

    return-object p1
.end method
