.class public Landroid/app/ActivityImpl;
.super Ljava/lang/Object;
.source "ActivityImpl.java"

# interfaces
.implements Landroid/app/ActivityStub;


# static fields
.field public static final blacklist RESULT_DESTROYED_FINISH_SKIPED:I = 0xc8


# instance fields
.field private blacklist mCustActivity:Landroid/app/MiuiCustSplitActivity;

.field private blacklist mInterceptor:Lmiui/contentcatcher/IInterceptor;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    return-void
.end method


# virtual methods
.method public blacklist checkAccessControl(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 58
    const/4 v0, 0x3

    .line 60
    .local v0, "targetState":I
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    .line 62
    .local v1, "monitor":Landroid/os/perfdebug/MessageMonitor;
    if-eqz v1, :cond_2c

    .line 63
    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessage()Landroid/os/Message;

    move-result-object v2

    .line 64
    .local v2, "transaction":Landroid/os/Message;
    if-eqz v2, :cond_2c

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2c

    .line 65
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/servertransaction/ClientTransaction;

    .line 66
    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v3

    .line 67
    .local v3, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    if-eqz v3, :cond_2c

    .line 68
    invoke-virtual {v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    move v0, v4

    .line 74
    .end local v1    # "monitor":Landroid/os/perfdebug/MessageMonitor;
    .end local v2    # "transaction":Landroid/os/Message;
    .end local v3    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_2c
    goto :goto_35

    .line 72
    :catch_2d
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityImpl"

    const-string v3, "get life cycle exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    const-string v1, "security"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    .line 77
    .local v1, "securityManager":Lmiui/security/SecurityManager;
    const/4 v2, 0x5

    if-ge v0, v2, :cond_49

    if-eqz v1, :cond_49

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lmiui/security/SecurityManager;->checkAccessControl(Landroid/app/Activity;I)V

    .line 90
    :cond_49
    return-void
.end method

.method public blacklist checkParentalControl(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 93
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PARENTAL_CONTROL:Z

    if-nez v0, :cond_5

    .line 94
    return-void

    .line 96
    :cond_5
    const/4 v0, 0x3

    .line 97
    .local v0, "targetState":I
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    .line 99
    .local v1, "monitor":Landroid/os/perfdebug/MessageMonitor;
    if-eqz v1, :cond_36

    .line 100
    invoke-virtual {v1}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessage()Landroid/os/Message;

    move-result-object v2

    .line 101
    .local v2, "transaction":Landroid/os/Message;
    if-eqz v2, :cond_36

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_36

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v3, :cond_36

    .line 103
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/servertransaction/ClientTransaction;

    .line 104
    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v3

    .line 105
    .local v3, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    if-eqz v3, :cond_36

    .line 106
    invoke-virtual {v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v0

    .line 110
    .end local v2    # "transaction":Landroid/os/Message;
    .end local v3    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_36
    nop

    .line 111
    const-string v2, "HyperPackageManager"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/HyperPackageManager;

    .line 112
    .local v2, "hyperPackageManager":Landroid/content/pm/HyperPackageManager;
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4b

    if-eqz v2, :cond_4b

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/HyperPackageManager;->checkParentalControl(Landroid/app/Activity;I)V

    .line 115
    :cond_4b
    return-void
.end method

.method public blacklist dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .line 239
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 240
    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IInterceptor;->dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z

    .line 242
    :cond_7
    return-void
.end method

.method public blacklist dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .line 232
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 233
    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IInterceptor;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z

    .line 235
    :cond_7
    return-void
.end method

.method public blacklist finish(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 218
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 219
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0}, Landroid/app/MiuiCustSplitActivity;->splitActivityFinish()V

    .line 221
    :cond_f
    return-void
.end method

.method public blacklist notifyContentChange()V
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 226
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyContentChange()V

    .line 228
    :cond_7
    return-void
.end method

.method public blacklist notifyWebView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .line 253
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 254
    invoke-interface {v0, p1, p2}, Lmiui/contentcatcher/IInterceptor;->notifyWebView(Landroid/view/View;Z)V

    .line 256
    :cond_7
    return-void
.end method

.method public blacklist onBackPressed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 274
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 275
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0}, Landroid/app/MiuiCustSplitActivity;->handleBackPressed()V

    .line 277
    :cond_f
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 267
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 268
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0, p2}, Landroid/app/MiuiCustSplitActivity;->onSplitActivityConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    :cond_f
    return-void
.end method

.method public blacklist onCreate(Landroid/app/Activity;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 127
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-nez v0, :cond_a

    .line 128
    invoke-static {p1}, Lmiui/contentcatcher/InterceptorProxy;->create(Landroid/app/Activity;)Lmiui/contentcatcher/InterceptorProxy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    .line 130
    :cond_a
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_11

    .line 131
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityCreate()V

    .line 133
    :cond_11
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-nez v0, :cond_32

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_32

    .line 135
    const-class v0, Landroid/app/MiuiCustSplitActivity;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/cust/MiuiCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MiuiCustSplitActivity;

    iput-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    .line 138
    :cond_32
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 139
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0, p2}, Landroid/app/MiuiCustSplitActivity;->initSplitMode(Landroid/os/IBinder;)V

    .line 141
    :cond_41
    return-void
.end method

.method public blacklist onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 201
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 202
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityDestroy()V

    .line 204
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 205
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0}, Landroid/app/MiuiCustSplitActivity;->onSplitActivityDestroy()V

    .line 207
    :cond_16
    return-void
.end method

.method public blacklist onMultiWindowModeChanged(Landroid/app/Activity;ZLandroid/content/res/Configuration;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isInMultiWindowMode"    # Z
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .line 260
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 261
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0, p2}, Landroid/app/MiuiCustSplitActivity;->setLastReportedMultiWindowMode(Z)V

    .line 263
    :cond_f
    return-void
.end method

.method public blacklist onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0, p2}, Landroid/app/MiuiCustSplitActivity;->onSplitActivityNewIntent(Landroid/content/Intent;)V

    .line 214
    :cond_f
    return-void
