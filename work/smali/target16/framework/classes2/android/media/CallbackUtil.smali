.class Landroid/media/CallbackUtil;
.super Ljava/lang/Object;
.source "CallbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CallbackUtil$ListenerInfo;,
        Landroid/media/CallbackUtil$CallbackMethod;,
        Landroid/media/CallbackUtil$LazyListenerManager;,
        Landroid/media/CallbackUtil$DispatcherStub;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CallbackUtil"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;",
            "Ljava/util/function/Supplier<",
            "TS;>;",
            "Ljava/util/function/Consumer<",
            "TS;>;)",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;>;"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p2, p3}, Landroid/media/CallbackUtil;->hasListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 141
    if-nez p3, :cond_13

    .line 142
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :cond_13
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_44

    .line 146
    if-nez p4, :cond_41

    .line 148
    :try_start_1b
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_21

    .line 152
    move-object p4, p0

    goto :goto_41

    .line 149
    :catch_21
    move-exception p1

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while creating stub in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CallbackUtil"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 154
    :cond_41
    :goto_41
    invoke-interface {p6, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    :cond_44
    new-instance p0, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {p0, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 137
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "attempt to call "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "on a previously registered listener"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            "Landroid/media/CallbackUtil$CallbackMethod<",
            "TT;>;)V"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-enter p1

    .line 215
    if-eqz p0, :cond_45

    :try_start_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_45

    .line 218
    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 219
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_47

    .line 220
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object p1

    .line 221
    :try_start_18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/CallbackUtil$ListenerInfo;

    .line 222
    iget-object v1, v0, Landroid/media/CallbackUtil$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;-><init>(Landroid/media/CallbackUtil$CallbackMethod;Landroid/media/CallbackUtil$ListenerInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_39

    .line 223
    goto :goto_1c

    .line 224
    :cond_33
    if-eqz p1, :cond_38

    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 226
    :cond_38
    return-void

    .line 220
    :catchall_39
    move-exception p0

    if-eqz p1, :cond_44

    :try_start_3c
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw p0

    .line 216
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit p1

    return-void

    .line 219
    :catchall_47
    move-exception p0

    monitor-exit p1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw p0
.end method

.method static blacklist getListenerInfo(Ljava/lang/Object;Ljava/util/ArrayList;)Landroid/media/CallbackUtil$ListenerInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;)",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 68
    return-object v0

    .line 70
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/CallbackUtil$ListenerInfo;

    .line 71
    iget-object v2, v1, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    if-ne v2, p0, :cond_19

    .line 72
    return-object v1

    .line 74
    :cond_19
    goto :goto_8

    .line 75
    :cond_1a
    return-object v0
.end method

.method static blacklist hasListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 87
    invoke-static {p0, p1}, Landroid/media/CallbackUtil;->getListenerInfo(Ljava/lang/Object;Ljava/util/ArrayList;)Landroid/media/CallbackUtil$ListenerInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic blacklist lambda$callListeners$0(Landroid/media/CallbackUtil$CallbackMethod;Landroid/media/CallbackUtil$ListenerInfo;)V
    .registers 2

    .line 222
    iget-object p1, p1, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroid/media/CallbackUtil$CallbackMethod;->callbackMethod(Ljava/lang/Object;)V

    return-void
.end method

.method static blacklist removeListener(Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Consumer;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;",
            "Ljava/util/function/Consumer<",
            "TS;>;)",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;>;"
        }
    .end annotation

    .line 182
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1, p2}, Landroid/media/CallbackUtil;->removeListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 188
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_19

    .line 189
    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 190
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 192
    :cond_19
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 185
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "attempt to call "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " on an unregistered listener"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist removeListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 99
    invoke-static {p0, p1}, Landroid/media/CallbackUtil;->getListenerInfo(Ljava/lang/Object;Ljava/util/ArrayList;)Landroid/media/CallbackUtil$ListenerInfo;

    move-result-object p0

    .line 100
    if-eqz p0, :cond_b

    .line 101
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    const/4 p0, 0x1

    return p0

    .line 104
    :cond_b
    const/4 p0, 0x0

    return p0
.end method
