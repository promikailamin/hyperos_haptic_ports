.class public Lmiui/mqsas/sdk/event/FeatureEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "FeatureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/FeatureEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist subClass:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lmiui/mqsas/sdk/event/FeatureEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/FeatureEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/FeatureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 13
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mType:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mPid:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mProcessName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mPackageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mIsSystem:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mTimeStamp:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mSummary:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mDetails:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mDigest:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mLogName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mKeyWord:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->subClass:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/FeatureEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/FeatureEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "details"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 17
    iput-object p1, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mProcessName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mPackageName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mSummary:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mDetails:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->subClass:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSubClass()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->subClass:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist initType()V
    .registers 2

    .line 26
    const/16 v0, 0x184

    invoke-virtual {p0, v0}, Lmiui/mqsas/sdk/event/FeatureEvent;->setType(I)V

    .line 27
    return-void
.end method

.method public blacklist setSubClass(Ljava/lang/String;)V
    .registers 2
    .param p1, "subClass"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->subClass:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 45
    iget v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mIsSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lmiui/mqsas/sdk/event/FeatureEvent;->subClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
