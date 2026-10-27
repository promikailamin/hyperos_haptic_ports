.class public final Landroid/inputmethodservice/ImsConfigurationTracker;
.super Ljava/lang/Object;
.source "ImsConfigurationTracker.java"


# static fields
.field private static final blacklist CONFIG_CHANGED:I = -0x1


# instance fields
.field private blacklist mHandledConfigChanges:I

.field private blacklist mInitialized:Z

.field public blacklist mLastKnownConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 52
    iput-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public blacklist onBindInput(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 72
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    const-string v1, "ImsConfiguration"

    if-nez v0, :cond_25

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastKnownConfig not to be set:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " because of not initialized"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_25
    iget-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_4e

    if-eqz p1, :cond_4e

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mLastknownConfig:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 83
    :cond_4e
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "resetStateForNewConfigurationRunner"    # Ljava/lang/Runnable;

    .line 99
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    if-nez v0, :cond_5

    .line 100
    return-void

    .line 102
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_e

    .line 103
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    .line 106
    .local v0, "diff":I
    :goto_f
    iget v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    not-int v1, v1

    and-int/2addr v1, v0

    .line 107
    .local v1, "unhandledDiff":I
    if-eqz v1, :cond_18

    .line 108
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 113
    :cond_18
    const/4 v2, 0x0

    .line 114
    .local v2, "imeBoundsChanged":Z
    iget-object v3, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_2b

    .line 115
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v3

    const/high16 v6, 0x20000

    and-int/2addr v3, v6

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v4, v5

    :goto_2a
    move v2, v4

    .line 118
    :cond_2b
    if-nez v0, :cond_2f

    if-eqz v2, :cond_36

    .line 120
    :cond_2f
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 122
    :cond_36
    return-void
.end method

.method public blacklist onInitialize(I)V
    .registers 5
    .param p1, "handledConfigChanges"    # I

    .line 62
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "onInitialize can be called only once."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 63
    iput-boolean v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    .line 64
    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 65
    return-void
.end method

.method public blacklist setHandledConfigChanges(I)V
    .registers 2
    .param p1, "configChanges"    # I

    .line 90
    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 91
    return-void
.end method
