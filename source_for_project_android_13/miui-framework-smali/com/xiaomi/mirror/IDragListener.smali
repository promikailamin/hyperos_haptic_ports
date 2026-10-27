.class public interface abstract Lcom/xiaomi/mirror/IDragListener;
.super Ljava/lang/Object;
.source "IDragListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IDragListener$Stub;,
        Lcom/xiaomi/mirror/IDragListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IDragListener"


# virtual methods
.method public abstract blacklist onDragFinish(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDragStart(Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
