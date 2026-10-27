.class public final synthetic Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->lambda$setMultipathBudget$0$com-android-server-connectivity-MultipathPolicyTracker$MultipathTracker(Ljava/lang/Runnable;)V

    return-void
.end method
