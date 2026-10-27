.class public final Landroid/app/ActivityManager$ConnectionInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFlags:J

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mProcessName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3492
    new-instance v0, Landroid/app/ActivityManager$ConnectionInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$ConnectionInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3477
    iput-wide p1, p0, Landroid/app/ActivityManager$ConnectionInfo;->mFlags:J

    .line 3478
    iput-object p3, p0, Landroid/app/ActivityManager$ConnectionInfo;->mProcessName:Ljava/lang/String;

    .line 3479
    iput-object p4, p0, Landroid/app/ActivityManager$ConnectionInfo;->mPackageName:Ljava/lang/String;

    .line 3480
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 3484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3485
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$ConnectionInfo;->mFlags:J

    .line 3486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$ConnectionInfo;->mProcessName:Ljava/lang/String;

    .line 3487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityManager$ConnectionInfo;->mPackageName:Ljava/lang/String;

    .line 3488
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3519
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFlags()J
    .registers 3

    .line 3527
    iget-wide v0, p0, Landroid/app/ActivityManager$ConnectionInfo;->mFlags:J

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3543
    iget-object v0, p0, Landroid/app/ActivityManager$ConnectionInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 3535
    iget-object v0, p0, Landroid/app/ActivityManager$ConnectionInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 3508
    iget-wide v0, p0, Landroid/app/ActivityManager$ConnectionInfo;->mFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3509
    iget-object p2, p0, Landroid/app/ActivityManager$ConnectionInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3510
    iget-object p2, p0, Landroid/app/ActivityManager$ConnectionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3511
    return-void
.end method
