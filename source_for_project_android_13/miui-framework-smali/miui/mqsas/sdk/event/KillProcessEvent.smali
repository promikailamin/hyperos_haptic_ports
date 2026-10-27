.class public Lmiui/mqsas/sdk/event/KillProcessEvent;
.super Ljava/lang/Object;
.source "KillProcessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist POLICY_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final blacklist POLICY_KILL_SELF:Ljava/lang/String; = "killself"

.field public static final blacklist POLICY_LMK:Ljava/lang/String; = "lowmemorykiller"

.field public static final blacklist POLICY_OTHER:Ljava/lang/String; = "other"

.field public static final blacklist POLICY_POWERKEEPER:Ljava/lang/String; = "powerkeeper"

.field public static final blacklist POLICY_SECURITY:Ljava/lang/String; = "securitycenter"

.field public static final blacklist POLICY_SYSTEM:Ljava/lang/String; = "system"

.field public static final blacklist POLICY_SYSTEMUI:Ljava/lang/String; = "systemui"

.field public static final blacklist POLICY_UNUSE:Ljava/lang/String; = "userunused"

.field public static final blacklist POLICY_WHETSTONE:Ljava/lang/String; = "whetstone"

.field public static final blacklist PROCESS_STATE_NONEXISTENT:I = -0x1

.field public static final blacklist UNKNOWN_ADJ:I = 0x7fffffff


# instance fields
.field private blacklist isInterestingToUser:Z

.field private blacklist killedProc:Ljava/lang/String;

.field private blacklist killedReason:Ljava/lang/String;

.field private blacklist killedTime:J

.field private blacklist policy:Ljava/lang/String;

.field private blacklist procAdj:I

.field private blacklist procState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lmiui/mqsas/sdk/event/KillProcessEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/KillProcessEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/KillProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    .line 61
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/KillProcessEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKilledProc()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKilledReason()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKilledTime()J
    .registers 3

    .line 145
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    return-wide v0
.end method

.method public blacklist getPolicy()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcAdj()I
    .registers 2

    .line 137
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    return v0
.end method

.method public blacklist getProcState()I
    .registers 2

    .line 129
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    return v0
.end method

.method public blacklist isInterestingToUser()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    return v0
.end method

.method public blacklist setInterestingToUser(Z)V
    .registers 2
    .param p1, "interestingToUser"    # Z

    .line 157
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    .line 158
    return-void
.end method

.method public blacklist setKilledProc(Ljava/lang/String;)V
    .registers 2
    .param p1, "killedProc"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public blacklist setKilledReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "killedReason"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public blacklist setKilledTime(J)V
    .registers 3
    .param p1, "killedTime"    # J

    .line 149
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    .line 150
    return-void
.end method

.method public blacklist setPolicy(Ljava/lang/String;)V
    .registers 2
    .param p1, "policy"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public blacklist setProcAdj(I)V
    .registers 2
    .param p1, "procAdj"    # I

    .line 141
    iput p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    .line 142
    return-void
.end method

.method public blacklist setProcState(I)V
    .registers 2
    .param p1, "procState"    # I

    .line 133
    iput p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    .line 134
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KillProcessEvent { policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " killedProcess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processAdj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " killedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInterestingToUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
