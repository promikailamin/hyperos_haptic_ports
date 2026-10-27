.class Lmiui/security/WakePathComponent$1;
.super Ljava/lang/Object;
.source "WakePathComponent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/WakePathComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/security/WakePathComponent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lmiui/security/WakePathComponent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/security/WakePathComponent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lmiui/security/WakePathComponent;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Lmiui/security/WakePathComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/security/WakePathComponent;-><init>(Landroid/os/Parcel;Lmiui/security/WakePathComponent-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lmiui/security/WakePathComponent$1;->newArray(I)[Lmiui/security/WakePathComponent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lmiui/security/WakePathComponent;
    .registers 3
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lmiui/security/WakePathComponent;

    return-object v0
.end method
