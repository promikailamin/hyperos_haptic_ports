.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ActiveServices;

    iput p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ActiveServices;

    iget v1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActiveServices;->lambda$shouldAllowFgsStartForegroundNoBindingCheckLocked$5$com-android-server-am-ActiveServices(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
