.class final Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributionChain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    }
.end annotation


# instance fields
.field mChain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;",
            ">;"
        }
    .end annotation
.end field

.field mExemptPkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

.field mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p1, "exemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 524
    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 527
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    .line 528
    return-void
.end method

.method private getLastVisible()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-lez v0, :cond_20

    .line 549
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 550
    .local v1, "event":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    iget-object v3, v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 551
    return-object v1

    .line 548
    .end local v1    # "event":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 554
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_21

    :cond_18
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x0

    :goto_22
    return-object v0
.end method

.method private isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z
    .registers 4
    .param p1, "event"    # Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 596
    const/4 v0, 0x1

    if-eqz p1, :cond_b

    iget-object v1, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget v1, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z
    .registers 3
    .param p1, "event"    # Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 601
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "opEvent"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 559
    new-instance v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V

    .line 562
    .local v0, "event":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 563
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 564
    .local v2, "item":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    invoke-virtual {v2, v0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->equalsExceptDuration(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 565
    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v3, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_30

    .line 566
    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iput-object v3, v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 568
    :cond_30
    return-void

    .line 562
    .end local v2    # "item":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 572
    .end local v1    # "i":I
    :cond_34
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_9c

    .line 574
    :cond_43
    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 575
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a1

    .line 578
    :cond_50
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_51
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a1

    .line 579
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 580
    .local v2, "currEvent":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v3

    if-nez v3, :cond_73

    iget-object v3, v2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v3, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_83

    :cond_73
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 582
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_89

    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 583
    :cond_83
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 584
    goto :goto_a1

    .line 585
    :cond_89
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_99

    .line 586
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    goto :goto_a1

    .line 578
    .end local v2    # "currEvent":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 573
    .end local v1    # "i":I
    :cond_9c
    :goto_9c
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ad

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-result-object v1

    goto :goto_ae

    :cond_ad
    move-object v1, v2

    :goto_ae
    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 592
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getLastVisible()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-result-object v2

    :cond_ba
    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 593
    return-void
.end method

.method isComplete()Z
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "opEvent"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 536
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    if-eqz v0, :cond_11

    if-nez p5, :cond_7

    goto :goto_11

    .line 539
    :cond_7
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->matches(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result v0

    return v0

    .line 537
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0
.end method
