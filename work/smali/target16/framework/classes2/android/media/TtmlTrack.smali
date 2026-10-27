.class Landroid/media/TtmlTrack;
.super Landroid/media/SubtitleTrack;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/TtmlNodeListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TtmlTrack"


# instance fields
.field private blacklist mCurrentRunID:Ljava/lang/Long;

.field private final blacklist mParser:Landroid/media/TtmlParser;

.field private blacklist mParsingData:Ljava/lang/String;

.field private final blacklist mRenderingWidget:Landroid/media/TtmlRenderingWidget;

.field private blacklist mRootNode:Landroid/media/TtmlNode;

.field private final blacklist mTimeEvents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTtmlNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/TtmlRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 3

    .line 543
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 533
    new-instance p2, Landroid/media/TtmlParser;

    invoke-direct {p2, p0}, Landroid/media/TtmlParser;-><init>(Landroid/media/TtmlNodeListener;)V

    iput-object p2, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    .line 545
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    .line 546
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    iput-object p2, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    .line 547
    iput-object p1, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    .line 548
    const-string p1, ""

    iput-object p1, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    .line 549
    return-void
.end method

.method private blacklist addTimeEvents(Landroid/media/TtmlNode;)V
    .registers 5

    .line 647
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    iget-wide v1, p1, Landroid/media/TtmlNode;->mStartTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    iget-wide v1, p1, Landroid/media/TtmlNode;->mEndTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 649
    const/4 v0, 0x0

    :goto_17
    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 650
    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/TtmlNode;

    invoke-direct {p0, v1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 652
    :cond_2d
    return-void
.end method

.method private blacklist getActiveNodes(JJ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 657
    iget-object v2, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    .line 658
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 659
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 662
    :cond_22
    return-object v0
.end method


# virtual methods
.method public blacklist getNextResult()Landroid/media/TtmlCue;
    .registers 9

    .line 632
    nop

    :goto_1
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_44

    .line 633
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 634
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 635
    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/TtmlTrack;->getActiveNodes(JJ)Ljava/util/List;

    move-result-object v0

    .line 636
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 637
    new-instance v1, Landroid/media/TtmlCue;

    iget-object v0, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    .line 638
    invoke-static {v0, v2, v3, v4, v5}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    .line 640
    invoke-static {v0, v2, v3, v4, v5}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJ)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/media/TtmlCue;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 637
    return-object v1

    .line 642
    :cond_43
    goto :goto_1

    .line 643
    :cond_44
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 530
    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getRenderingWidget()Landroid/media/TtmlRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRenderingWidget()Landroid/media/TtmlRenderingWidget;
    .registers 2

    .line 553
    iget-object v0, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    return-object v0
.end method

.method public blacklist onData([BZJ)V
    .registers 8

    .line 560
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 563
    iget-object p1, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    monitor-enter p1
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_82

    .line 564
    :try_start_a
    iget-object v1, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_19

    goto :goto_3e

    .line 565
    :cond_19
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

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

    .line 569
    :cond_3e
    :goto_3e
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_7f

    .line 571
    if-eqz p2, :cond_7d

    .line 573
    :try_start_5b
    iget-object p2, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    iget-object v0, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/media/TtmlParser;->parse(Ljava/lang/String;J)V
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_68} :catch_6e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_68} :catch_69
    .catchall {:try_start_5b .. :try_end_68} :catchall_7f

    goto :goto_72

    .line 576
    :catch_69
    move-exception p2

    .line 577
    :try_start_6a
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    .line 574
    :catch_6e
    move-exception p2

    .line 575
    invoke-virtual {p2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 578
    :goto_72
    nop

    .line 579
    :goto_73
    invoke-virtual {p0, p3, p4}, Landroid/media/TtmlTrack;->finishedRun(J)V

    .line 580
    const-string p2, ""

    iput-object p2, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    .line 581
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 583
    :cond_7d
    monitor-exit p1

    .line 586
    goto :goto_9b

    .line 583
    :catchall_7f
    move-exception p2

    monitor-exit p1
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_7f

    :try_start_81
    throw p2
    :try_end_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_81 .. :try_end_82} :catch_82

    .line 584
    :catch_82
    move-exception p1

    .line 585
    const-string p2, "TtmlTrack"

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

    .line 587
    :goto_9b
    return-void
.end method

.method public blacklist onRootNodeParsed(Landroid/media/TtmlNode;)V
    .registers 2

    .line 597
    iput-object p1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    .line 598
    nop

    .line 599
    :goto_3
    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getNextResult()Landroid/media/TtmlCue;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 600
    invoke-virtual {p0, p1}, Landroid/media/TtmlTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    goto :goto_3

    .line 602
    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    .line 603
    iget-object p1, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 604
    iget-object p1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V

    .line 605
    return-void
.end method

.method public blacklist onTtmlNodeParsed(Landroid/media/TtmlNode;)V
    .registers 3

    .line 591
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 592
    invoke-direct {p0, p1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    .line 593
    return-void
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

    .line 609
    const-string v0, "TtmlTrack"

    iget-boolean v1, p0, Landroid/media/TtmlTrack;->mVisible:Z

    if-nez v1, :cond_7

    .line 611
    return-void

    .line 614
    :cond_7
    iget-boolean v1, p0, Landroid/media/TtmlTrack;->DEBUG:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_3d

    .line 616
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 617
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

    .line 616
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_36} :catch_37

    .line 621
    goto :goto_3d

    .line 619
    :catch_37
    move-exception v1

    .line 620
    const-string v1, "at (illegal state) the active cues are:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    invoke-virtual {v0, p1}, Landroid/media/TtmlRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    .line 625
    return-void
.end method
