.class public interface abstract Landroid/companion/virtual/camera/ICaptureResultConsumer;
.super Ljava/lang/Object;
.source "ICaptureResultConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/camera/ICaptureResultConsumer$Stub;,
        Landroid/companion/virtual/camera/ICaptureResultConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.camera.ICaptureResultConsumer"


# virtual methods
.method public abstract blacklist acceptCaptureResult(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
