.class public Lmiui/process/LifecycleConfig;
.super Ljava/lang/Object;
.source "LifecycleConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist AFTER_STOP_DELAY_FREEZE_TIME:I = 0x1f4

.field public static final blacklist AI_TYPE:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/process/LifecycleConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_TYPE:I = 0x0

.field public static final blacklist FREEZE_PRELOAD_APP_TIMEOUT:I = 0x5208

.field public static final blacklist KILL_PRELOAD_APP_TIMEOUT:I = 0x493e0

.field public static final blacklist MIN_NEXT_PRELOAD_DELAY_TIMEMILLIS:I = 0xbb8

.field public static final blacklist PRELOAD_SOON_TIMEOUT:I = 0xbb8

.field private static final blacklist SPEED_KILL_TIMEOUT:I = 0x493e0

.field private static final blacklist SPEED_STOP_TIMEOUT:I = 0x1f40

.field public static final blacklist SPEED_TEST_MODE_TYPE:I = 0x1

.field public static final blacklist STOP_PRELOAD_APP_TIMEOUT:I = 0x4e20


# instance fields
.field private blacklist mKillTimeout:J

.field private blacklist mSchedAffinity:[I

.field private blacklist mStopTimeout:J

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Lmiui/process/LifecycleConfig$1;

    invoke-direct {v0}, Lmiui/process/LifecycleConfig$1;-><init>()V

    sput-object v0, Lmiui/process/LifecycleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJI)V
    .registers 6
    .param p1, "stopTimeout"    # J
    .param p3, "killTimeout"    # J
    .param p5, "type"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lmiui/process/LifecycleConfig;->mStopTimeout:J

    .line 44
    iput-wide p3, p0, Lmiui/process/LifecycleConfig;->mKillTimeout:J

    .line 45
    iput p5, p0, Lmiui/process/LifecycleConfig;->mType:I

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lmiui/process/LifecycleConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/process/LifecycleConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/process/LifecycleConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist create(I)Lmiui/process/LifecycleConfig;
    .registers 14
    .param p0, "type"    # I

    .line 32
    packed-switch p0, :pswitch_data_2a

    .line 38
    new-instance v0, Lmiui/process/LifecycleConfig;

    const-wide/16 v2, 0x4e20

    const-wide/32 v4, 0x493e0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmiui/process/LifecycleConfig;-><init>(JJI)V

    return-object v0

    .line 36
    :pswitch_10
    new-instance v6, Lmiui/process/LifecycleConfig;

    const-wide/16 v1, 0x4e20

    const-wide/32 v3, 0x493e0

    move-object v0, v6

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lmiui/process/LifecycleConfig;-><init>(JJI)V

    return-object v6

    .line 34
    :pswitch_1d
    new-instance v0, Lmiui/process/LifecycleConfig;

    const-wide/16 v8, 0x1f40

    const-wide/32 v10, 0x493e0

    move-object v7, v0

    move v12, p0

    invoke-direct/range {v7 .. v12}, Lmiui/process/LifecycleConfig;-><init>(JJI)V

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist forceStart()Z
    .registers 3

    .line 90
    iget v0, p0, Lmiui/process/LifecycleConfig;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist getKillTimeout()J
    .registers 3

    .line 57
    iget-wide v0, p0, Lmiui/process/LifecycleConfig;->mKillTimeout:J

    return-wide v0
.end method

.method public blacklist getSchedAffinity()[I
    .registers 2

    .line 73
    iget-object v0, p0, Lmiui/process/LifecycleConfig;->mSchedAffinity:[I

    return-object v0
.end method

.method public blacklist getStopTimeout()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lmiui/process/LifecycleConfig;->mStopTimeout:J

    return-wide v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 65
    iget v0, p0, Lmiui/process/LifecycleConfig;->mType:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/process/LifecycleConfig;->mStopTimeout:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/process/LifecycleConfig;->mKillTimeout:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lmiui/process/LifecycleConfig;->mSchedAffinity:[I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/LifecycleConfig;->mType:I

    .line 111
    return-void
.end method

.method public blacklist setKillTimeout(I)V
    .registers 4
    .param p1, "mKillTimeout"    # I

    .line 61
    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/process/LifecycleConfig;->mKillTimeout:J

    .line 62
    return-void
.end method

.method public blacklist setSchedAffinity(II)V
    .registers 7
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .line 77
    if-ltz p1, :cond_18

    if-le p1, p2, :cond_5

    goto :goto_18

    .line 81
    :cond_5
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 82
    .local v0, "length":I
    new-array v1, v0, [I

    .line 83
    .local v1, "schedAffinity":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_15

    .line 84
    add-int v3, p1, v2

    aput v3, v1, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 86
    .end local v2    # "i":I
    :cond_15
    iput-object v1, p0, Lmiui/process/LifecycleConfig;->mSchedAffinity:[I

    .line 87
    return-void

    .line 78
    .end local v0    # "length":I
    .end local v1    # "schedAffinity":[I
    :cond_18
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/process/LifecycleConfig;->mSchedAffinity:[I

    .line 79
    return-void
.end method

.method public blacklist setStopTimeout(J)V
    .registers 3
    .param p1, "mStopTimeout"    # J

    .line 53
    iput-wide p1, p0, Lmiui/process/LifecycleConfig;->mStopTimeout:J

    .line 54
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "mType"    # I

    .line 69
    iput p1, p0, Lmiui/process/LifecycleConfig;->mType:I

    .line 70
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    iget-wide v0, p0, Lmiui/process/LifecycleConfig;->mStopTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v0, p0, Lmiui/process/LifecycleConfig;->mKillTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-object v0, p0, Lmiui/process/LifecycleConfig;->mSchedAffinity:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 123
    iget v0, p0, Lmiui/process/LifecycleConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method
