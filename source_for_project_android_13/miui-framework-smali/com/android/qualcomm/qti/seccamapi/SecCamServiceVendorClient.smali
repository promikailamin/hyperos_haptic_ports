.class public Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;
.super Ljava/lang/Object;
.source "SecCamServiceVendorClient.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SECCAM-SERVICE-VENDOR-CLIENT"

.field private static final blacklist MSG_DATA_RESULT:Ljava/lang/String; = "result"

.field private static final blacklist MSG_DATA_TZTIMESTAMP:Ljava/lang/String; = "tzTimestamp"

.field public static final blacklist MSG_VENDOR_EXCHANGE_TIMESTAMP:I = 0x7d0

.field public static final blacklist MSG_VENDOR_INIT_BIOMETRICS_BUFFER:I = 0x7d1

.field public static final blacklist MSG_VENDOR_RUN_BIOMETRICS_TEST:I = 0x7d2

.field public static final blacklist MSG_VENDOR_START_SECCAM_USECASE:I = 0x7d3

.field public static final blacklist MSG_VENDOR_STOP_SECCAM_USECASE:I = 0x7d4


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist handleVendorMessage(Landroid/os/Message;)Z
    .registers 8
    .param p0, "msg"    # Landroid/os/Message;

    .line 26
    const-string v0, "SECCAM-SERVICE-VENDOR-CLIENT"

    const-string v1, "handleVendorMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "ret":Z
    iget v2, p0, Landroid/os/Message;->what:I

    const-string v3, "result"

    packed-switch v2, :pswitch_data_ba

    .line 66
    const-string v2, "recieved unhandled command ID"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b9

    .line 59
    :pswitch_16
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 60
    .local v2, "in_bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 61
    .local v3, "result":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVendorMessage(MSG_VENDOR_STOP_SECCAM_USECASE) - result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x1

    .line 63
    goto/16 :goto_b9

    .line 52
    .end local v2    # "in_bundle":Landroid/os/Bundle;
    .end local v3    # "result":J
    :pswitch_37
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 53
    .restart local v2    # "in_bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 54
    .restart local v3    # "result":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVendorMessage(MSG_VENDOR_START_SECCAM_USECASE) - result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_b9

    .line 45
    .end local v2    # "in_bundle":Landroid/os/Bundle;
    .end local v3    # "result":J
    :pswitch_57
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 46
    .restart local v2    # "in_bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 47
    .restart local v3    # "result":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVendorMessage(RUN BIOMETRICS TEST) - result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_b9

    .line 38
    .end local v2    # "in_bundle":Landroid/os/Bundle;
    .end local v3    # "result":J
    :pswitch_77
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 39
    .restart local v2    # "in_bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 40
    .restart local v3    # "result":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVendorMessage(INIT BIOMETRICS BUFFER) - result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x1

    .line 42
    goto :goto_b9

    .line 31
    .end local v2    # "in_bundle":Landroid/os/Bundle;
    .end local v3    # "result":J
    :pswitch_97
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 32
    .restart local v2    # "in_bundle":Landroid/os/Bundle;
    const-string v3, "tzTimestamp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 33
    .restart local v3    # "result":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVendorMessage(EXCHANGE TIMESTAMP) - TA timestamp recieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v1, 0x1

    .line 35
    nop

    .line 69
    .end local v2    # "in_bundle":Landroid/os/Bundle;
    .end local v3    # "result":J
    :goto_b9
    return v1

    :pswitch_data_ba
    .packed-switch 0x7d0
        :pswitch_97
        :pswitch_77
        :pswitch_57
        :pswitch_37
        :pswitch_16
    .end packed-switch
.end method
