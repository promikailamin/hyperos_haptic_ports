.class public interface abstract Lcom/xiaomi/mirror/ICursorPositionChangedListener;
.super Ljava/lang/Object;
.source "ICursorPositionChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/ICursorPositionChangedListener$Stub;,
        Lcom/xiaomi/mirror/ICursorPositionChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.ICursorPositionChangedListener"


# virtual methods
.method public abstract blacklist onCursorPositionChanged(IFF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
