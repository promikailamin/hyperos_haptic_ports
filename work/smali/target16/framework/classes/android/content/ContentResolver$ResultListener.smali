.class abstract Landroid/content/ContentResolver$ResultListener;
.super Ljava/lang/Object;
.source "ContentResolver.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/RemoteCallback$OnResultListener;"
    }
.end annotation


# instance fields
.field public blacklist done:Z

.field public blacklist exception:Ljava/lang/RuntimeException;

.field public blacklist result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentResolver-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentResolver$ResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public whitelist onResult(Landroid/os/Bundle;)V
    .registers 4

    .line 994
    monitor-enter p0

    .line 995
    :try_start_1
    const-string v0, "error"

    const-class v1, Landroid/os/ParcelableException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableException;

    .line 996
    if-eqz v0, :cond_22

    .line 997
    invoke-virtual {v0}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 998
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1a

    .line 999
    check-cast p1, Ljava/lang/RuntimeException;

    iput-object p1, p0, Landroid/content/ContentResolver$ResultListener;->exception:Ljava/lang/RuntimeException;

    goto :goto_21

    .line 1001
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroid/content/ContentResolver$ResultListener;->exception:Ljava/lang/RuntimeException;

    .line 1003
    :goto_21
    goto :goto_28

    .line 1004
    :cond_22
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver$ResultListener;->getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentResolver$ResultListener;->result:Ljava/lang/Object;

    .line 1006
    :goto_28
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/content/ContentResolver$ResultListener;->done:Z

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1008
    monitor-exit p0

    .line 1009
    return-void

    .line 1008
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public blacklist waitForResult(J)V
    .registers 4

    .line 1014
    monitor-enter p0

    .line 1015
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentResolver$ResultListener;->done:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-nez v0, :cond_a

    .line 1017
    :try_start_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 1020
    goto :goto_a

    .line 1018
    :catch_9
    move-exception p1

    .line 1022
    :cond_a
    :goto_a
    :try_start_a
    monitor-exit p0

    .line 1023
    return-void

    .line 1022
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw p1
.end method
