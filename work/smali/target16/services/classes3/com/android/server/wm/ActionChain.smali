.class public Lcom/android/server/wm/ActionChain;
.super Ljava/lang/Object;
.source "ActionChain.java"


# instance fields
.field public mCreateTimeMs:J

.field public mPrevious:Lcom/android/server/wm/ActionChain;

.field public final mSource:Ljava/lang/String;

.field public mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mTransition:Lcom/android/server/wm/Transition;

.field public mType:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetTransitionSource(Lcom/android/server/wm/ActionChain;)Lcom/android/server/wm/ActionChain;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->getTransitionSource()Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V
    .registers 6

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/server/wm/ActionChain;->mPrevious:Lcom/android/server/wm/ActionChain;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/server/wm/ActionChain;->mType:I

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/ActionChain;->mSource:Ljava/lang/String;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActionChain;->mCreateTimeMs:J

    .line 125
    iput p2, p0, Lcom/android/server/wm/ActionChain;->mType:I

    .line 126
    iput-object p3, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz p3, :cond_1a

    .line 128
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Transition;->recordChain(Lcom/android/server/wm/ActionChain;)V

    :cond_1a
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/wm/Transition;Lcom/android/server/wm/ActionChain-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V

    return-void
.end method


# virtual methods
.method public attachTransition(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_18

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/ActionChain;->mPrevious:Lcom/android/server/wm/ActionChain;

    if-nez v0, :cond_10

    .line 140
    iput-object p1, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz p1, :cond_f

    .line 142
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->recordChain(Lcom/android/server/wm/ActionChain;)V

    :cond_f
    return-void

    .line 138
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can only attach transition to the head of a chain"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t attach transition to chain that is already attached to a transition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collect(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 201
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 202
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->expectCollecting()Lcom/android/server/wm/Transition;

    move-result-object p0

    if-nez p0, :cond_10

    :goto_f
    return-void

    .line 204
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public collectClose(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 211
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 212
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->expectCollecting()Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 214
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 218
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public detachTransition()V
    .registers 2

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    return-void
.end method

.method public final expectCollecting()Lcom/android/server/wm/Transition;
    .registers 5

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    const-string v2, "TransitionChain"

    if-nez v0, :cond_f

    .line 180
    const-string p0, "Can\'t collect into a chain with no transition"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 183
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 184
    const-string p0, "Trying to collect into a finished transition"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 187
    :cond_1b
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eq v3, p0, :cond_4d

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch between current collecting ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 189
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") and chain ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4d
    return-object v0
.end method

.method public getTransition()Lcom/android/server/wm/Transition;
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    return-object p0

    .line 150
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActionChain;->mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionSource()Lcom/android/server/wm/ActionChain;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 228
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/ActionChain;->mPrevious:Lcom/android/server/wm/ActionChain;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_10

    move-object p0, v0

    goto :goto_6

    :cond_10
    return-object p0
.end method

.method public isCollecting()Z
    .registers 1

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isCollectingOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isFinishing()Z
    .registers 2

    .line 160
    iget p0, p0, Lcom/android/server/wm/ActionChain;->mType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
