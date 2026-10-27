.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

.field public final synthetic f$1:Landroid/media/VolumeInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$1:Landroid/media/VolumeInfo;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$1:Landroid/media/VolumeInfo;

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->lambda$onAudioDeviceVolumeChanged$0$com-android-server-hdmi-HdmiControlService$AbsoluteVolumeChangedListener(Landroid/media/VolumeInfo;II)V

    return-void
.end method
