.class Lcom/miui/darkmode/DarkModeAppDetailInfo$1;
.super Ljava/lang/Object;
.source "DarkModeAppDetailInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/darkmode/DarkModeAppDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/darkmode/DarkModeAppDetailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/miui/darkmode/DarkModeAppDetailInfo;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    new-instance v0, Lcom/miui/darkmode/DarkModeAppDetailInfo;

    invoke-direct {v0, p1}, Lcom/miui/darkmode/DarkModeAppDetailInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/darkmode/DarkModeAppDetailInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/darkmode/DarkModeAppDetailInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/miui/darkmode/DarkModeAppDetailInfo;
    .registers 3
    .param p1, "size"    # I

    .line 85
    new-array v0, p1, [Lcom/miui/darkmode/DarkModeAppDetailInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/darkmode/DarkModeAppDetailInfo$1;->newArray(I)[Lcom/miui/darkmode/DarkModeAppDetailInfo;

    move-result-object p1

    return-object p1
.end method
