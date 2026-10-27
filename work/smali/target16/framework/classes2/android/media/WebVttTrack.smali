.class Landroid/media/WebVttTrack;
.super Landroid/media/SubtitleTrack;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttCueListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WebVttTrack"


# instance fields
.field private blacklist mCurrentRunID:Ljava/lang/Long;

.field private final blacklist mExtractor:Landroid/media/UnstyledTextExtractor;

.field private final blacklist mParser:Landroid/media/WebVttParser;

.field private final blacklist mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/TextTrackRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRenderingWidget:Landroid/media/WebVttRenderingWidget;

.field private final blacklist mTimestamps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTokenizer:Landroid/media/Tokenizer;


# direct methods
.method constructor blacklist <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 4

    .line 997
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 985
    new-instance p2, Landroid/media/WebVttParser;

    invoke-direct {p2, p0}, Landroid/media/WebVttParser;-><init>(Landroid/media/WebVttCueListener;)V

    iput-object p2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 986
    new-instance p2, Landroid/media/UnstyledTextExtractor;

    invoke-direct {p2}, Landroid/media/UnstyledTextExtractor;-><init>()V

    iput-object p2, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    .line 988
    new-instance p2, Landroid/media/Tokenizer;

    iget-object v0, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-direct {p2, v0}, Landroid/media/Tokenizer;-><init>(Landroid/media/Tokenizer$OnTokenListener;)V

    iput-object p2, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    .line 989
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 992
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 999
    iput-object p1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 1000
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 982
    invoke-virtual {p0}, Landroid/media/WebVttTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRenderingWidget()Landroid/media/WebVttRenderingWidget;
    .registers 2

    .line 1004
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    return-object v0
.end method

.method public blacklist onCueParsed(Landroid/media/TextTrackCue;)V
    .registers 15

    .line 1035
    iget-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v0

    .line 1037
    :try_start_3
    iget-object v1, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    .line 1038
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iget-object v2, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/TextTrackRegion;

    iput-object v1, p1, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1041
    :cond_17
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding cue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_33
    iget-object v1, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v1}, Landroid/media/Tokenizer;->reset()V

    .line 1045
    iget-object v1, p1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_3d
    if-ge v4, v2, :cond_49

    aget-object v5, v1, v4

    .line 1046
    iget-object v6, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v6, v5}, Landroid/media/Tokenizer;->tokenize(Ljava/lang/String;)V

    .line 1045
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 1048
    :cond_49
    iget-object v1, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-virtual {v1}, Landroid/media/UnstyledTextExtractor;->getText()[[Landroid/media/TextTrackCueSpan;

    move-result-object v1

    iput-object v1, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1049
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v1, :cond_71

    const-string v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    invoke-virtual {p1, v2}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " simplified to: "

    .line 1051
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1049
    invoke-virtual {p1, v2}, Landroid/media/TextTrackCue;->appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1052
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_71
    iget-object v1, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v2, v1

    move v4, v3

    :goto_75
    if-ge v4, v2, :cond_ae

    aget-object v5, v1, v4

    .line 1056
    array-length v6, v5

    move v7, v3

    :goto_7b
    if-ge v7, v6, :cond_ab

    aget-object v8, v5, v7

    .line 1057
    iget-wide v9, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v11, p1, Landroid/media/TextTrackCue;->mStartTimeMs:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_a8

    iget-wide v9, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v11, p1, Landroid/media/TextTrackCue;->mEndTimeMs:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_a8

    iget-object v9, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v10, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 1059
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a8

    .line 1060
    iget-object v9, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v10, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1056
    :cond_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 1055
    :cond_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 1065
    :cond_ae
    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_e2

    .line 1066
    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    .line 1067
    nop

    :goto_c1
    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_dc

    .line 1068
    iget-object v1, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    iget-object v2, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 1067
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 1070
    :cond_dc
    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_e5

    .line 1072
    :cond_e2
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    .line 1075
    :goto_e5
    iget-object v1, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/media/TextTrackCue;->mRunID:J

    .line 1076
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_f2

    .line 1078
    invoke-virtual {p0, p1}, Landroid/media/WebVttTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 1079
    return-void

    .line 1076
    :catchall_f2
    move-exception p1

    :try_start_f3
    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw p1
.end method

.method public blacklist onData([BZJ)V
    .registers 8

    .line 1010
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1013
    iget-object p1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter p1
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_60

    .line 1014
    :try_start_a
    iget-object v1, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_19

    goto :goto_3e

    .line 1015
    :cond_19
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in progress.  Cannot process run #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1019
    :cond_3e
    :goto_3e
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1020
    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v1, v0}, Landroid/media/WebVttParser;->parse(Ljava/lang/String;)V

    .line 1021
    if-eqz p2, :cond_5b

    .line 1022
    invoke-virtual {p0, p3, p4}, Landroid/media/WebVttTrack;->finishedRun(J)V

    .line 1023
    iget-object p2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {p2}, Landroid/media/WebVttParser;->eos()V

    .line 1024
    iget-object p2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 1025
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1027
    :cond_5b
    monitor-exit p1

    .line 1030
    goto :goto_79

    .line 1027
    :catchall_5d
    move-exception p2

    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_a .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw p2
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5f .. :try_end_60} :catch_60

    .line 1028
    :catch_60
    move-exception p1

    .line 1029
    const-string p2, "WebVttTrack"

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

    .line 1031
    :goto_79
    return-void
.end method

.method public blacklist onRegionParsed(Landroid/media/TextTrackRegion;)V
    .registers 5

    .line 1083
    iget-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v0

    .line 1084
    :try_start_3
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iget-object v2, p1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public blacklist updateView(Ljava/util/Vector;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 1090
    const-string v0, "WebVttTrack"

    iget-boolean v1, p0, Landroid/media/WebVttTrack;->mVisible:Z

    if-nez v1, :cond_7

    .line 1092
    return-void

    .line 1095
    :cond_7
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_3d

    .line 1097
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 1098
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms the active cues are:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_36} :catch_37

    .line 1102
    goto :goto_3d

    .line 1100
    :catch_37
    move-exception v1

    .line 1101
    const-string v1, "at (illegal state) the active cues are:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-eqz v0, :cond_46

    .line 1106
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-virtual {v0, p1}, Landroid/media/WebVttRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    .line 1108
    :cond_46
    return-void
.end method
