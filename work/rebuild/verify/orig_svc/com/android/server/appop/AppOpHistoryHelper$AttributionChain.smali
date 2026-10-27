.class public Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;
.super Ljava/lang/Object;
.source "AppOpHistoryHelper.java"


# instance fields
.field public mChain:Ljava/util/List;

.field public mExemptPkgs:Ljava/util/Set;

.field public mLastVisibleEvent:Lcom/android/server/appop/AggregatedAppOpAccessEvent;

.field public mStartEvent:Lcom/android/server/appop/AggregatedAppOpAccessEvent;


# direct methods
.method public static bridge synthetic -$$Nest$misStart(Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isStart(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    const/4 v0, 0x0

    .line 929
    iput-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mStartEvent:Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 930
    iput-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 933
    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 988
    :goto_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1d

    .line 989
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 990
    invoke-virtual {p0, v2, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->equalsExceptDuration(Lcom/android/server/appop/AggregatedAppOpAccessEvent;Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    move-object v2, v3

    :goto_1e
    if-eqz v2, :cond_40

    .line 998
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3f

    .line 999
    invoke-virtual {v2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_39

    goto :goto_3f

    .line 1002
    :cond_39
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_3f
    :goto_3f
    return-void

    .line 1005
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a6

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isEnd(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_a6

    .line 1007
    :cond_4f
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isStart(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1008
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_ab

    .line 1010
    :cond_5b
    :goto_5b
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_ab

    .line 1011
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 1012
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isStart(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 1013
    invoke-virtual {v1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gtz v2, :cond_8d

    :cond_7d
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    .line 1014
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_93

    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isEnd(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1015
    :cond_8d
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_ab

    .line 1017
    :cond_93
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_a3

    .line 1018
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 1006
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_ab
    :goto_ab
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->getStart()Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    move-result-object p1

    goto :goto_b7

    :cond_b6
    move-object p1, v3

    :goto_b7
    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mStartEvent:Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_c3

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->getLastVisible()Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    move-result-object v3

    :cond_c3
    iput-object v3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    return-void
.end method

.method public equalsExceptDuration(Lcom/android/server/appop/AggregatedAppOpAccessEvent;Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z
    .registers 9

    .line 967
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_c

    return v1

    .line 968
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v0

    if-eq p0, v0, :cond_17

    return v1

    .line 969
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v0

    if-eq p0, v0, :cond_22

    return v1

    .line 970
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags()I

    move-result v0

    if-eq p0, v0, :cond_2d

    return v1

    .line 971
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v0

    if-eq p0, v0, :cond_38

    return v1

    .line 972
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-eqz p0, :cond_45

    return v1

    .line 973
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    return v1

    .line 976
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    return v1

    .line 979
    :cond_63
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    return v1

    .line 982
    :cond_72
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-nez p0, :cond_80

    const/4 p0, 0x1

    return p0

    :cond_80
    return v1
.end method

.method public getLastVisible()Lcom/android/server/appop/AggregatedAppOpAccessEvent;
    .registers 5

    .line 956
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-lez v0, :cond_22

    .line 957
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 958
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStart()Lcom/android/server/appop/AggregatedAppOpAccessEvent;
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isStart(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_21

    :cond_18
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    return-object p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public isComplete()Z
    .registers 4

    .line 937
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->getStart()Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpHistoryHelper$AttributionChain;->isEnd(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v2

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnd(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z
    .registers 2

    if-eqz p1, :cond_b

    .line 946
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags()I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    return p1

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final isStart(Lcom/android/server/appop/AggregatedAppOpAccessEvent;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 951
    invoke-virtual {p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
