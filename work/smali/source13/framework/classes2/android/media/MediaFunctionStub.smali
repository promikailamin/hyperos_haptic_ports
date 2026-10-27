.class public interface abstract Landroid/media/MediaFunctionStub;
.super Ljava/lang/Object;
.source "MediaFunctionStub.java"


# direct methods
.method public static blacklist get()Landroid/media/MediaFunctionStub;
    .registers 1

    .line 24
    const-class v0, Landroid/media/MediaFunctionStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFunctionStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist broadcastHeadSetPlugInState(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist broadcastRecorderState(ILandroid/media/AudioRecordingConfiguration;)V
.end method
