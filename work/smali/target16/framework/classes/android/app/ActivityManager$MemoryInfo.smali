.class public Landroid/app/ActivityManager$MemoryInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist advertisedMem:J

.field public whitelist availMem:J

.field public greylist foregroundAppThreshold:J

.field public blacklist freeMem:J

.field public greylist-max-r hiddenAppThreshold:J

.field public whitelist lowMemory:Z

.field public greylist-max-r secondaryServerThreshold:J

.field public whitelist threshold:J

.field public whitelist totalMem:J

.field public greylist-max-r visibleAppThreshold:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3693
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3647
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 3703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3704
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3705
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist copyTo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 4

    .line 3681
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    .line 3682
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 3683
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->freeMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->freeMem:J

    .line 3684
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 3685
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 3686
    iget-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v0, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 3687
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 3688
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 3689
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 3690
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 3691
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3650
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 3667
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    .line 3668
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 3669
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->freeMem:J

    .line 3670
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 3671
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 3672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 3673
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 3674
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 3675
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 3676
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 3677
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 3654
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3655
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3656
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->freeMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3657
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3658
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3659
    iget-boolean p2, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3660
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3661
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3662
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3663
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3664
    return-void
.end method
