.class public Landroid/media/MediaFunctionStubImpl;
.super Ljava/lang/Object;
.source "MediaFunctionStubImpl.java"

# interfaces
.implements Landroid/media/MediaFunctionStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist broadcastHeadSetPlugInState(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 21
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioServiceInjector;->broadcastHeadSetPlugInState(IILjava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public blacklist broadcastRecorderState(ILandroid/media/AudioRecordingConfiguration;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "audioConfig"    # Landroid/media/AudioRecordingConfiguration;

    .line 16
    invoke-static {p1, p2}, Landroid/media/AudioServiceInjector;->broadcastRecorderState(ILandroid/media/AudioRecordingConfiguration;)V

    .line 17
    return-void
.end method
