.class public final Landroid/uwb/RangingReport;
.super Ljava/lang/Object;
.source "RangingReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/RangingReport$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/RangingReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRangingMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Landroid/uwb/RangingReport$1;

    invoke-direct {v0}, Landroid/uwb/RangingReport$1;-><init>()V

    sput-object v0, Landroid/uwb/RangingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "rangingMeasurements":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/RangingMeasurement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/uwb/RangingReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/uwb/RangingReport;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    if-ne p0, p1, :cond_4

    .line 63
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_4
    instance-of v0, p1, Landroid/uwb/RangingReport;

    if-eqz v0, :cond_16

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/uwb/RangingReport;

    .line 68
    .local v0, "other":Landroid/uwb/RangingReport;
    iget-object v1, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    invoke-virtual {v0}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 71
    .end local v0    # "other":Landroid/uwb/RangingReport;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMeasurements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingReport[measurements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget-object v0, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 90
    return-void
.end method
