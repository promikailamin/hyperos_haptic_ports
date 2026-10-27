.class public final Lcom/android/server/dreams/DreamManagerService$LocalService;
.super Landroid/service/dreams/DreamManagerInternal;
.source "DreamManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 1536
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/DreamManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public canStartDreaming(Z)Z
    .registers 2

    .line 1554
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->canStartDreamingInternal(Z)Z

    move-result p0

    return p0
.end method

.method public dreamConditionActive()Z
    .registers 1

    .line 1559
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->dreamConditionActiveInternal()Z

    move-result p0

    return p0
.end method

.method public isDreaming()Z
    .registers 1

    .line 1549
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$misDreamingInternal(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result p0

    return p0
.end method

.method public registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .registers 3

    .line 1569
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmDreamManagerStateListeners(Lcom/android/server/dreams/DreamManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mshouldKeepDreamingWhenUnplugging(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onKeepDreamingWhenUnpluggingChanged(Z)V

    return-void
.end method

.method public requestDream()V
    .registers 1

    .line 1564
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mrequestDreamInternal(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method

.method public startDream(ZLjava/lang/String;)V
    .registers 3

    .line 1539
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(ZLjava/lang/String;)V

    return-void
.end method

.method public stopDream(ZLjava/lang/String;)V
    .registers 3

    .line 1544
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(ZLjava/lang/String;)V

    return-void
.end method

.method public unregisterDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .registers 2

    .line 1576
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmDreamManagerStateListeners(Lcom/android/server/dreams/DreamManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
