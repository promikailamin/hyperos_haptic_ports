.class public interface abstract Lcom/android/server/input/UEventManager;
.super Ljava/lang/Object;
.source "UEventManager.java"


# virtual methods
.method public addListener(Lcom/android/server/input/UEventManager$UEventListener;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-static {p1}, Lcom/android/server/input/UEventManager$UEventListener;->-$$Nest$fgetmObserver(Lcom/android/server/input/UEventManager$UEventListener;)Landroid/os/UEventObserver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Lcom/android/server/input/UEventManager$UEventListener;)V
    .registers 2

    .line 40
    invoke-static {p1}, Lcom/android/server/input/UEventManager$UEventListener;->-$$Nest$fgetmObserver(Lcom/android/server/input/UEventManager$UEventListener;)Landroid/os/UEventObserver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V

    return-void
.end method
