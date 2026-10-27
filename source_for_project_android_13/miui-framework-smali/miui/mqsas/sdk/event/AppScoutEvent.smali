.class public Lmiui/mqsas/sdk/event/AppScoutEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "AppScoutEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/AppScoutEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCurrentMsg:Ljava/lang/String;

.field private blacklist mInputLatency:I

.field private blacklist mIsBlockSystem:Z

.field private blacklist mIsSystemApp:Z

.field private blacklist mTargetActivity:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lmiui/mqsas/sdk/event/AppScoutEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/AppScoutEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/AppScoutEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTargetActivity:Ljava/lang/String;

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mInputLatency:I

    .line 29
    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    .line 30
    iput v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mUid:I

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mType:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTimeStamp:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPid:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mUid:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mProcessName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTargetActivity:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mInputLatency:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mIsSystemApp:Z

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/AppScoutEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/AppScoutEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 5

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTargetActivity:Ljava/lang/String;

    .line 147
    const/4 v1, 0x0

    iput v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mInputLatency:I

    .line 148
    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mProcessName:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPackageName:Ljava/lang/String;

    .line 151
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTimeStamp:J

    .line 152
    iput v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPid:I

    .line 153
    iput v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mUid:I

    .line 154
    iput-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mIsSystem:Z

    .line 156
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBlockSystemState()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mIsBlockSystem:Z

    return v0
.end method

.method public blacklist getCurrentMsg()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInputLatency()I
    .registers 2

    .line 123
    iget v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mInputLatency:I

    return v0
.end method

.method public blacklist getIsSystemApp()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mIsSystemApp:Z

    return v0
.end method

.method public blacklist getTargetActivity()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTargetActivity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 103
    iget v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mType:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 133
    iget v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mUid:I

    return v0
.end method

.method public blacklist initType()V
    .registers 2

    .line 35
    const/16 v0, 0x19a

    iput v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mType:I

    .line 36
    return-void
.end method

.method public blacklist setBlockSystemState(Z)V
    .registers 2
    .param p1, "mIsBlockSystem"    # Z

    .line 87
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mIsBlockSystem:Z

    .line 88
    return-void
.end method

.method public blacklist setCurrentMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCurrentMsg"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public blacklist setInputLatency(I)V
    .registers 2
    .param p1, "mInputLatency"    # I

    .line 118
    iput p1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mInputLatency:I

    .line 119
    return-void
.end method

.method public blacklist setIsSystemApp(Z)V
    .registers 2
    .param p1, "isSystemApp"    # Z

    .line 141
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mIsSystemApp:Z

    .line 142
    return-void
.end method

.method public blacklist setTargetActivity(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTargetActivity"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTargetActivity:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "mType"    # I

    .line 99
    iput p1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mType:I

    .line 100
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 2
    .param p1, "mUid"    # I

    .line 128
    iput p1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mUid:I

    .line 129
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mType:I

    packed-switch v1, :pswitch_data_a2

    .line 178
    iget v1, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "AppScoutEventName":Ljava/lang/String;
    goto :goto_20

    .line 175
    .end local v1    # "AppScoutEventName":Ljava/lang/String;
    :pswitch_11
    const-string v1, "APP_SCOUT_HANG_INPUT"

    .line 176
    .restart local v1    # "AppScoutEventName":Ljava/lang/String;
    goto :goto_20

    .line 172
    .end local v1    # "AppScoutEventName":Ljava/lang/String;
    :pswitch_14
    const-string v1, "APP_SCOUT_HANG"

    .line 173
    .restart local v1    # "AppScoutEventName":Ljava/lang/String;
    goto :goto_20

    .line 169
    .end local v1    # "AppScoutEventName":Ljava/lang/String;
    :pswitch_17
    const-string v1, "APP_SCOUT_SLOW"

    .line 170
    .restart local v1    # "AppScoutEventName":Ljava/lang/String;
    goto :goto_20

    .line 166
    .end local v1    # "AppScoutEventName":Ljava/lang/String;
    :pswitch_1a
    const-string v1, "APP_SCOUT_WARNING"

    .line 167
    .restart local v1    # "AppScoutEventName":Ljava/lang/String;
    goto :goto_20

    .line 163
    .end local v1    # "AppScoutEventName":Ljava/lang/String;
    :pswitch_1d
    const-string v1, "APP_SCOUT_NORMALLY"

    .line 164
    .restart local v1    # "AppScoutEventName":Ljava/lang/String;
    nop

    .line 181
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppScoutEvent { mType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTimeStamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTargetActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CurrentMsg:{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "} mInputLatency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mInputLatency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_a2
    .packed-switch 0x19a
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 46
    iget v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mInputLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mCurrentMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AppScoutEvent;->mIsSystemApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 56
    return-void
.end method
