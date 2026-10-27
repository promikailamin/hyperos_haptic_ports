.class public Landroid/filterfw/MffEnvironment;
.super Ljava/lang/Object;
.source "MffEnvironment.java"


# instance fields
.field private greylist-max-o mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/filterfw/core/FrameManager;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_a

    .line 46
    new-instance p1, Landroid/filterfw/core/CachedFrameManager;

    invoke-direct {p1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    .line 50
    :cond_a
    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 51
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    .line 53
    return-void
.end method


# virtual methods
.method public greylist-max-o activateGLEnvironment()V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_12

    .line 87
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 91
    return-void

    .line 89
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No GLEnvironment in place to activate!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o createGLEnvironment()V
    .registers 2

    .line 74
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .line 75
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithNewContext()V

    .line 76
    invoke-virtual {p0, v0}, Landroid/filterfw/MffEnvironment;->setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 77
    return-void
.end method

.method public greylist-max-o deactivateGLEnvironment()V
    .registers 3

    .line 99
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_12

    .line 101
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 105
    return-void

    .line 103
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No GLEnvironment in place to deactivate!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getContext()Landroid/filterfw/core/FilterContext;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public greylist-max-o setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 68
    return-void
.end method
