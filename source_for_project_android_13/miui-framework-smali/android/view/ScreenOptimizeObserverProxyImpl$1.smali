.class Landroid/view/ScreenOptimizeObserverProxyImpl$1;
.super Ljava/lang/Object;
.source "ScreenOptimizeObserverProxyImpl.java"

# interfaces
.implements Landroid/view/ScreenOptimizeObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScreenOptimizeObserverProxyImpl;->createObserver(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ScreenOptimizeObserverProxyImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ScreenOptimizeObserverProxyImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ScreenOptimizeObserverProxyImpl;

    .line 17
    iput-object p1, p0, Landroid/view/ScreenOptimizeObserverProxyImpl$1;->this$0:Landroid/view/ScreenOptimizeObserverProxyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist screenOptimizeSettingsChanged(Landroid/view/ThreadedRenderer;Z)V
    .registers 5
    .param p1, "threadedRenderer"    # Landroid/view/ThreadedRenderer;
    .param p2, "disableWCGFlag"    # Z

    .line 20
    if-eqz p1, :cond_1d

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOptimizeSettingsChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenOptimizeObserverProxyStub"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/ThreadedRenderer;->setDisableWCGFlag(Z)V

    .line 24
    :cond_1d
    return-void
.end method
