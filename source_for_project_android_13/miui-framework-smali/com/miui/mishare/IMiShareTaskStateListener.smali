.class public interface abstract Lcom/miui/mishare/IMiShareTaskStateListener;
.super Ljava/lang/Object;
.source "IMiShareTaskStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareTaskStateListener$Stub;,
        Lcom/miui/mishare/IMiShareTaskStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareTaskStateListener"


# virtual methods
.method public abstract blacklist onTaskIdChanged(Lcom/miui/mishare/MiShareTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTaskStateChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
