.class public final synthetic Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

.field public final synthetic f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;IJ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

    iput p3, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget v2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$2:I

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->$r8$lambda$ftseUYZp72LuRZG_8TT9SHpm7Go(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;IJ)V

    return-void
.end method
