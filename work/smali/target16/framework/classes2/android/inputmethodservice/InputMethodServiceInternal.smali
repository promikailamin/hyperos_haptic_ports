.class interface abstract Landroid/inputmethodservice/InputMethodServiceInternal;
.super Ljava/lang/Object;
.source "InputMethodServiceInternal.java"


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 76
    return-void
.end method

.method public blacklist exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V
    .registers 3

    .line 55
    return-void
.end method

.method public abstract blacklist getContext()Landroid/content/Context;
.end method

.method public blacklist isServiceDestroyed()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyUserActionIfNecessary()V
    .registers 1

    .line 62
    return-void
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;[B)V
    .registers 3

    .line 87
    return-void
.end method
