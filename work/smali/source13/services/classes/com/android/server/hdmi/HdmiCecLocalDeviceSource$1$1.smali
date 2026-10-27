.class Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDeviceSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    .line 171
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5
    .param p1, "result"    # I

    .line 174
    if-eqz p1, :cond_24

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to complete One Touch Play. result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecLocalDeviceSource"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/4 v1, 0x0

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendUserControlPressedAndReleased(II)V

    .line 179
    :cond_24
    return-void
.end method
