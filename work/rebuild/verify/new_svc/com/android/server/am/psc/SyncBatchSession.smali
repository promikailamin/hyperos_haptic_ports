.class public Lcom/android/server/am/psc/SyncBatchSession;
.super Lcom/android/server/am/psc/BatchSession;
.source "SyncBatchSession.java"


# instance fields
.field public mFullUpdate:Z

.field public final mFullUpdateRunnable:Ljava/util/function/IntConsumer;

.field public mOutOfBoundsSetFullUpdateWtfArmed:Z

.field public final mPartialUpdateRunnable:Ljava/util/function/IntConsumer;


# direct methods
.method public constructor <init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/android/server/am/psc/BatchSession;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mFullUpdate:Z

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mOutOfBoundsSetFullUpdateWtfArmed:Z

    .line 37
    iput-object p1, p0, Lcom/android/server/am/psc/SyncBatchSession;->mFullUpdateRunnable:Ljava/util/function/IntConsumer;

    .line 38
    iput-object p2, p0, Lcom/android/server/am/psc/SyncBatchSession;->mPartialUpdateRunnable:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mFullUpdate:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mFullUpdate:Z

    .line 59
    iget-object v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mFullUpdateRunnable:Ljava/util/function/IntConsumer;

    iget p0, p0, Lcom/android/server/am/psc/BatchSession;->mUpdateReason:I

    invoke-interface {v0, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void

    .line 62
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mPartialUpdateRunnable:Ljava/util/function/IntConsumer;

    iget p0, p0, Lcom/android/server/am/psc/BatchSession;->mUpdateReason:I

    invoke-interface {v0, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public setFullUpdate()V
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_15

    .line 45
    iget-boolean v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mOutOfBoundsSetFullUpdateWtfArmed:Z

    if-eqz v0, :cond_14

    .line 46
    const-string v0, "SyncBatchSession"

    const-string v1, "Unexpected setFullUpdate called while session is not active"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mOutOfBoundsSetFullUpdateWtfArmed:Z

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/server/am/psc/SyncBatchSession;->mFullUpdate:Z

    return-void
.end method
