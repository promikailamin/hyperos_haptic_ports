.class public Lcom/miui/mishare/IMiShareTaskStateListener$Default;
.super Ljava/lang/Object;
.source "IMiShareTaskStateListener.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareTaskStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareTaskStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onTaskIdChanged(Lcom/miui/mishare/MiShareTask;)V
    .registers 2
    .param p1, "task"    # Lcom/miui/mishare/MiShareTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public blacklist onTaskStateChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
