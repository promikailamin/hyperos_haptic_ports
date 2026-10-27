.class public Lmiui/mqsas/sdk/event/PackageForegroundEvent;
.super Ljava/lang/Object;
.source "PackageForegroundEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist componentName:Ljava/lang/String;

.field private blacklist foregroundTime:J

.field private blacklist identity:I

.field private blacklist isColdStart:Z

.field private blacklist lastPackageName:Ljava/lang/String;

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist pid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 22
    const/4 v1, -0x1

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    .line 23
    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    .line 24
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    .line 26
    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 139
    return v0

    .line 141
    :cond_4
    move-object v1, p1

    check-cast v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;

    .line 142
    .local v1, "o":Lmiui/mqsas/sdk/event/PackageForegroundEvent;
    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    iget-object v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    iget v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    iget v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    if-ne v2, v3, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 142
    :goto_2a
    return v0
.end method

.method public blacklist getComponentName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getForegroundTime()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    return-wide v0
.end method

.method public blacklist getIdentity()I
    .registers 2

    .line 84
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    return v0
.end method

.method public blacklist getLastPackageName()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPid()I
    .registers 2

    .line 92
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    return v0
.end method

.method public blacklist isColdStart()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return v0
.end method

.method public blacklist setColdStart(Z)V
    .registers 2
    .param p1, "coldStart"    # Z

    .line 112
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    .line 113
    return-void
.end method

.method public blacklist setComponentName(Ljava/lang/String;)V
    .registers 2
    .param p1, "componentName"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public blacklist setForegroundTime(J)V
    .registers 3
    .param p1, "foregroundTime"    # J

    .line 104
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    .line 105
    return-void
.end method

.method public blacklist setIdentity(I)V
    .registers 2
    .param p1, "identity"    # I

    .line 88
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    .line 89
    return-void
.end method

.method public blacklist setLastPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "lastPackageName"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public blacklist setPid(I)V
    .registers 2
    .param p1, "pid"    # I

    .line 96
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    .line 97
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageForegroundEvent{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", componentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foregroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isColdStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method
