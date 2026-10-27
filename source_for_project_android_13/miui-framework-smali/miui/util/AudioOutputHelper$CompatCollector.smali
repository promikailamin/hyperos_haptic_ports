.class final Lmiui/util/AudioOutputHelper$CompatCollector;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"

# interfaces
.implements Lmiui/util/AudioOutputHelper$TrackCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AudioOutputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatCollector"
.end annotation


# static fields
.field public static final blacklist ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final blacklist TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final blacklist TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

.field public static final blacklist TRACK_SESSION_GRP_IDX:I = 0x3

.field public static final blacklist TRACK_STREAM_TYPE_GRP_IDX:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 419
    nop

    .line 420
    const-string v0, "^Output thread 0x[\\w]+ tracks"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    .line 423
    nop

    .line 424
    const-string v0, "^Output thread 0x[\\w]+ active tracks"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    .line 430
    nop

    .line 431
    const-string v0, "^(\\s|F)+\\d+\\s+\\d+\\s+(\\d+)\\s+\\d+\\s+\\w+\\s+(\\d+)\\s.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

    .line 430
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 15
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p4, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p3, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 461
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_65

    .line 462
    sget-object v1, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACK_CONTENT_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 463
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_15

    .line 464
    goto :goto_65

    .line 467
    :cond_15
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 468
    .local v2, "sessionId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 469
    .local v3, "proc":Ljava/lang/Integer;
    if-eqz v3, :cond_64

    .line 470
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 471
    .local v4, "pid":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 472
    .local v5, "streamType":I
    const/4 v6, 0x0

    .line 475
    .local v6, "found":Z
    if-eqz p4, :cond_5a

    .line 476
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .line 477
    .local v8, "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget v9, v8, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    if-ne v9, v2, :cond_59

    .line 478
    iput-boolean p4, v8, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    .line 479
    const/4 v6, 0x1

    .line 481
    .end local v8    # "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    :cond_59
    goto :goto_46

    .line 484
    :cond_5a
    if-nez v6, :cond_64

    .line 485
    new-instance v7, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v7, v2, v4, v5, p4}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "sessionId":I
    .end local v3    # "proc":Ljava/lang/Integer;
    .end local v4    # "pid":I
    .end local v5    # "streamType":I
    .end local v6    # "found":Z
    :cond_64
    goto :goto_1

    .line 490
    :cond_65
    :goto_65
    return-object v0
.end method


# virtual methods
.method public blacklist collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;
    .registers 10
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "currentLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmiui/util/AudioOutputHelper$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    .local p3, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p4, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v0, Lmiui/util/AudioOutputHelper$CompatCollector;->TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 439
    .local v0, "trackMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 441
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 443
    new-instance v1, Lmiui/util/AudioOutputHelper$Result;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, p4, v3}, Lmiui/util/AudioOutputHelper$CompatCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 446
    :cond_1b
    sget-object v1, Lmiui/util/AudioOutputHelper$CompatCollector;->ACTIVE_TRACKS_FINDER_COMPAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 447
    .local v1, "activeTrackMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 449
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 451
    new-instance v3, Lmiui/util/AudioOutputHelper$Result;

    invoke-direct {p0, p1, p3, p4, v2}, Lmiui/util/AudioOutputHelper$CompatCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    return-object v3

    .line 454
    :cond_34
    sget-object v2, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    return-object v2
.end method
