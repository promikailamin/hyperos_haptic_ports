.class Landroid/hardware/hdmi/HdmiTvClient$3;
.super Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/hdmi/HdmiRecordListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .registers 2

    .line 249
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getOneTouchRecordSource(I)[B
    .registers 5

    .line 252
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    .line 253
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordSourceRequested(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    move-result-object p1

    .line 254
    if-nez p1, :cond_b

    .line 255
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p1

    .line 257
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    new-array v1, v1, [B

    .line 258
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 259
    return-object v1
.end method

.method public blacklist onClearTimerRecordingResult(II)V
    .registers 4

    .line 275
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onClearTimerRecordingResult(II)V

    .line 276
    return-void
.end method

.method public blacklist onOneTouchRecordResult(II)V
    .registers 4

    .line 264
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordResult(II)V

    .line 265
    return-void
.end method

.method public blacklist onTimerRecordingResult(II)V
    .registers 4

    .line 269
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    .line 270
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    move-result-object p2

    .line 269
    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onTimerRecordingResult(ILandroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V

    .line 271
    return-void
.end method
