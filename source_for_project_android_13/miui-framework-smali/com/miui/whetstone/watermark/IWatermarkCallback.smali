.class public interface abstract Lcom/miui/whetstone/watermark/IWatermarkCallback;
.super Ljava/lang/Object;
.source "IWatermarkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;,
        Lcom/miui/whetstone/watermark/IWatermarkCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.watermark.IWatermarkCallback"


# virtual methods
.method public abstract blacklist onDecodeWatermark(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEncodeWatermark(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
