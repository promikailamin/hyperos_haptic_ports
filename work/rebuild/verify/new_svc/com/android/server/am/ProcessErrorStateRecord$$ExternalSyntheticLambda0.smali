.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;

.field public final synthetic f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/internal/os/TimeoutRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;Lcom/android/internal/os/TimeoutRecord;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iput-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iput-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/os/TimeoutRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/os/TimeoutRecord;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/am/ProcessErrorStateRecord;->$r8$lambda$UZsvWrZWqF35aEeDlou4DCgPwfE(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;Lcom/android/internal/os/TimeoutRecord;)V

    return-void
.end method
