.class public interface abstract Lcom/miui/mishare/IMiShareDetailProgressListener;
.super Ljava/lang/Object;
.source "IMiShareDetailProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareDetailProgressListener$Stub;,
        Lcom/miui/mishare/IMiShareDetailProgressListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareDetailProgressListener"


# virtual methods
.method public abstract blacklist onProgress(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
