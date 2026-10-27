.class public final Landroid/app/usage/ParcelableUsageEventList;
.super Ljava/lang/Object;
.source "ParcelableUsageEventList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/ParcelableUsageEventList;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_ALL:Z = false

.field private static final blacklist MAX_IPC_SIZE:I

.field private static final blacklist TAG:Ljava/lang/String; = "ParcelableUsageEventList"


# instance fields
.field private blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmList(Landroid/app/usage/ParcelableUsageEventList;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmList(Landroid/app/usage/ParcelableUsageEventList;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteEventToParcel(Landroid/app/usage/ParcelableUsageEventList;Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/usage/ParcelableUsageEventList;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Landroid/app/usage/ParcelableUsageEventList;->MAX_IPC_SIZE:I

    .line 196
    new-instance v0, Landroid/app/usage/ParcelableUsageEventList$2;

    invoke-direct {v0}, Landroid/app/usage/ParcelableUsageEventList$2;-><init>()V

    sput-object v0, Landroid/app/usage/ParcelableUsageEventList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    .line 62
    if-gtz v0, :cond_11

    .line 63
    return-void

    .line 66
    :cond_11
    const/4 v1, 0x0

    move v2, v1

    .line 67
    :goto_13
    if-ge v2, v0, :cond_28

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1c

    .line 69
    goto :goto_28

    .line 71
    :cond_1c
    iget-object v3, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/app/usage/ParcelableUsageEventList;->readEventFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 79
    :cond_28
    :goto_28
    if-lt v2, v0, :cond_2b

    .line 80
    return-void

    .line 82
    :cond_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 83
    :goto_2f
    if-ge v2, v0, :cond_8d

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 87
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v5, 0x1

    :try_start_3d
    invoke-interface {p1, v5, v3, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 90
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 91
    nop

    .line 92
    :goto_44
    if-ge v2, v0, :cond_58

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    .line 93
    iget-object v5, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    invoke-direct {p0, v4}, Landroid/app/usage/ParcelableUsageEventList;->readEventFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_55} :catch_62
    .catchall {:try_start_3d .. :try_end_55} :catchall_60

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_44

    .line 105
    :cond_58
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 107
    nop

    .line 108
    goto :goto_2f

    .line 105
    :catchall_60
    move-exception p1

    goto :goto_86

    .line 101
    :catch_62
    move-exception p1

    .line 102
    :try_start_63
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure retrieving array; only received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_86
    .catchall {:try_start_63 .. :try_end_86} :catchall_60

    .line 105
    :goto_86
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw p1

    .line 110
    :cond_8d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/usage/ParcelableUsageEventList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/usage/ParcelableUsageEventList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_8

    .line 55
    iput-object p1, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    .line 56
    return-void

    .line 53
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty list"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist readEventFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageEvents$Event;
    .registers 5

    .line 209
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 219
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 220
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 221
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 222
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 223
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 224
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 225
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 226
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 228
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v1, :sswitch_data_9c

    goto :goto_95

    .line 240
    :sswitch_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_95

    .line 239
    :sswitch_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_95

    .line 238
    :sswitch_54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_95

    .line 234
    :sswitch_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 237
    goto :goto_95

    .line 232
    :sswitch_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_95

    .line 242
    :sswitch_75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_95

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_95

    .line 230
    :sswitch_8a
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 231
    nop

    .line 247
    :cond_95
    :goto_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 249
    return-object v0

    :sswitch_data_9c
    .sparse-switch
        0x5 -> :sswitch_8a
        0x7 -> :sswitch_75
        0x8 -> :sswitch_6e
        0x9 -> :sswitch_5b
        0xb -> :sswitch_54
        0xc -> :sswitch_4d
        0x1e -> :sswitch_46
    .end sparse-switch
.end method

.method private blacklist writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .registers 6

    .line 253
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v0, :sswitch_data_70

    goto :goto_69

    .line 271
    :sswitch_29
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_69

    .line 270
    :sswitch_2f
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_69

    .line 269
    :sswitch_35
    iget p3, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69

    .line 265
    :sswitch_3b
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 268
    goto :goto_69

    .line 263
    :sswitch_4b
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_69

    .line 273
    :sswitch_51
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz p3, :cond_5f

    .line 274
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object p3, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    goto :goto_69

    .line 277
    :cond_5f
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69

    .line 262
    :sswitch_64
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2, p3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 281
    :goto_69
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    return-void

    nop

    :sswitch_data_70
    .sparse-switch
        0x5 -> :sswitch_64
        0x7 -> :sswitch_51
        0x8 -> :sswitch_4b
        0x9 -> :sswitch_3b
        0xb -> :sswitch_35
        0xc -> :sswitch_2f
        0x1e -> :sswitch_29
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 119
    iget-object v0, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    nop

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    if-lez v0, :cond_37

    .line 124
    const/4 v1, 0x0

    move v2, v1

    .line 125
    :goto_e
    if-ge v2, v0, :cond_2a

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    sget v4, Landroid/app/usage/ParcelableUsageEventList;->MAX_IPC_SIZE:I

    if-ge v3, v4, :cond_2a

    .line 126
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v3, p0, Landroid/app/usage/ParcelableUsageEventList;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageEvents$Event;

    .line 129
    invoke-direct {p0, v3, p1, p2}, Landroid/app/usage/ParcelableUsageEventList;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    goto :goto_e

    .line 134
    :cond_2a
    if-ge v2, v0, :cond_37

    .line 135
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    new-instance v1, Landroid/app/usage/ParcelableUsageEventList$1;

    invoke-direct {v1, p0, v0, p2}, Landroid/app/usage/ParcelableUsageEventList$1;-><init>(Landroid/app/usage/ParcelableUsageEventList;II)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 190
    :cond_37
    return-void
.end method
