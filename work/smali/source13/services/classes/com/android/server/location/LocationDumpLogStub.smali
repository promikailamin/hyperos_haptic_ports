.class public interface abstract Lcom/android/server/location/LocationDumpLogStub;
.super Ljava/lang/Object;
.source "LocationDumpLogStub.java"


# static fields
.field public static final CONFIG_NMEA_LEN:Ljava/lang/String; = "NMEA_LEN"

.field public static final DEFAULT_FLP:I = 0x1040281

.field public static final DEFAULT_GEOCODER:I = 0x1040282

.field public static final DEFAULT_GEOFENCE:I = 0x1040283

.field public static final DEFAULT_NLP:I = 0x104029b

.field public static final TYPE_FUSED:Ljava/lang/String; = "fused"

.field public static final TYPE_GEOCODER:Ljava/lang/String; = "geocoder"

.field public static final TYPE_GEOFENCE:Ljava/lang/String; = "geofence"

.field public static final TYPE_GLP_DUMP:I = 0x2

.field public static final TYPE_GLP_EN_DUMP:I = 0x3

.field public static final TYPE_LMS_DUMP:I = 0x1

.field public static final TYPE_NETWORK:Ljava/lang/String; = "network"

.field public static final TYPE_NMEA_DUMP:I = 0x4


# direct methods
.method public static getInstance()Lcom/android/server/location/LocationDumpLogStub;
    .registers 1

    .line 27
    const-class v0, Lcom/android/server/location/LocationDumpLogStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationDumpLogStub;

    return-object v0
.end method


# virtual methods
.method public abstract addToBugreport(ILjava/lang/String;)V
.end method

.method public abstract clearData()V
.end method

.method public abstract dump(ILjava/io/PrintWriter;)V
.end method

.method public getConfig(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "defaultConfig"    # Ljava/lang/String;

    .line 35
    return-object p3
.end method

.method public getDefaultProviderName(Ljava/lang/String;)I
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_46

    :cond_7
    goto :goto_31

    :sswitch_8
    const-string/jumbo v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_32

    :sswitch_13
    const-string v0, "geofence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_32

    :sswitch_1d
    const-string v0, "geocoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_32

    :sswitch_27
    const-string v0, "fused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_32

    :goto_31
    const/4 v0, -0x1

    :goto_32
    packed-switch v0, :pswitch_data_58

    .line 54
    const v0, 0x1040283

    return v0

    .line 51
    :pswitch_39
    const v0, 0x1040282

    return v0

    .line 49
    :pswitch_3d
    const v0, 0x1040281

    return v0

    .line 47
    :pswitch_41
    const v0, 0x104029b

    return v0

    nop

    :sswitch_data_46
    .sparse-switch
        0x5d44923 -> :sswitch_27
        0x6d7f6b74 -> :sswitch_1d
        0x6da54b80 -> :sswitch_13
        0x6de15a2e -> :sswitch_8
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3d
        :pswitch_39
    .end packed-switch
.end method

.method public getRecordLoseLocation()Z
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setLength(II)V
.end method

.method public abstract setRecordLoseLocation(Z)V
.end method
