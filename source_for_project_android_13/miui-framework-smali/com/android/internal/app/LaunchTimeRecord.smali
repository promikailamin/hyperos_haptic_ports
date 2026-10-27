.class public Lcom/android/internal/app/LaunchTimeRecord;
.super Ljava/lang/Object;
.source "LaunchTimeRecord.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field blacklist activity:Ljava/lang/String;

.field blacklist isColdStart:Z

.field blacklist launchEndTime:J

.field blacklist launchStartTime:J

.field blacklist launchTime:J

.field blacklist packageName:Ljava/lang/String;

.field blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Lcom/android/internal/app/LaunchTimeRecord$1;

    invoke-direct {v0}, Lcom/android/internal/app/LaunchTimeRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/LaunchTimeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 121
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/app/LaunchTimeRecord-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "isColdStart"    # Z

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 24
    iput-wide p3, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 25
    iput-wide p5, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 26
    sub-long v0, p5, p3

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    .line 27
    iput-boolean p7, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivity()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLaunchEndTime()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    return-wide v0
.end method

.method public blacklist getLaunchStartTime()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    return-wide v0
.end method

.method public blacklist getLaunchTime()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return v0
.end method

.method public blacklist isColdStart()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    iput-boolean v1, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    .line 105
    return-void
.end method

.method public blacklist setActivity(Ljava/lang/String;)V
    .registers 2
    .param p1, "activity"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public blacklist setIsColdStart(Z)V
    .registers 2
    .param p1, "isColdStart"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    .line 80
    return-void
.end method

.method public blacklist setLaunchEndTime(J)V
    .registers 3
    .param p1, "launchEndTime"    # J

    .line 55
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 56
    return-void
.end method

.method public blacklist setLaunchStartTime(J)V
    .registers 3
    .param p1, "launchStartTime"    # J

    .line 47
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 48
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 67
    iput p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    .line 68
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
