.class public interface abstract Lcom/miui/mishare/IMiShareStateListener;
.super Ljava/lang/Object;
.source "IMiShareStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareStateListener$Stub;,
        Lcom/miui/mishare/IMiShareStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareStateListener"


# virtual methods
.method public abstract blacklist onStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
