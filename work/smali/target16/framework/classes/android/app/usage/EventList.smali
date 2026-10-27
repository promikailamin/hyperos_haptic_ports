.class public Landroid/app/usage/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# instance fields
.field private final greylist-max-o mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    return-void
.end method

.method public greylist-max-o firstIndexOnOrAfter(J)I
    .registers 9

    .line 105
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 106
    nop

    .line 107
    nop

    .line 108
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 109
    :goto_b
    if-gt v2, v1, :cond_28

    .line 110
    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 111
    iget-object v4, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    iget-wide v4, v4, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 112
    cmp-long v4, v4, p1

    if-ltz v4, :cond_24

    .line 113
    add-int/lit8 v0, v3, -0x1

    .line 114
    move v1, v0

    move v0, v3

    goto :goto_27

    .line 116
    :cond_24
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 118
    :goto_27
    goto :goto_b

    .line 119
    :cond_28
    return v0
.end method

.method public greylist-max-o get(I)Landroid/app/usage/UsageEvents$Event;
    .registers 3

    .line 59
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    return-object p1
.end method

.method public greylist-max-o insert(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7

    .line 69
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    if-eqz v0, :cond_2a

    iget-wide v1, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v3, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    iget-wide v3, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1b

    goto :goto_2a

    .line 77
    :cond_1b
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 78
    iget-object v1, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    return-void

    .line 72
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public blacklist merge(Landroid/app/usage/EventList;)V
    .registers 5

    .line 130
    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result v0

    .line 131
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 132
    invoke-virtual {p1, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 134
    :cond_11
    return-void
.end method

.method public blacklist remove(I)Landroid/app/usage/UsageEvents$Event;
    .registers 3

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageEvents$Event;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 90
    :catch_9
    move-exception p1

    .line 92
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
