.class public Landroid/media/MiuiAudioRecord;
.super Landroid/media/IMiuiAudioRecord$Stub;
.source "MiuiAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MiuiAudioRecord$AudioRecordClient;,
        Landroid/media/MiuiAudioRecord$AudioInfo;,
        Landroid/media/MiuiAudioRecord$MetaData;
    }
.end annotation


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

.field private blacklist mNativeAudioRecordInJavaObj:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-string v0, "MiuiAudioRecord"

    sput-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "exmedia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;J)V
    .registers 6
    .param p1, "sharedMem"    # Ljava/io/FileDescriptor;
    .param p2, "size"    # J

    .line 52
    invoke-direct {p0}, Landroid/media/IMiuiAudioRecord$Stub;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiuiAudioRecord;->native_setup(Ljava/io/FileDescriptor;J)Z

    move-result v0

    if-nez v0, :cond_13

    .line 54
    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v1, "init MiuiAudioRecord fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_13
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;JLandroid/os/IBinder;)V
    .registers 7
    .param p1, "sharedMem"    # Ljava/io/FileDescriptor;
    .param p2, "size"    # J
    .param p4, "cb"    # Landroid/os/IBinder;

    .line 58
    invoke-direct {p0}, Landroid/media/IMiuiAudioRecord$Stub;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiuiAudioRecord;->native_setup(Ljava/io/FileDescriptor;J)Z

    move-result v0

    if-nez v0, :cond_13

    .line 60
    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v1, "init MiuiAudioRecord fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_13
    new-instance v0, Landroid/media/MiuiAudioRecord$AudioRecordClient;

    invoke-direct {v0, p0, p4}, Landroid/media/MiuiAudioRecord$AudioRecordClient;-><init>(Landroid/media/MiuiAudioRecord;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    .line 63
    return-void
.end method

.method private final native blacklist native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z
.end method

.method private final native blacklist native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z
.end method

.method private final native blacklist native_setup(Ljava/io/FileDescriptor;J)Z
.end method

.method private final native blacklist native_start(J)Z
.end method

.method private final native blacklist native_stop()Z
.end method


# virtual methods
.method public blacklist fillBuffer(II)Landroid/os/Bundle;
    .registers 8
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 98
    new-instance v0, Landroid/media/MiuiAudioRecord$AudioInfo;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$AudioInfo;-><init>(Landroid/media/MiuiAudioRecord;)V

    .line 99
    .local v0, "audioInfo":Landroid/media/MiuiAudioRecord$AudioInfo;
    invoke-direct {p0, v0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z

    move-result v1

    if-nez v1, :cond_14

    .line 100
    sget-object v1, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v2, "fillBuffer fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "ret":Landroid/os/Bundle;
    iget-wide v2, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->timeUs:J

    const-string v4, "presentationTimeUs"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    iget-wide v2, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->size:J

    const-string v4, "size"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 106
    return-object v1
.end method

.method public blacklist getMetaData()Landroid/os/Bundle;
    .registers 5

    .line 111
    new-instance v0, Landroid/media/MiuiAudioRecord$MetaData;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$MetaData;-><init>(Landroid/media/MiuiAudioRecord;)V

    .line 112
    .local v0, "meta":Landroid/media/MiuiAudioRecord$MetaData;
    invoke-direct {p0, v0}, Landroid/media/MiuiAudioRecord;->native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 113
    sget-object v1, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v2, "getMetaData fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x0

    return-object v1

    .line 116
    :cond_14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v1, "ret":Landroid/os/Bundle;
    iget v2, v0, Landroid/media/MiuiAudioRecord$MetaData;->sampleRate:I

    const-string v3, "sample-rate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    iget v2, v0, Landroid/media/MiuiAudioRecord$MetaData;->channelCount:I

    const-string v3, "channel-count"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    return-object v1
.end method

.method public blacklist start(J)Z
    .registers 4
    .param p1, "startTimeUs"    # J

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_start(J)Z

    move-result v0

    return v0
.end method

.method public blacklist stop()Z
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {v0}, Landroid/media/MiuiAudioRecord$AudioRecordClient;->release()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    .line 133
    :cond_a
    invoke-direct {p0}, Landroid/media/MiuiAudioRecord;->native_stop()Z

    move-result v0

    return v0
.end method
