.class public final Lcom/android/server/inputmethod/ImeTrackerService$History;
.super Ljava/lang/Object;
.source "ImeTrackerService.java"


# static fields
.field static final ACTIVE_CAPACITY:I = 0x3e8


# instance fields
.field public final mActiveEntries:Ljava/util/HashMap;

.field public final mCompletedEntries:Ljava/util/LinkedHashMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveEntries(Lcom/android/server/inputmethod/ImeTrackerService$History;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Lcom/android/server/inputmethod/ImeTrackerService$History$1;

    const/16 v1, 0xc8

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$History$1;-><init>(Lcom/android/server/inputmethod/ImeTrackerService$History;I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mCompletedEntries:Ljava/util/LinkedHashMap;

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public activeEntries()Ljava/util/Collection;
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public complete(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 6

    .line 496
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mCompletedEntries:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 526
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 527
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveEntries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "  "

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V

    goto :goto_3d

    .line 535
    :cond_5e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCompletedEntries: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mCompletedEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mCompletedEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_88
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V

    goto :goto_88

    :cond_a7
    return-void
.end method

.method public getActive(J)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;
    .registers 3

    .line 477
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    return-object p0
.end method

.method public isActiveFull()Z
    .registers 2

    .line 515
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isCompleted(J)Z
    .registers 3

    .line 509
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mCompletedEntries:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public putActive(JLcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V
    .registers 4

    .line 465
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mActiveEntries:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
