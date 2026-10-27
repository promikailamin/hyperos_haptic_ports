.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:[I

.field public final synthetic f$4:[I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;ZI[I[III)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Z

    iput p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:[I

    iput-object p5, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$4:[I

    iput p6, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$5:I

    iput p7, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Z

    iget v2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:[I

    iget-object v4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$4:[I

    iget v5, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$5:I

    iget v6, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$6:I

    move-object v7, p1

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppProfiler;->lambda$updateLowMemStateLSP$3$com-android-server-am-AppProfiler(ZI[I[IIILcom/android/server/am/ProcessRecord;)V

    return-void
.end method
