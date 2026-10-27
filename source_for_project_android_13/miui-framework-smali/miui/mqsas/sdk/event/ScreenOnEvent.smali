.class public Lmiui/mqsas/sdk/event/ScreenOnEvent;
.super Ljava/lang/Object;
.source "ScreenOnEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist AVG_SCREEN_ON:Ljava/lang/String; = "avg_screen_on"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/ScreenOnEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LT_SCREEN_ON:Ljava/lang/String; = "lt_screen_on"

.field public static final blacklist TYPE_SCREEN_ON:[Ljava/lang/String;


# instance fields
.field private blacklist mBlockScreenTime:J

.field private blacklist mScreenOnType:Ljava/lang/String;

.field private blacklist mSetDisplayTime:J

.field private blacklist mTimeOutDetail:Ljava/lang/String;

.field private blacklist mTimeStamp:Ljava/lang/String;

.field private blacklist mTimeoutSummary:Ljava/lang/String;

.field private blacklist mTotalTime:J

.field private blacklist mWakeSource:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 13
    const-string v0, "avg_screen_on"

    const-string v1, "power"

    const-string v2, "dp_center"

    const-string v3, "keyguard_screenon_notification"

    const-string v4, "keyguard_screenon_finger_pass"

    const-string v5, "lid"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->TYPE_SCREEN_ON:[Ljava/lang/String;

    .line 80
    new-instance v0, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 63
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 64
    iput-wide v1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 65
    iput-wide v1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 66
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/ScreenOnEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBlockScreenTime()J
    .registers 3

    .line 142
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    return-wide v0
.end method

.method public blacklist getScreenOnType()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSetDisplayTime()J
    .registers 3

    .line 134
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    return-wide v0
.end method

.method public blacklist getTimeStamp()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimeoutSummary()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTotalTime()J
    .registers 3

    .line 126
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    return-wide v0
.end method

.method public blacklist getWakeSource()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getmTimeOutDetail()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setBlockScreenTime(J)V
    .registers 3
    .param p1, "mBlockScreenTime"    # J

    .line 146
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 147
    return-void
.end method

.method public blacklist setScreenOnType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mScreenOnType"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public blacklist setSetDisplayTime(J)V
    .registers 3
    .param p1, "mSetDisplayTime"    # J

    .line 138
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 139
    return-void
.end method

.method public blacklist setTimeStamp(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTimeStamp"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public blacklist setTimeoutSummary(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTimeoutSummary"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public blacklist setTotalTime(J)V
    .registers 3
    .param p1, "mTotalTime"    # J

    .line 130
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 131
    return-void
.end method

.method public blacklist setWakeSource(Ljava/lang/String;)V
    .registers 2
    .param p1, "mWakeSource"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public blacklist setmTimeOutDetail(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTimeOutDetail"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenOnEvent { mTimeoutSummary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeOutDetail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTotalTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSetDisplayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBlockScreenTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenOnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return-void
.end method
