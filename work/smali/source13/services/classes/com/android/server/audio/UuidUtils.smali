.class Lcom/android/server/audio/UuidUtils;
.super Ljava/lang/Object;
.source "UuidUtils.java"


# static fields
.field private static final LSB_PREFIX_BT:J = 0x4254000000000000L

.field private static final LSB_PREFIX_MASK:J = -0x1000000000000L

.field private static final LSB_SUFFIX_MASK:J = 0xffffffffffffL

.field public static final STANDALONE_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "AudioService.UuidUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uuidFromAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;
    .registers 7
    .param p0, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 48
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_66

    .line 68
    return-object v1

    .line 51
    :sswitch_9
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1e

    .line 53
    return-object v1

    .line 55
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-wide/high16 v2, 0x4254000000000000L    # 3.4359738368E11

    .line 58
    .local v2, "lsb":J
    :try_start_33
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_3b} :catch_63

    or-long v1, v2, v4

    .line 61
    .end local v2    # "lsb":J
    .local v1, "lsb":J
    nop

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuidFromAudioDeviceAttributes lsb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioService.UuidUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v3, Ljava/util/UUID;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    return-object v3

    .line 59
    .end local v1    # "lsb":J
    .restart local v2    # "lsb":J
    :catch_63
    move-exception v4

    .line 60
    .local v4, "e":Ljava/lang/NumberFormatException;
    return-object v1

    nop

    :sswitch_data_66
    .sparse-switch
        0x80 -> :sswitch_9
        0x20000000 -> :sswitch_9
    .end sparse-switch
.end method
