.class Lcom/android/internal/lineage/hardware/LiveDisplayConfig$1;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/hardware/LiveDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/lineage/hardware/LiveDisplayConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;
    .registers 4

    .line 378
    new-instance v0, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;Lcom/android/internal/lineage/hardware/LiveDisplayConfig-IA;)V

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

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/lineage/hardware/LiveDisplayConfig;
    .registers 2

    .line 383
    new-array p1, p1, [Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

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

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig$1;->newArray(I)[Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object p1

    return-object p1
.end method
