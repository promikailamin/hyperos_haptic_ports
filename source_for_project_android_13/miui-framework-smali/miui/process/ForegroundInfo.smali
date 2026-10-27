.class public Lmiui/process/ForegroundInfo;
.super Ljava/lang/Object;
.source "ForegroundInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/process/ForegroundInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_FOREGROUND_COLD_START:I = 0x1


# instance fields
.field public whitelist mFlags:I

.field public whitelist mForegroundPackageName:Ljava/lang/String;

.field public whitelist mForegroundPid:I

.field public whitelist mForegroundUid:I

.field public whitelist mLastForegroundPackageName:Ljava/lang/String;

.field public whitelist mLastForegroundPid:I

.field public whitelist mLastForegroundUid:I

.field public whitelist mMultiWindowForegroundPackageName:Ljava/lang/String;

.field public whitelist mMultiWindowForegroundUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lmiui/process/ForegroundInfo$1;

    invoke-direct {v0}, Lmiui/process/ForegroundInfo$1;-><init>()V

    sput-object v0, Lmiui/process/ForegroundInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    .line 13
    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    .line 17
    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    .line 18
    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    .line 22
    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    .line 13
    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    .line 17
    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    .line 18
    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    .line 22
    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/process/ForegroundInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/process/ForegroundInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Lmiui/process/ForegroundInfo;)V
    .registers 3
    .param p1, "origin"    # Lmiui/process/ForegroundInfo;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    .line 13
    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    .line 17
    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    .line 18
    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    .line 22
    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    .line 29
    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    .line 30
    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    .line 31
    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    .line 32
    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    .line 33
    iget v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    .line 34
    iget v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    .line 35
    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    .line 36
    iget v0, p1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    .line 37
    iget v0, p1, Lmiui/process/ForegroundInfo;->mFlags:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 87
    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    .line 88
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isColdStart()Z
    .registers 3

    .line 83
    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist resetFlags()V
    .registers 2

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    .line 92
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForegroundInfo{mForegroundPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mForegroundUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mForegroundPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLastForegroundPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLastForegroundUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLastForegroundPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mMultiWindowForegroundPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMultiWindowForegroundUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
