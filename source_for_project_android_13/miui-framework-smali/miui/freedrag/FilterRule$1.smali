.class Lmiui/freedrag/FilterRule$1;
.super Ljava/lang/Object;
.source "FilterRule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/FilterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/freedrag/FilterRule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lmiui/freedrag/FilterRule$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/freedrag/FilterRule;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lmiui/freedrag/FilterRule;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Lmiui/freedrag/FilterRule;

    invoke-direct {v0, p1}, Lmiui/freedrag/FilterRule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lmiui/freedrag/FilterRule$1;->newArray(I)[Lmiui/freedrag/FilterRule;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lmiui/freedrag/FilterRule;
    .registers 3
    .param p1, "size"    # I

    .line 54
    new-array v0, p1, [Lmiui/freedrag/FilterRule;

    return-object v0
.end method
