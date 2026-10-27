.class public interface abstract Lcom/miui/mishare/IMiShareListener;
.super Ljava/lang/Object;
.source "IMiShareListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareListener$Stub;,
        Lcom/miui/mishare/IMiShareListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareListener"


# virtual methods
.method public abstract blacklist onTaskFinish(Lcom/miui/mishare/MiShareTask;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskProgress(Lcom/miui/mishare/MiShareTask;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskReceived(Lcom/miui/mishare/MiShareTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskStart(Lcom/miui/mishare/MiShareTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
