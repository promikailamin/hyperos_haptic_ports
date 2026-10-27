.class public Landroid/content/pm/ValidPurposeInfo;
.super Ljava/lang/Object;
.source "ValidPurposeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ValidPurposeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist maxTargetSdkVersion:I

.field private blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/content/pm/ValidPurposeInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ValidPurposeInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ValidPurposeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    iput-object v0, p0, Landroid/content/pm/ValidPurposeInfo;->name:Ljava/lang/String;

    .line 100
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ValidPurposeInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 102
    iput p1, p0, Landroid/content/pm/ValidPurposeInfo;->maxTargetSdkVersion:I

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/content/pm/ValidPurposeInfo;->name:Ljava/lang/String;

    .line 58
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 60
    iput p2, p0, Landroid/content/pm/ValidPurposeInfo;->maxTargetSdkVersion:I

    .line 63
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxTargetSdkVersion()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/content/pm/ValidPurposeInfo;->maxTargetSdkVersion:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/content/pm/ValidPurposeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 81
    iget-object p2, p0, Landroid/content/pm/ValidPurposeInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget p2, p0, Landroid/content/pm/ValidPurposeInfo;->maxTargetSdkVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
