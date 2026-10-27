.class public Lcom/android/server/wm/Transition$ReadyCondition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field public mAlternate:Ljava/lang/String;

.field public final mDebugTarget:Ljava/lang/Object;

.field public mMet:Z

.field public final mName:Ljava/lang/String;

.field public final mNewTrackerOnly:Z

.field public mTracker:Lcom/android/server/wm/Transition$ReadyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4134
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5

    .line 4123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4108
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    const/4 v0, 0x0

    .line 4111
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 4124
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    .line 4125
    iput-object p2, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    .line 4126
    iput-boolean p3, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mNewTrackerOnly:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 4130
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public getDebugRep()Ljava/lang/String;
    .registers 3

    .line 4142
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    .line 4143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4145
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public meet()V
    .registers 2

    .line 4176
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    if-eqz v0, :cond_5

    return-void

    .line 4177
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    if-eqz v0, :cond_d

    .line 4180
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Transition$ReadyTracker;->meet(Lcom/android/server/wm/Transition$ReadyCondition;)V

    return-void

    .line 4178
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t meet a condition before it is waited on"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public meetAlternate(Ljava/lang/String;)V
    .registers 3

    .line 4169
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    if-eqz v0, :cond_5

    return-void

    .line 4170
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 4171
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    return-void
.end method

.method public startTracking()V
    .registers 1

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 4150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyCondition;->getDebugRep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_30
    move-object v1, v2

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4152
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mNewTrackerOnly:Z

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    if-eqz v1, :cond_52

    invoke-static {v1}, Lcom/android/server/wm/Transition$ReadyTracker;->-$$Nest$fgetmTransition(Lcom/android/server/wm/Transition$ReadyTracker;)Lcom/android/server/wm/Transition;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-static {p0}, Lcom/android/server/wm/Transition$ReadyTracker;->-$$Nest$fgetmTransition(Lcom/android/server/wm/Transition$ReadyTracker;)Lcom/android/server/wm/Transition;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->useFullReadyTracking()Z

    move-result p0

    if-nez p0, :cond_52

    .line 4153
    const-string v2, "IGNORED"

    :cond_52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
