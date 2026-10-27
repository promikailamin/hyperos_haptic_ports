.class Lmiui/contentcatcher/InterceptorProxy$H;
.super Landroid/os/Handler;
.source "InterceptorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/InterceptorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# static fields
.field public static final blacklist ACTIVITY_CREATE:I = 0x1

.field public static final blacklist ACTIVITY_DESTROY:I = 0x6

.field public static final blacklist ACTIVITY_PAUSE:I = 0x4

.field public static final blacklist ACTIVITY_RESUME:I = 0x3

.field public static final blacklist ACTIVITY_START:I = 0x2

.field public static final blacklist ACTIVITY_STOP:I = 0x5

.field public static final blacklist CONTENT_CHANGED:I = 0x7

.field public static final blacklist CREATE_INJECTOR:I


# instance fields
.field private blacklist mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInterceptorProxyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/contentcatcher/IInterceptorContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/app/Activity;Lmiui/contentcatcher/IInterceptorContainer;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "interceptorProxy"    # Lmiui/contentcatcher/IInterceptorContainer;

    .line 313
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 314
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 315
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    .line 316
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 320
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/IInterceptorContainer;

    move-object v1, v0

    .local v1, "interceptorProxy":Lmiui/contentcatcher/IInterceptorContainer;
    if-nez v0, :cond_f

    goto/16 :goto_8f

    .line 323
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    goto/16 :goto_8e

    .line 361
    :pswitch_16
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 362
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyContentChange()V

    goto/16 :goto_8e

    .line 356
    :pswitch_25
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 357
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityDestroy()V

    goto :goto_8e

    .line 351
    :pswitch_33
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 352
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityStop()V

    goto :goto_8e

    .line 346
    :pswitch_41
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 347
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityPause()V

    goto :goto_8e

    .line 341
    :pswitch_4f
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 342
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityResume()V

    goto :goto_8e

    .line 336
    :pswitch_5d
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 337
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityStart()V

    goto :goto_8e

    .line 331
    :pswitch_6b
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 332
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lmiui/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyActivityCreate()V

    goto :goto_8e

    .line 325
    :pswitch_79
    const/4 v0, 0x0

    .line 326
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    if-eqz v2, :cond_8e

    .line 327
    invoke-static {v0}, Lmiui/contentcatcher/InterceptorFactory;->createInterceptor(Landroid/app/Activity;)Lmiui/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/contentcatcher/IInterceptorContainer;->setInterceptor(Lmiui/contentcatcher/IInterceptor;)V

    .line 368
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_8e
    :goto_8e
    return-void

    .line 321
    .end local v1    # "interceptorProxy":Lmiui/contentcatcher/IInterceptorContainer;
    :cond_8f
    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_79
        :pswitch_6b
        :pswitch_5d
        :pswitch_4f
        :pswitch_41
        :pswitch_33
        :pswitch_25
        :pswitch_16
    .end packed-switch
.end method
