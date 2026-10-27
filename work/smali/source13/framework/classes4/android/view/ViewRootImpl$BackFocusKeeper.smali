.class public Landroid/view/ViewRootImpl$BackFocusKeeper;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackFocusKeeper"
.end annotation


# static fields
.field static final blacklist BACK_FOCUS_TIMEOUT:I = 0x1388


# instance fields
.field private blacklist mBackFocusTimeOutCallback:Ljava/lang/Runnable;

.field private blacklist mOnBackInvokedCallback:Ljava/lang/Runnable;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 12265
    iput-object p1, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12269
    new-instance v0, Landroid/view/ViewRootImpl$BackFocusKeeper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$BackFocusKeeper$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$BackFocusKeeper;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->mBackFocusTimeOutCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public blacklist getBackFocusTimeOut()I
    .registers 2

    .line 12290
    const/16 v0, 0x1388

    return v0
.end method

.method public blacklist getBackFocusTimeOutCallbck()Ljava/lang/Runnable;
    .registers 2

    .line 12294
    iget-object v0, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->mBackFocusTimeOutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist handleBackFocusTimeout()V
    .registers 2

    .line 12286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->mOnBackInvokedCallback:Ljava/lang/Runnable;

    .line 12287
    return-void
.end method

.method public blacklist hasWindowFocus()Z
    .registers 2

    .line 12298
    iget-object v0, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-view-ViewRootImpl$BackFocusKeeper()V
    .registers 3

    .line 12270
    const-string v0, "ViewRootImpl"

    const-string v1, "back focus timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12271
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$BackFocusKeeper;->handleBackFocusTimeout()V

    .line 12272
    return-void
.end method

.method public blacklist performOnBackInvokedCallback()V
    .registers 3

    .line 12278
    const-string v0, "ViewRootImpl"

    const-string v1, "focus entering. performOnBackInvokedCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12279
    iget-object v0, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->mOnBackInvokedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 12280
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 12281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->mOnBackInvokedCallback:Ljava/lang/Runnable;

    .line 12283
    :cond_11
    return-void
.end method

.method public blacklist setOnBackInvokedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "onBackInvokedCallback"    # Ljava/lang/Runnable;

    .line 12274
    iput-object p1, p0, Landroid/view/ViewRootImpl$BackFocusKeeper;->mOnBackInvokedCallback:Ljava/lang/Runnable;

    .line 12275
    return-void
.end method
