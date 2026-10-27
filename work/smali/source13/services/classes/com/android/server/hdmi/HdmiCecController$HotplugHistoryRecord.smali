.class final Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HotplugHistoryRecord"
.end annotation


# instance fields
.field private final mConnected:Z

.field private final mPort:I


# direct methods
.method constructor <init>(IZ)V
    .registers 3
    .param p1, "port"    # I
    .param p2, "connected"    # Z

    .line 1304
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    .line 1305
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    .line 1306
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    .line 1307
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 1311
    const-string v0, "[H]"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1312
    const-string v0, " time="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    const-string v0, " hotplug port="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1316
    const-string v0, " connected="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1318
    return-void
.end method
