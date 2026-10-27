.class public Lmiui/mqsas/sdk/event/PackageEvent;
.super Ljava/lang/Object;
.source "PackageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ACTION_PACKAGE_INSTALL:I = 0x1

.field public static final blacklist ACTION_PACKAGE_UNINSTALL:I = 0x2

.field public static final blacklist ACTION_PACKAGE_UPDATE:I = 0x3

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/PackageEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAction:I

.field private blacklist mInstallerPkgName:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mReturnCode:I

.field private blacklist mReturnMsg:Ljava/lang/String;

.field private blacklist mTimeStamp:J

.field private blacklist mType:I

.field private blacklist mVersionCode:I

.field private blacklist mVersionName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    .line 71
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    .line 72
    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    .line 73
    const-string v1, ""

    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    .line 74
    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    .line 75
    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    .line 76
    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    .line 77
    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/PackageEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist actionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .line 222
    packed-switch p0, :pswitch_data_10

    .line 230
    const-string v0, "Unknown"

    return-object v0

    .line 226
    :pswitch_6
    const-string v0, "Update"

    return-object v0

    .line 228
    :pswitch_9
    const-string v0, "Uninstall"

    return-object v0

    .line 224
    :pswitch_c
    const-string v0, "Install"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist formatTime(J)Ljava/lang/String;
    .registers 5
    .param p1, "timestamp"    # J

    .line 196
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAction()I
    .registers 2

    .line 140
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    return v0
.end method

.method public blacklist getInstallerPkgName()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReturnCode()I
    .registers 2

    .line 156
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    return v0
.end method

.method public blacklist getReturnMsg()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimeStamp()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 124
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    return v0
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 172
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    return v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setAction(I)V
    .registers 2
    .param p1, "action"    # I

    .line 144
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    .line 145
    return-void
.end method

.method public blacklist setInstallerPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "installerPkgName"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public blacklist setReturnCode(I)V
    .registers 2
    .param p1, "returnCode"    # I

    .line 160
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    .line 161
    return-void
.end method

.method public blacklist setReturnMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "returnMsg"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public blacklist setTimeStamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 136
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    .line 137
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 128
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    .line 129
    return-void
.end method

.method public blacklist setVersionCode(I)V
    .registers 2
    .param p1, "versionCode"    # I

    .line 176
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    .line 177
    return-void
.end method

.method public blacklist setVersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .registers 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageEvent { mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    invoke-static {v2}, Lmiui/mqsas/sdk/event/PackageEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReturnCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageEvent { mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    .line 203
    invoke-static {v2}, Lmiui/mqsas/sdk/event/PackageEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReturnCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReturnMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVersionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVersionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mInstallerPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return-void
.end method
