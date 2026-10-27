.class interface abstract Lcom/android/server/wm/WindowContainerListener;
.super Ljava/lang/Object;
.source "WindowContainerListener.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# virtual methods
.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 26
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .line 29
    return-void
.end method
