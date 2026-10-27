.class public Landroid/app/ActivityManager$RunningServiceInfo;
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
    name = "RunningServiceInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_FOREGROUND:I = 0x2

.field public static final whitelist FLAG_PERSISTENT_PROCESS:I = 0x8

.field public static final whitelist FLAG_STARTED:I = 0x1

.field public static final whitelist FLAG_SYSTEM_PROCESS:I = 0x4


# instance fields
.field public whitelist activeSince:J

.field public whitelist clientCount:I

.field public whitelist clientLabel:I

.field public whitelist clientPackage:Ljava/lang/String;

.field public whitelist crashCount:I

.field public whitelist flags:I

.field public whitelist foreground:Z

.field public whitelist lastActivityTime:J

.field public whitelist pid:I

.field public whitelist process:Ljava/lang/String;

.field public whitelist restarting:J

.field public whitelist service:Landroid/content/ComponentName;

.field public whitelist started:Z

.field public whitelist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3407
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3367
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 3416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3417
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3418
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3370
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 3391
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 3392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 3393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 3394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 3395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    move v0, v1

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 3396
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 3397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    iput-boolean v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 3398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 3399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 3400
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 3401
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 3402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 3404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 3405
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 3374
    iget-object p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {p2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3375
    iget p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    iget p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3377
    iget-object p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3378
    iget-boolean p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3379
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3380
    iget-boolean p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3381
    iget p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3382
    iget p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3383
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3384
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3385
    iget p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3386
    iget-object p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3387
    iget p2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3388
    return-void
.end method