.end method

.method public blacklist onPause(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 176
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 177
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityPause()V

    .line 179
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 180
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0}, Landroid/app/MiuiCustSplitActivity;->onSplitActivityPaused()V

    .line 182
    :cond_16
    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImplStub;->removeDragView(Landroid/view/ViewRootImpl;Landroid/app/Activity;)V

    .line 184
    return-void
.end method

.method public blacklist onRestart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 145
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 146
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0}, Landroid/app/MiuiCustSplitActivity;->onSplitActivityRestart()V

    .line 148
    :cond_f
    return-void
.end method

.method public blacklist onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 162
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 163
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityResume()V

    .line 165
    :cond_7
    invoke-virtual {p0, p1}, Landroid/app/ActivityImpl;->checkParentalControl(Landroid/app/Activity;)V

    .line 167
    invoke-virtual {p0, p1}, Landroid/app/ActivityImpl;->checkAccessControl(Landroid/app/Activity;)V

    .line 168
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 169
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0}, Landroid/app/MiuiCustSplitActivity;->onSplitActivityResume()V

    .line 171
    :cond_1c
    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImplStub;->addDragView(Landroid/app/Activity;)V

    .line 172
    return-void
.end method

.method public blacklist onSkipTouchActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 118
    const-string v0, "com.android.chrome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 119
    const-string v0, "org.chromium.chrome.browser.firstrun.FirstRunActivity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onStart(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 152
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 153
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityStart()V

    .line 155
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 156
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/TurboSchedMonitor;->onCoreAppActivityStart(Ljava/lang/String;)V

    .line 158
    :cond_1c
    return-void
.end method

.method public blacklist onStop(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 188
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 189
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityStop()V

    .line 191
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 192
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0}, Landroid/app/MiuiCustSplitActivity;->onSplitActivityStop()V

    .line 194
    :cond_16
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 195
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/TurboSchedMonitor;->onCoreAppActivityStop(Ljava/lang/String;)V

    .line 197
    :cond_2b
    return-void
.end method

.method public blacklist setRequestedOrientation(Landroid/app/Activity;I)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestedOrientation"    # I

    .line 281
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 282
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    invoke-virtual {v0, p2}, Landroid/app/MiuiCustSplitActivity;->setSplitActivityOrientation(I)V

    .line 284
    :cond_f
    return-void
.end method

.method public blacklist setWebView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .line 246
    iget-object v0, p0, Landroid/app/ActivityImpl;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 247
    invoke-interface {v0, p1, p2}, Lmiui/contentcatcher/IInterceptor;->setWebView(Landroid/view/View;Z)V

    .line 249
    :cond_7
    return-void
.end method

.method public blacklist startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Landroid/app/MiuiCustSplitActivity;->isRequestSplit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/ActivityImpl;->mCustActivity:Landroid/app/MiuiCustSplitActivity;

    .line 53
    invoke-virtual {v0, p2}, Landroid/app/MiuiCustSplitActivity;->handleStartSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 52
    :goto_15
    return v0
.end method
