.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ActiveServices;

    iput p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$2:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ActiveServices;

    iget v1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$2:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/ActiveServices;->lambda$canBindingClientStartFgsLocked$4$com-android-server-am-ActiveServices(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
