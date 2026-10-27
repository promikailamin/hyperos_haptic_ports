.class public final Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileQueryParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT:Landroid/media/quality/MediaQualityManager$ProfileQueryParams;


# instance fields
.field private final blacklist mParametersIncluded:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1324
    new-instance v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;

    invoke-direct {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;->build()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    sput-object v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->DEFAULT:Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    .line 1336
    new-instance v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$1;

    invoke-direct {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$1;-><init>()V

    sput-object v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    .line 1328
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/MediaQualityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    iput-boolean p1, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    .line 1333
    return-void
.end method

.method private blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 1368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1369
    const-string v1, "include_parameters"

    iget-boolean v2, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1370
    return-object v0
.end method


# virtual methods
.method public whitelist areParametersIncluded()Z
    .registers 2

    .line 1364
    iget-boolean v0, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1356
    iget-boolean p2, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1357
    return-void
.end method
