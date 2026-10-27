.class Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;
.super Landroid/os/ShellCommand;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 1199
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1202
    if-nez p1, :cond_7

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1206
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1208
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1209
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_6c

    :cond_1d
    goto :goto_32

    :sswitch_1e
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_33

    :sswitch_28
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v4

    goto :goto_33

    :goto_32
    move v2, v5

    :goto_33
    const-string v6, "Invalid sensor"

    const/4 v7, 0x4

    packed-switch v2, :pswitch_data_76

    .line 1231
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1221
    :pswitch_3e
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msensorStrToId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I

    move-result v2

    .line 1222
    .local v2, "sensor":I
    if-nez v2, :cond_4e

    .line 1223
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    return v5

    .line 1227
    :cond_4e
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {v3, v0, v7, v2, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    .line 1229
    .end local v2    # "sensor":I
    goto :goto_6a

    .line 1211
    :pswitch_54
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msensorStrToId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I

    move-result v2

    .line 1212
    .restart local v2    # "sensor":I
    if-nez v2, :cond_64

    .line 1213
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    return v5

    .line 1217
    :cond_64
    iget-object v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {v5, v0, v7, v2, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    .line 1219
    .end local v2    # "sensor":I
    nop

    .line 1234
    :goto_6a
    return v4

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x4d6ada7d -> :sswitch_28
        0x639e22e8 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_54
        :pswitch_3e
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1241
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Sensor privacy manager (sensor_privacy) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    const-string v2, "  enable USER_ID SENSOR"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    const-string v2, "    Enable privacy for a certain sensor."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    const-string v2, "  disable USER_ID SENSOR"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    const-string v2, "    Disable privacy for a certain sensor."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    return-void
.end method
