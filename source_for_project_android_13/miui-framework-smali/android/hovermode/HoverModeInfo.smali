.class public Landroid/hovermode/HoverModeInfo;
.super Ljava/lang/Object;
.source "HoverModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hovermode/HoverModeInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hovermode/HoverModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "HoverModeInfo"


# instance fields
.field private blacklist mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mApplicationName:Ljava/lang/String;

.field private blacklist mDisableVersionCode:J

.field private blacklist mEnableTouchPanel:Z

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/hovermode/HoverModeInfo$1;

    invoke-direct {v0}, Landroid/hovermode/HoverModeInfo$1;-><init>()V

    sput-object v0, Landroid/hovermode/HoverModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hovermode/HoverModeInfo$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/hovermode/HoverModeInfo$Builder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p1, Landroid/hovermode/HoverModeInfo$Builder;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hovermode/HoverModeInfo;->mPackageName:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Landroid/hovermode/HoverModeInfo$Builder;->mApplicationName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hovermode/HoverModeInfo;->mApplicationName:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Landroid/hovermode/HoverModeInfo$Builder;->mActivities:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hovermode/HoverModeInfo;->mActivities:Ljava/util/ArrayList;

    .line 78
    iget-boolean v0, p1, Landroid/hovermode/HoverModeInfo$Builder;->mEnableTouchPanel:Z

    iput-boolean v0, p0, Landroid/hovermode/HoverModeInfo;->mEnableTouchPanel:Z

    .line 79
    iget-wide v0, p1, Landroid/hovermode/HoverModeInfo$Builder;->mDisableVersionCode:J

    iput-wide v0, p0, Landroid/hovermode/HoverModeInfo;->mDisableVersionCode:J

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hovermode/HoverModeInfo$Builder;Landroid/hovermode/HoverModeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hovermode/HoverModeInfo;-><init>(Landroid/hovermode/HoverModeInfo$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hovermode/HoverModeInfo;->mPackageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hovermode/HoverModeInfo;->mApplicationName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hovermode/HoverModeInfo;->mActivities:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Landroid/hovermode/HoverModeInfo;->mEnableTouchPanel:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hovermode/HoverModeInfo;->mDisableVersionCode:J

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hovermode/HoverModeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hovermode/HoverModeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivities()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Landroid/hovermode/HoverModeInfo;->mActivities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getApplicationName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/hovermode/HoverModeInfo;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisableVersionCode()J
    .registers 3

    .line 47
    iget-wide v0, p0, Landroid/hovermode/HoverModeInfo;->mDisableVersionCode:J

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Landroid/hovermode/HoverModeInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnableTouchPanel()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Landroid/hovermode/HoverModeInfo;->mEnableTouchPanel:Z

    return v0
.end method

.method public blacklist setActivities(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/hovermode/HoverModeInfo;->mActivities:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method public blacklist setDisableVersionCode(J)V
    .registers 3
    .param p1, "disableVersionCode"    # J

    .line 113
    iput-wide p1, p0, Landroid/hovermode/HoverModeInfo;->mDisableVersionCode:J

    .line 114
    return-void
.end method

.method public blacklist setEnableTouch(Z)V
    .registers 2
    .param p1, "support"    # Z

    .line 109
    iput-boolean p1, p0, Landroid/hovermode/HoverModeInfo;->mEnableTouchPanel:Z

    .line 110
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "HoverModeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "mEnableTouchPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hovermode/HoverModeInfo;->mEnableTouchPanel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    iget-wide v1, p0, Landroid/hovermode/HoverModeInfo;->mDisableVersionCode:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2b

    .line 59
    const-string v1, ", mDisableVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hovermode/HoverModeInfo;->mDisableVersionCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    :cond_2b
    const-string v1, ", mActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hovermode/HoverModeInfo;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/hovermode/HoverModeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/hovermode/HoverModeInfo;->mApplicationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/hovermode/HoverModeInfo;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 104
    iget-boolean v0, p0, Landroid/hovermode/HoverModeInfo;->mEnableTouchPanel:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-wide v0, p0, Landroid/hovermode/HoverModeInfo;->mDisableVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    return-void
.end method
