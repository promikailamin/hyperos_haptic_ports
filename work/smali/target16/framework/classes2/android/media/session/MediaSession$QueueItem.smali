.class public final Landroid/media/session/MediaSession$QueueItem;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueItem"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist UNKNOWN_ID:I = -0x1


# instance fields
.field private final greylist-max-o mDescription:Landroid/media/MediaDescription;

.field private final greylist-max-r mId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1556
    new-instance v0, Landroid/media/session/MediaSession$QueueItem$1;

    invoke-direct {v0}, Landroid/media/session/MediaSession$QueueItem$1;-><init>()V

    sput-object v0, Landroid/media/session/MediaSession$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/MediaDescription;J)V
    .registers 6

    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    if-eqz p1, :cond_18

    .line 1519
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_10

    .line 1522
    iput-object p1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    .line 1523
    iput-wide p2, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    .line 1524
    return-void

    .line 1520
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Id cannot be QueueItem.UNKNOWN_ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1517
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Description cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDescription;

    iput-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    .line 1528
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    .line 1529
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/session/MediaSession-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1553
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1578
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1579
    return v0

    .line 1582
    :cond_4
    instance-of v1, p1, Landroid/media/session/MediaSession$QueueItem;

    if-nez v1, :cond_9

    .line 1583
    return v0

    .line 1586
    :cond_9
    check-cast p1, Landroid/media/session/MediaSession$QueueItem;

    .line 1587
    iget-wide v1, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    iget-wide v3, p1, Landroid/media/session/MediaSession$QueueItem;->mId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 1588
    return v0

    .line 1591
    :cond_14
    iget-object v1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    iget-object p1, p1, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 1592
    return v0

    .line 1595
    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist getDescription()Landroid/media/MediaDescription;
    .registers 2

    .line 1535
    iget-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    return-object v0
.end method

.method public whitelist getQueueId()J
    .registers 3

    .line 1542
    iget-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSession.QueueItem {Description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1547
    iget-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1548
    iget-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1549
    return-void
.end method
