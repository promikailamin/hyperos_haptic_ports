.class public final synthetic Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

.field public final synthetic f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

    iput-boolean p3, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->$r8$lambda$3ds7ExH1FVc_51TaNfNOIO2SgwI(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    return-void
.end method
