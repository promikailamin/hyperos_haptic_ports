.class Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private blacklist mBackFocusKeeper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl$BackFocusKeeper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/window/OnBackInvokedCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 243
    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 245
    return-void
.end method

.method constructor blacklist <init>(Landroid/window/OnBackInvokedCallback;Landroid/view/ViewRootImpl$BackFocusKeeper;)V
    .registers 4
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;
    .param p2, "backFocusKeeper"    # Landroid/view/ViewRootImpl$BackFocusKeeper;

    .line 250
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/OnBackInvokedCallback;)V

    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mBackFocusKeeper:Ljava/lang/ref/WeakReference;

    .line 252
    return-void
.end method

.method private blacklist getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .registers 3

    .line 326
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 327
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    instance-of v1, v0, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Landroid/window/OnBackAnimationCallback;

    goto :goto_11

    .line 328
    :cond_10
    const/4 v1, 0x0

    .line 327
    :goto_11
    return-object v1
.end method


# virtual methods
.method synthetic blacklist lambda$onBackCancelled$2$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .registers 2

    .line 278
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 279
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_9

    .line 280
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    .line 282
    :cond_9
    return-void
.end method

.method synthetic blacklist lambda$onBackInvoked$3$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 298
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    if-nez v0, :cond_b

    .line 299
    return-void

    .line 302
    :cond_b
    invoke-interface {v0}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 303
    return-void
.end method

.method synthetic blacklist lambda$onBackProgressed$1$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper(Landroid/window/BackEvent;)V
    .registers 3
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 268
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 269
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_9

    .line 270
    invoke-interface {v0, p1}, Landroid/window/OnBackAnimationCallback;->onBackProgressed(Landroid/window/BackEvent;)V

    .line 272
    :cond_9
    return-void
.end method

.method synthetic blacklist lambda$onBackStarted$0$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .registers 2

    .line 258
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 259
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_9

    .line 260
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackStarted()V

    .line 262
    :cond_9
    return-void
.end method

.method public blacklist onBackCancelled()V
    .registers 3

    .line 277
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method public blacklist onBackInvoked()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    .line 305
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mBackFocusKeeper:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_11

    .line 306
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c

    .line 308
    :cond_11
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$BackFocusKeeper;

    .line 309
    .local v1, "backFocusKeeper":Landroid/view/ViewRootImpl$BackFocusKeeper;
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$BackFocusKeeper;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_65

    .line 312
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not focused windsow. will wait for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 313
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$BackFocusKeeper;->getBackFocusTimeOut()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v3, "WindowOnBackDispatcher"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$BackFocusKeeper;->setOnBackInvokedCallback(Ljava/lang/Runnable;)V

    .line 315
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$BackFocusKeeper;->getBackFocusTimeOutCallbck()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 316
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$BackFocusKeeper;->getBackFocusTimeOutCallbck()Ljava/lang/Runnable;

    move-result-object v3

    .line 317
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$BackFocusKeeper;->getBackFocusTimeOut()I

    move-result v4

    int-to-long v4, v4

    .line 316
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6c

    .line 310
    :cond_65
    :goto_65
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    .end local v1    # "backFocusKeeper":Landroid/view/ViewRootImpl$BackFocusKeeper;
    :cond_6c
    :goto_6c
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackEvent;)V
    .registers 4
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 267
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method public blacklist onBackStarted()V
    .registers 3

    .line 257
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method
