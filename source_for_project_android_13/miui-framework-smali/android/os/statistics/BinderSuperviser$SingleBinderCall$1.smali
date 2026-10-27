.class Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser$SingleBinderCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/statistics/BinderSuperviser$SingleBinderCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/BinderSuperviser$SingleBinderCall;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 222
    new-instance v0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;-><init>()V

    .line 223
    .local v0, "object":Landroid/os/statistics/BinderSuperviser$SingleBinderCall;
    invoke-virtual {v0, p1}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->readFromParcel(Landroid/os/Parcel;)V

    .line 224
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 219
    invoke-virtual {p0, p1}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/statistics/BinderSuperviser$SingleBinderCall;
    .registers 3
    .param p1, "size"    # I

    .line 228
    new-array v0, p1, [Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 219
    invoke-virtual {p0, p1}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;->newArray(I)[Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    move-result-object p1

    return-object p1
.end method
