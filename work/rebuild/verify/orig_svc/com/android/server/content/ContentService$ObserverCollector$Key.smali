.class public Lcom/android/server/content/ContentService$ObserverCollector$Key;
.super Ljava/lang/Object;
.source "ContentService.java"


# instance fields
.field public final flags:I

.field public final observer:Landroid/database/IContentObserver;

.field public final selfChange:Z

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/database/IContentObserver;IZII)V
    .registers 6

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 546
    iput p2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 547
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 548
    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 549
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 554
    instance-of v0, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 557
    :cond_6
    check-cast p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 558
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    iget-object v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    iget v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    if-ne v0, v2, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    iget-boolean v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    if-ne v0, v2, :cond_2c

    iget v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    iget v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    if-ne v0, v2, :cond_2c

    iget p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    iget p1, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    if-ne p0, p1, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 567
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    iget v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
