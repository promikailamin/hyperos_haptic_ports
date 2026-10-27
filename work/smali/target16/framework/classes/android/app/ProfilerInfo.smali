.class public Landroid/app/ProfilerInfo;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CLOCK_TYPE_DEFAULT:I = 0x0

.field public static final blacklist CLOCK_TYPE_DUAL:I = 0x110

.field public static final blacklist CLOCK_TYPE_THREAD_CPU:I = 0x100

.field public static final blacklist CLOCK_TYPE_WALL:I = 0x10

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OUTPUT_VERSION_DEFAULT:I = 0x1

.field public static final blacklist PROFILE_TYPE_LOW_OVERHEAD:I = 0x1

.field public static final blacklist PROFILE_TYPE_REGULAR:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ProfilerInfo"

.field public static final blacklist TRACE_FORMAT_VERSION_SHIFT:I = 0x1


# instance fields
.field public final greylist-max-o agent:Ljava/lang/String;

.field public final greylist-max-o attachAgentDuringBind:Z

.field public final greylist-max-o autoStopProfiler:Z

.field public final blacklist clockType:I

.field public final blacklist durationMicros:J

.field public greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field public final greylist-max-o profileFile:Ljava/lang/String;

.field public final blacklist profileLongRunningMethods:Z

.field public final blacklist profilerOutputVersion:I

.field public final greylist-max-o samplingInterval:I

.field public final greylist-max-o streamingOutput:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 247
    new-instance v0, Landroid/app/ProfilerInfo$1;

    invoke-direct {v0}, Landroid/app/ProfilerInfo$1;-><init>()V

    sput-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/ProfilerInfo;)V
    .registers 4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 130
    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 131
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 132
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 133
    iget-object v0, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 134
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 135
    iget v0, p1, Landroid/app/ProfilerInfo;->clockType:I

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 136
    iget v0, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 137
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    .line 138
    iget-wide v0, p1, Landroid/app/ProfilerInfo;->durationMicros:J

    iput-wide v0, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    .line 139
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    iput-boolean v1, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    .line 272
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZIIZJ)V
    .registers 13

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 116
    iput p3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 117
    iput-boolean p4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 118
    iput-boolean p5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 119
    iput p8, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 120
    iput-object p6, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 121
    iput-boolean p7, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 122
    iput p9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 123
    iput-boolean p10, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    .line 124
    iput-wide p11, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    .line 125
    return-void
.end method

.method public static blacklist getClockTypeFromString(Ljava/lang/String;)I
    .registers 2

    .line 148
    const-string/jumbo v0, "thread-cpu"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 149
    const/16 p0, 0x100

    return p0

    .line 150
    :cond_c
    const-string/jumbo v0, "wall"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 151
    const/16 p0, 0x10

    return p0

    .line 152
    :cond_18
    const-string v0, "dual"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 153
    const/16 p0, 0x110

    return p0

    .line 155
    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getFlagsForOutputVersion(I)I
    .registers 3

    .line 166
    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    .line 167
    move p0, v0

    .line 172
    :cond_7
    sub-int/2addr p0, v0

    shl-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public greylist-max-o closeFd()V
    .registers 4

    .line 190
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_15

    .line 192
    :try_start_4
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 195
    goto :goto_12

    .line 193
    :catch_a
    move-exception v0

    .line 194
    const-string v1, "ProfilerInfo"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 198
    :cond_15
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    .line 205
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 231
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 232
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 233
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_20

    .line 234
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 236
    :cond_20
    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 237
    const-wide v0, 0x10800000004L

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 238
    const-wide v0, 0x10800000005L

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 239
    const-wide v0, 0x10900000006L

    iget-object v2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 240
    const-wide v0, 0x10500000007L

    iget v2, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 241
    const-wide v0, 0x10500000008L

    iget v2, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 242
    const-wide v0, 0x10800000009L

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 243
    const-wide v0, 0x1030000000aL

    iget-wide v2, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 244
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 245
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 276
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 277
    return v0

    .line 279
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_57

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_57

    .line 282
    :cond_12
    check-cast p1, Landroid/app/ProfilerInfo;

    .line 284
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v3, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    if-ne v2, v3, :cond_55

    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget v3, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    if-ne v2, v3, :cond_55

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget-boolean v3, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    if-ne v2, v3, :cond_55

    iget-object v2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 287
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v2, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v3, p1, Landroid/app/ProfilerInfo;->clockType:I

    if-ne v2, v3, :cond_55

    iget v2, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iget v3, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    if-ne v2, v3, :cond_55

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    iget-boolean v3, p1, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    if-ne v2, v3, :cond_55

    iget-wide v2, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    iget-wide v4, p1, Landroid/app/ProfilerInfo;->durationMicros:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_55

    goto :goto_56

    :cond_55
    move v0, v1

    .line 284
    :goto_56
    return v0

    .line 280
    :cond_57
    :goto_57
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 296
    nop

    .line 297
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 298
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    add-int/2addr v1, v0

    .line 299
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    add-int/2addr v1, v0

    .line 300
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    add-int/2addr v1, v0

    .line 301
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 302
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    add-int/2addr v1, v0

    .line 303
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    add-int/2addr v1, v0

    .line 304
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    add-int/2addr v1, v0

    .line 305
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 306
    return v1
.end method

.method public greylist-max-o setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;
    .registers 16

    .line 180
    new-instance v0, Landroid/app/ProfilerInfo;

    iget-object v1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget v8, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iget-boolean v10, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    iget-wide v11, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZIIZJ)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 211
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_13

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 216
    :cond_13
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    :goto_17
    iget p2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-boolean p2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-boolean p2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object p2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-boolean p2, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    iget p2, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget p2, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-boolean p2, p0, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    iget-wide v0, p0, Landroid/app/ProfilerInfo;->durationMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    return-void
.end method
