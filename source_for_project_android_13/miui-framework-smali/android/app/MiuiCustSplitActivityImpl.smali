.class public Landroid/app/MiuiCustSplitActivityImpl;
.super Landroid/app/MiuiCustSplitActivity;
.source "MiuiCustSplitActivityImpl.java"


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mInited:Z

.field private blacklist mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Landroid/app/MiuiCustSplitActivity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mActivity:Landroid/app/Activity;

    .line 11
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mInited:Z

    .line 12
    iput-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    .line 13
    iput-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected blacklist handleBackPressed()V
    .registers 2

    .line 16
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitSecondActivity()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->handleBackPressed()V

    .line 19
    :cond_d
    return-void
.end method

.method protected blacklist handleStartSplitActivity(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 22
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0, p1}, Landroid/app/IMiuiActivitySplitterImpl;->isDuplicateSplittableActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    const/4 v0, 0x1

    return v0

    .line 25
    :cond_a
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0, p1}, Landroid/app/IMiuiActivitySplitterImpl;->setSplittableIfNeeded(Landroid/content/Intent;)V

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist initSplitMode(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 30
    iput-object p1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mToken:Landroid/os/IBinder;

    .line 31
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    iget-object v1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Landroid/app/IMiuiActivitySplitterImpl;->setActivityInfo(Landroid/app/Activity;Landroid/os/IBinder;)V

    .line 32
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->needSplitActivity()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 33
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->splitActivityIfNeeded()V

    goto :goto_24

    .line 34
    :cond_17
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 35
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->reduceActivity()V

    .line 37
    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    .line 38
    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitBaseActivity()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 39
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->pushSplitActivityToStack()V

    .line 41
    :cond_3f
    return-void
.end method

.method protected blacklist isRequestSplit(Landroid/app/Activity;)Z
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, "requestSplit":Z
    iget-boolean v1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mInited:Z

    if-nez v1, :cond_11

    .line 46
    iput-object p1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mActivity:Landroid/app/Activity;

    .line 47
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/app/MiuiActivitySplitterImpl;->getDefault(Landroid/app/Activity;Z)Landroid/app/MiuiActivitySplitterImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mInited:Z

    .line 51
    :cond_11
    iget-object v1, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    if-nez v1, :cond_16

    .line 52
    const/4 v0, 0x0

    .line 55
    :cond_16
    return v0
.end method

.method protected blacklist onSplitActivityConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 59
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitBaseActivity()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->needSplitActivity()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 60
    :cond_10
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0, p1}, Landroid/app/IMiuiActivitySplitterImpl;->onSplitActivityConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    :cond_15
    return-void
.end method

.method protected blacklist onSplitActivityDestroy()V
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->onSplitActivityDestroy()V

    .line 66
    return-void
.end method

.method protected blacklist onSplitActivityNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0, p1}, Landroid/app/IMiuiActivitySplitterImpl;->onSplitActivityNewIntent(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method protected blacklist onSplitActivityPaused()V
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitBaseActivity()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitSecondActivity()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 74
    :cond_10
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IMiuiActivitySplitterImpl;->setResumed(Z)V

    .line 76
    :cond_16
    return-void
.end method

.method protected blacklist onSplitActivityRestart()V
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->onSplitActivityRestart()V

    .line 80
    return-void
.end method

.method protected blacklist onSplitActivityResume()V
    .registers 3

    .line 83
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitBaseActivity()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitSecondActivity()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    :cond_10
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IMiuiActivitySplitterImpl;->setResumed(Z)V

    .line 86
    :cond_16
    return-void
.end method

.method protected blacklist onSplitActivityStop()V
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->isSplitSecondActivity()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->notSupportSplit()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 90
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->clearIllegalSplitActivity()V

    .line 92
    :cond_15
    return-void
.end method

.method protected blacklist setLastReportedMultiWindowMode(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 95
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0, p1}, Landroid/app/IMiuiActivitySplitterImpl;->setLastReportedMultiWindowMode(Z)V

    .line 96
    return-void
.end method

.method protected blacklist setSplitActivityOrientation(I)V
    .registers 3
    .param p1, "requestedOrientation"    # I

    .line 99
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0, p1}, Landroid/app/IMiuiActivitySplitterImpl;->setSplitActivityOrientation(I)V

    .line 100
    return-void
.end method

.method protected blacklist splitActivityFinish()V
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/app/MiuiCustSplitActivityImpl;->mSplitter:Landroid/app/IMiuiActivitySplitterImpl;

    invoke-interface {v0}, Landroid/app/IMiuiActivitySplitterImpl;->splitActivityFinish()V

    .line 104
    return-void
.end method
