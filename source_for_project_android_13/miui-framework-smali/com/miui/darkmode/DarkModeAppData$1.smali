.class Lcom/miui/darkmode/DarkModeAppData$1;
.super Ljava/lang/Object;
.source "DarkModeAppData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/darkmode/DarkModeAppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/darkmode/DarkModeAppData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/miui/darkmode/DarkModeAppData;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 66
    new-instance v0, Lcom/miui/darkmode/DarkModeAppData;

    invoke-direct {v0, p1}, Lcom/miui/darkmode/DarkModeAppData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/darkmode/DarkModeAppData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/darkmode/DarkModeAppData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/miui/darkmode/DarkModeAppData;
    .registers 3
    .param p1, "size"    # I

    .line 71
    new-array v0, p1, [Lcom/miui/darkmode/DarkModeAppData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/darkmode/DarkModeAppData$1;->newArray(I)[Lcom/miui/darkmode/DarkModeAppData;

    move-result-object p1

    return-object p1
.end method
