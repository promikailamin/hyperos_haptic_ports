.class public Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;
.super Ljava/lang/Object;
.source "ContinuousKillProcessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PROCESS_STATE_NONEXISTENT:I = -0x1

.field public static final blacklist UNKNOWN_ADJ:I = 0x7fffffff


# instance fields
.field private blacklist callerPackage:Ljava/lang/String;

.field private blacklist killedProc:Ljava/lang/String;

.field private blacklist killedReason:Ljava/lang/String;

.field private blacklist procAdj:I

.field private blacklist procState:I

.field private blacklist startReason:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    .line 44
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallerPackage()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKilledProc()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKilledReason()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcAdj()I
    .registers 2

    .line 124
    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    return v0
.end method

.method public blacklist getProcState()I
    .registers 2

    .line 116
    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    return v0
.end method

.method public blacklist getStartReason()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setCallerPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "callerPackage"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public blacklist setKilledProc(Ljava/lang/String;)V
    .registers 2
    .param p1, "killedProc"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public blacklist setKilledReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "killedReason"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public blacklist setProcAdj(I)V
    .registers 2
    .param p1, "procAdj"    # I

    .line 128
    iput p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    .line 129
    return-void
.end method

.method public blacklist setProcState(I)V
    .registers 2
    .param p1, "procState"    # I

    .line 120
    iput p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    .line 121
    return-void
.end method

.method public blacklist setStartReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "startReason"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContinuousKillProcessEvent { killedProcess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " killedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callerPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processAdj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " procState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
