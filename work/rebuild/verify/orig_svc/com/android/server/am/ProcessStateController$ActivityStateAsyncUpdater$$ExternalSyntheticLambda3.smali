.class public final synthetic Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

.field public final synthetic f$1:Lcom/android/server/am/psc/ProcessRecordInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-static {v0, p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->$r8$lambda$1976lRztlr3DMI0TePV_MFCQeo4(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method
