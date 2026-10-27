.class public Landroid/view/ScreenOptimizeObserverProxyImpl;
.super Ljava/lang/Object;
.source "ScreenOptimizeObserverProxyImpl.java"

# interfaces
.implements Landroid/view/ScreenOptimizeObserverProxyStub;


# instance fields
.field private blacklist mScreenOptimizeObserver:Landroid/view/ScreenOptimizeObserver;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createObserver(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 17
    new-instance v0, Landroid/view/ScreenOptimizeObserver;

    new-instance v1, Landroid/view/ScreenOptimizeObserverProxyImpl$1;

    invoke-direct {v1, p0}, Landroid/view/ScreenOptimizeObserverProxyImpl$1;-><init>(Landroid/view/ScreenOptimizeObserverProxyImpl;)V

    invoke-direct {v0, p1, p2, v1}, Landroid/view/ScreenOptimizeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/ScreenOptimizeObserver$Callback;)V

    iput-object v0, p0, Landroid/view/ScreenOptimizeObserverProxyImpl;->mScreenOptimizeObserver:Landroid/view/ScreenOptimizeObserver;

    .line 26
    return-void
.end method
