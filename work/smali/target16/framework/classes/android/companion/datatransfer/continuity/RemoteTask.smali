.class public final Landroid/companion/datatransfer/continuity/RemoteTask;
.super Ljava/lang/Object;
.source "RemoteTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/datatransfer/continuity/RemoteTask$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/datatransfer/continuity/RemoteTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDeviceId:I

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mId:I

.field private final blacklist mIsHandoffEnabled:Z

.field private final blacklist mLabel:Ljava/lang/String;

.field private final blacklist mLastUsedTimestampMillis:J

.field private final blacklist mSourceDeviceName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/companion/datatransfer/continuity/RemoteTask$1;

    invoke-direct {v0}, Landroid/companion/datatransfer/continuity/RemoteTask$1;-><init>()V

    sput-object v0, Landroid/companion/datatransfer/continuity/RemoteTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->-$$Nest$fgetmId(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)I

    move-result v0

    iput v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mId:I

    .line 66
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->-$$Nest$fgetmDeviceId(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)I

    move-result v0

    iput v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mDeviceId:I

    .line 67
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->-$$Nest$fgetmLabel(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLabel:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->-$$Nest$fgetmIcon(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    .line 69
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->-$$Nest$fgetmIsHandoffEnabled(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIsHandoffEnabled:Z

    .line 70
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->-$$Nest$fgetmSourceDeviceName(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mSourceDeviceName:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/RemoteTask$Builder;->-$$Nest$fgetmLastUsedTimestampMillis(Landroid/companion/datatransfer/continuity/RemoteTask$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLastUsedTimestampMillis:J

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mId:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mDeviceId:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLabel:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIsHandoffEnabled:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mSourceDeviceName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLastUsedTimestampMillis:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 82
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_41

    .line 84
    :cond_3e
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    .line 86
    :goto_41
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 165
    instance-of v0, p1, Landroid/companion/datatransfer/continuity/RemoteTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 166
    check-cast p1, Landroid/companion/datatransfer/continuity/RemoteTask;

    .line 167
    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mId:I

    iget v2, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mId:I

    if-ne v0, v2, :cond_4a

    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mDeviceId:I

    iget v2, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mDeviceId:I

    if-ne v0, v2, :cond_4a

    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mLabel:Ljava/lang/String;

    .line 169
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_4a

    goto :goto_30

    :cond_26
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    .line 170
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :goto_30
    iget-boolean v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIsHandoffEnabled:Z

    iget-boolean v2, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mIsHandoffEnabled:Z

    if-ne v0, v2, :cond_4a

    iget-wide v2, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLastUsedTimestampMillis:J

    iget-wide v4, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mLastUsedTimestampMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4a

    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mSourceDeviceName:Ljava/lang/String;

    iget-object p1, p1, Landroid/companion/datatransfer/continuity/RemoteTask;->mSourceDeviceName:Ljava/lang/String;

    .line 173
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    nop

    .line 167
    :goto_4b
    return v1

    .line 176
    :cond_4c
    return v1
.end method

.method public blacklist getDeviceId()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mDeviceId:I

    return v0
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mId:I

    return v0
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLastUsedTimestampMillis()J
    .registers 3

    .line 143
    iget-wide v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLastUsedTimestampMillis:J

    return-wide v0
.end method

.method public blacklist getSourceDeviceName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mSourceDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 153
    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mId:I

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mDeviceId:I

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    iget-boolean v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIsHandoffEnabled:Z

    .line 158
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mSourceDeviceName:Ljava/lang/String;

    iget-wide v7, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLastUsedTimestampMillis:J

    .line 160
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHandoffEnabled()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIsHandoffEnabled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 181
    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIsHandoffEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mSourceDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-wide v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mLastUsedTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2c

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/RemoteTask;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_30

    .line 191
    :cond_2c
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    :goto_30
    return-void
.end method
