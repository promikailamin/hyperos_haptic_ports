.class public final Landroid/os/statistics/FilteringPerfEventList;
.super Landroid/os/statistics/FilteringPerfEventListNode;
.source "FilteringPerfEventList.java"


# instance fields
.field public blacklist size:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Landroid/os/statistics/FilteringPerfEventListNode;-><init>()V

    .line 10
    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 11
    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 13
    return-void
.end method


# virtual methods
.method public final blacklist addAfter(Landroid/os/statistics/FilteringPerfEventListNode;Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4
    .param p1, "pos"    # Landroid/os/statistics/FilteringPerfEventListNode;
    .param p2, "item"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 31
    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 32
    iget-object v0, p1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 33
    .local v0, "next":Landroid/os/statistics/FilteringPerfEventListNode;
    iput-object v0, p2, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 34
    iput-object p1, p2, Landroid/os/statistics/FilteringPerfEvent;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 35
    iput-object p2, p1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 36
    iput-object p2, v0, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 37
    return-void
.end method

.method public final blacklist addLast(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4
    .param p1, "item"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 22
    iget-object v0, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 23
    .local v0, "last":Landroid/os/statistics/FilteringPerfEventListNode;
    iget v1, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 24
    iput-object p0, p1, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 25
    iput-object v0, p1, Landroid/os/statistics/FilteringPerfEvent;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 26
    iput-object p1, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 27
    iput-object p1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 28
    return-void
.end method

.method public blacklist detachElements()V
    .registers 2

    .line 16
    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 17
    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 19
    return-void
.end method

.method public final blacklist moveAllFrom(Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 6
    .param p1, "srcList"    # Landroid/os/statistics/FilteringPerfEventList;

    .line 70
    iget v0, p1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 71
    .local v0, "srcSize":I
    if-lez v0, :cond_1a

    .line 72
    iget-object v1, p1, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 73
    .local v1, "srcFirst":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v2, p1, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 74
    .local v2, "srcLast":Landroid/os/statistics/FilteringPerfEventListNode;
    invoke-virtual {p1}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    .line 76
    iget v3, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 77
    iget-object v3, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 78
    .local v3, "curLast":Landroid/os/statistics/FilteringPerfEventListNode;
    iput-object v1, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 79
    iput-object v3, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 80
    iput-object v2, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 81
    iput-object p0, v2, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 83
    .end local v1    # "srcFirst":Landroid/os/statistics/FilteringPerfEventListNode;
    .end local v2    # "srcLast":Landroid/os/statistics/FilteringPerfEventListNode;
    .end local v3    # "curLast":Landroid/os/statistics/FilteringPerfEventListNode;
    :cond_1a
    return-void
.end method

.method public final blacklist pollFirst()Landroid/os/statistics/FilteringPerfEvent;
    .registers 4

    .line 48
    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v0, :cond_13

    .line 49
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 50
    iget-object v0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 51
    .local v0, "item":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 52
    .local v1, "next":Landroid/os/statistics/FilteringPerfEventListNode;
    iput-object v1, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 53
    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 54
    iget-object v2, v0, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    return-object v2

    .line 56
    .end local v0    # "item":Landroid/os/statistics/FilteringPerfEventListNode;
    .end local v1    # "next":Landroid/os/statistics/FilteringPerfEventListNode;
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist pollFirstUnchecked()Landroid/os/statistics/FilteringPerfEvent;
    .registers 4

    .line 61
    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 62
    iget-object v0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 63
    .local v0, "item":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 64
    .local v1, "next":Landroid/os/statistics/FilteringPerfEventListNode;
    iput-object v1, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 65
    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 66
    iget-object v2, v0, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    return-object v2
.end method

.method public final blacklist remove(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4
    .param p1, "item"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 40
    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    .line 41
    iget-object v0, p1, Landroid/os/statistics/FilteringPerfEvent;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 42
    .local v0, "previous":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v1, p1, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 43
    .local v1, "next":Landroid/os/statistics/FilteringPerfEventListNode;
    iput-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 44
    iput-object v0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 45
    return-void
.end method
