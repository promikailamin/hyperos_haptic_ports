.class Landroid/media/SRTTrack;
.super Landroid/media/WebVttTrack;
.source "SRTRenderer.java"


# static fields
.field private static final blacklist KEY_LOCAL_SETTING:I = 0x66

.field private static final blacklist KEY_START_TIME:I = 0x7

.field private static final blacklist KEY_STRUCT_TEXT:I = 0x10

.field private static final blacklist MEDIA_TIMED_TEXT:I = 0x63

.field private static final blacklist TAG:Ljava/lang/String; = "SRTTrack"


# instance fields
.field private final blacklist mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 75
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .registers 4

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 80
    iput-object p1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method private static blacklist parseMs(Ljava/lang/String;)J
    .registers 15

    .line 195
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    aget-object v1, v1, v8

    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v8

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 200
    const-wide/16 v10, 0x3c

    mul-long/2addr v3, v10

    mul-long/2addr v3, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v3, v12

    mul-long/2addr v6, v10

    mul-long/2addr v6, v12

    add-long/2addr v3, v6

    mul-long/2addr v1, v12

    add-long/2addr v3, v1

    add-long/2addr v3, v8

    return-wide v3
.end method


# virtual methods
.method protected blacklist onData(Landroid/media/SubtitleData;)V
    .registers 12

    .line 86
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 88
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v5

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 91
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    const-string p1, "\\r?\\n"

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 93
    array-length v1, p1

    new-array v1, v1, [[Landroid/media/TextTrackCueSpan;

    iput-object v1, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 95
    nop

    .line 96
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_35
    if-ge v3, v1, :cond_4f

    aget-object v5, p1, v3

    .line 97
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/media/TextTrackCueSpan;

    new-instance v7, Landroid/media/TextTrackCueSpan;

    const-wide/16 v8, -0x1

    invoke-direct {v7, v5, v8, v9}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v7, v6, v2

    .line 100
    iget-object v5, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v7, v4, 0x1

    aput-object v6, v5, v4

    .line 96
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_35

    .line 103
    :cond_4f
    invoke-virtual {p0, v0}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_52
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_52} :catch_53

    .line 106
    goto :goto_6c

    .line 104
    :catch_53
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SRTTrack"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_6c
    return-void
.end method

.method public blacklist onData([BZJ)V
    .registers 15

    .line 113
    const-string p2, "SRTTrack"

    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "UTF-8"

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 114
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    :goto_13
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 119
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_21

    .line 121
    goto/16 :goto_bb

    .line 124
    :cond_21
    new-instance v1, Landroid/media/TextTrackCue;

    invoke-direct {v1}, Landroid/media/TextTrackCue;-><init>()V

    .line 125
    const-string v2, "-->"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 127
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 128
    iput-wide p3, v1, Landroid/media/TextTrackCue;->mRunID:J

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    :goto_45
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 136
    :cond_5b
    nop

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [[Landroid/media/TextTrackCueSpan;

    iput-object v4, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 138
    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 140
    new-array v6, v3, [Landroid/media/TextTrackCueSpan;

    new-instance v7, Landroid/media/TextTrackCueSpan;

    const-wide/16 v8, -0x1

    invoke-direct {v7, v5, v8, v9}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v7, v6, v2

    .line 143
    iget-object v7, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    aput-object v5, v7, v4

    .line 144
    iget-object v5, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v7, v4, 0x1

    aput-object v6, v5, v4

    .line 145
    move v4, v7

    goto :goto_73

    .line 147
    :cond_96
    invoke-virtual {p0, v1}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_99
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_99} :catch_a4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_99} :catch_9b

    .line 148
    goto/16 :goto_13

    .line 152
    :catch_9b
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc

    .line 150
    :catch_a4
    move-exception p1

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_bb
    :goto_bb
    nop

    .line 156
    :goto_bc
    return-void
.end method

.method public blacklist updateView(Ljava/util/Vector;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Landroid/media/SRTTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 161
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 162
    return-void

    .line 165
    :cond_a
    iget-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 166
    return-void

    .line 169
    :cond_f
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    .line 170
    move-object v2, v1

    check-cast v2, Landroid/media/TextTrackCue;

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 173
    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-wide v4, v1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v1, v4

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v2, v2, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_44
    if-ge v6, v4, :cond_54

    aget-object v7, v2, v6

    .line 180
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 183
    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 184
    array-length v2, v1

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    iget-object v1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 189
    iget-object v2, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    goto :goto_13

    .line 191
    :cond_71
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 192
    return-void
.end method
