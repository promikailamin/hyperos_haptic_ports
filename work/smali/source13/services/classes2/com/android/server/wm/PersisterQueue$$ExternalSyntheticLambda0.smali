.class public final synthetic Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    check-cast p1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-interface {v0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z

    move-result p1

    return p1
.end method
