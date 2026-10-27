.class public final Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
.super Ljava/lang/Object;
.source "RemoteTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/datatransfer/continuity/RemoteTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeviceId:I

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mId:I

.field private blacklist mIsHandoffEnabled:Z

.field private blacklist mLabel:Ljava/lang/String;

.field private blacklist mLastUsedTimestampMillis:J

.field private blacklist mSourceDeviceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)I
    .registers 1

    iget p0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)I
    .registers 1

    iget p0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHandoffEnabled(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mIsHandoffEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLabel(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastUsedTimestampMillis(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mLastUsedTimestampMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceDeviceName(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mSourceDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 5

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mId:I

    .line 200
    iput v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mDeviceId:I

    .line 201
    const-string v1, ""

    iput-object v1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mLabel:Ljava/lang/String;

    .line 202
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 203
    iput-boolean v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mIsHandoffEnabled:Z

    .line 204
    iput-object v1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mSourceDeviceName:Ljava/lang/String;

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mLastUsedTimestampMillis:J

    .line 213
    iput p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mId:I

    .line 214
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/datatransfer/continuity/RemoteTask;
    .registers 2

    .line 291
    new-instance v0, Landroid/companion/datatransfer/continuity/RemoteTask;

    invoke-direct {v0, p0}, Landroid/companion/datatransfer/continuity/RemoteTask;-><init>(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)V

    return-object v0
.end method

.method public blacklist setDeviceId(I)Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
    .registers 2

    .line 246
    iput p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mDeviceId:I

    .line 247
    return-object p0
.end method

.method public blacklist setHandoffEnabled(Z)Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
    .registers 2

    .line 258
    iput-boolean p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mIsHandoffEnabled:Z

    .line 259
    return-object p0
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
    .registers 2

    .line 234
    iput-object p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 235
    return-object p0
.end method

.method public blacklist setLabel(Ljava/lang/String;)Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
    .registers 2

    .line 223
    iput-object p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mLabel:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public blacklist setLastUsedTimestampMillis(J)Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
    .registers 3

    .line 280
    iput-wide p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mLastUsedTimestampMillis:J

    .line 281
    return-object p0
.end method

.method public blacklist setSourceDeviceName(Ljava/lang/String;)Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
    .registers 2

    .line 269
    iput-object p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->mSourceDeviceName:Ljava/lang/String;

    .line 270
    return-object p0
.end method
