.class public final synthetic Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-boolean p3, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->$r8$lambda$TbVq-rPb0eNZK1HOqsqbAEQw934(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;ZZ)V

    return-void
.end method
