.class final Lmiui/util/AudioOutputHelper$LPCollector;
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
    name = "LPCollector"
.end annotation


# static fields
.field public static final blacklist ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

.field public static final blacklist TRACK_ACTIVE_IDX:I = 0x2

.field public static final blacklist TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

.field public static final blacklist TRACK_SESSION_GRP_IDX:I = 0x4

.field public static final blacklist TRACK_STREAM_TYPE_GRP_IDX:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 363
    nop

    .line 364
    const-string v0, "^[\\s]+[\\d]+[\\s]+Tracks of which [\\d]+ are active"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$LPCollector;->ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

    .line 373
    nop

    .line 374
    const-string v0, "^(\\s|F)+\\d+\\s+(\\w+)\\s+\\d+\\s+(\\d+)\\s+\\d+\\s+\\d+\\s+(\\d+)\\s.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$LPCollector;->TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

    .line 373
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .param p1, "reader"    # Ljava/io/BufferedReader;
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
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p3, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 397
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_53

    .line 398
    sget-object v1, Lmiui/util/AudioOutputHelper$LPCollector;->TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 399
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_15

    .line 400
    goto :goto_53

    .line 402
    :cond_15
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 403
    .local v2, "sessionId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 404
    .local v3, "proc":Ljava/lang/Integer;
    if-eqz v3, :cond_52

    .line 405
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 406
    .local v4, "pid":I
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 407
    .local v5, "streamType":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 408
    .local v6, "active":Z
    new-instance v7, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v7, v2, v4, v5, v6}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "sessionId":I
    .end local v3    # "proc":Ljava/lang/Integer;
    .end local v4    # "pid":I
    .end local v5    # "streamType":I
    .end local v6    # "active":Z
    :cond_52
    goto :goto_1

    .line 412
    :cond_53
    :goto_53
    return-object v0
.end method


# virtual methods
.method public blacklist collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;
    .registers 9
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

    .line 382
    .local p3, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p4, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v0, Lmiui/util/AudioOutputHelper$LPCollector;->ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    .local v0, "trackMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 385
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 387
    new-instance v1, Lmiui/util/AudioOutputHelper$Result;

    const/4 v2, 0x1

    invoke-direct {p0, p1, p3, p4}, Lmiui/util/AudioOutputHelper$LPCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 390
    :cond_1a
    sget-object v1, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    return-object v1
.end method
