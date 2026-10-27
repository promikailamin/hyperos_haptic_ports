.class public Lcom/android/internal/os/BatteryStatsImpl$UID1000data;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UID1000data"
.end annotation


# static fields
.field static blacklist FullWifiLockOff:I

.field static blacklist FullWifiLockOn:I

.field static blacklist GpsOff:I

.field static blacklist GpsOn:I

.field static blacklist Lday:J

.field static blacklist Lh:J

.field static blacklist Lm:J

.field static blacklist Ls:J

.field static blacklist audioOff:I

.field static blacklist audioOn:I

.field static blacklist blueScanOff:I

.field static blacklist blueScanOn:I

.field static blacklist evString:[Ljava/lang/String;

.field static blacklist sensorOff:I

.field static blacklist sensorOn:I

.field static blacklist wifiScanOff:I

.field static blacklist wifiScanOn:I


# instance fields
.field public blacklist crt:J

.field public blacklist dataist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist head:I

.field public blacklist historyCrt:J

.field public blacklist historydex:I

.field public blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 8917
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lday:J

    .line 8918
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lh:J

    .line 8919
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lm:J

    .line 8920
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Ls:J

    .line 8921
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->audioOn:I

    .line 8922
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->audioOff:I

    .line 8923
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->blueScanOn:I

    .line 8924
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->blueScanOff:I

    .line 8925
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->wifiScanOn:I

    .line 8926
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->wifiScanOff:I

    .line 8927
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->sensorOn:I

    .line 8928
    const/4 v0, 0x7

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->sensorOff:I

    .line 8929
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->FullWifiLockOn:I

    .line 8930
    const/16 v0, 0x9

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->FullWifiLockOff:I

    .line 8931
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->GpsOn:I

    .line 8932
    const/16 v0, 0xb

    sput v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->GpsOff:I

    .line 8933
    const-string v1, "audioOn"

    const-string v2, "audioOff"

    const-string v3, "blueScanOn"

    const-string v4, "blueScanOff"

    const-string/jumbo v5, "wifiScanOn"

    const-string/jumbo v6, "wifiScanOff"

    const-string/jumbo v7, "sensorOn"

    const-string/jumbo v8, "sensorOff"

    const-string v9, "FullWifiLockOn"

    const-string v10, "FullWifiLockOff"

    const-string v11, "GpsOn"

    const-string v12, "GpsOff"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->evString:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 8946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->name:Ljava/lang/String;

    .line 8940
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    .line 8942
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    .line 8943
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historyCrt:J

    .line 8944
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    .line 8947
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->crt:J

    .line 8948
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->name:Ljava/lang/String;

    .line 8949
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    .line 8950
    return-void
.end method


# virtual methods
.method public blacklist addData(J)V
    .registers 7
    .param p1, "data"    # J

    .line 8984
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_26

    .line 8985
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8986
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    if-ne v0, v2, :cond_1e

    .line 8987
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    .line 8989
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 8990
    .local v0, "t":I
    if-ne v0, v1, :cond_23

    const/4 v0, 0x0

    .line 8991
    :cond_23
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    .line 8992
    .end local v0    # "t":I
    goto :goto_2f

    :cond_26
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8993
    :goto_2f
    return-void
.end method

.method public blacklist dumpData(Ljava/io/PrintWriter;JJJJ)Z
    .registers 37
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ctime"    # J
    .param p4, "rtime"    # J
    .param p6, "HisCTime"    # J
    .param p8, "HisRTime"    # J

    .line 8997
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->crt:J

    cmp-long v4, p4, v2

    if-gez v4, :cond_14

    .line 8998
    const-string/jumbo v2, "testtttt2"

    const-string v3, "e"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8999
    const/4 v2, 0x0

    return v2

    .line 9001
    :cond_14
    sub-long v2, p4, v2

    sub-long v2, p2, v2

    .line 9002
    .local v2, "walltime":J
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historyCrt:J

    sub-long v4, p8, v4

    sub-long v4, p6, v4

    .line 9003
    .local v4, "hiswall":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 9004
    .local v6, "date":Ljava/util/Date;
    const/4 v7, 0x0

    .local v7, "a":I
    const/4 v8, 0x0

    .local v8, "b":I
    const/4 v9, 0x0

    .local v9, "c":I
    const/4 v10, 0x0

    .line 9005
    .local v10, "d":I
    iget v11, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "m":I
    :goto_2a
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_13c

    .line 9006
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v11, v13, :cond_3b

    const/4 v11, 0x0

    .line 9007
    :cond_3b
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 9008
    .local v13, "z":J
    const/16 v15, 0x24

    shl-long v16, v13, v15

    ushr-long v15, v16, v15

    .line 9010
    .local v15, "det":J
    move/from16 v17, v7

    .end local v7    # "a":I
    .local v17, "a":I
    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x3e8

    if-gt v11, v7, :cond_77

    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    if-lt v11, v7, :cond_77

    move/from16 v22, v8

    .end local v8    # "b":I
    .local v22, "b":I
    iget-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historyCrt:J

    cmp-long v7, v7, v18

    if-lez v7, :cond_74

    .line 9011
    const/16 v7, 0x2a

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 9012
    add-long v7, v4, v15

    .line 9013
    .local v7, "point":J
    invoke-virtual {v6, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 9014
    move-wide/from16 v23, v4

    .end local v4    # "hiswall":J
    .local v23, "hiswall":J
    rem-long v4, v7, v20

    long-to-int v4, v4

    .line 9015
    .end local v7    # "point":J
    .end local v17    # "a":I
    .local v4, "a":I
    move v7, v4

    goto :goto_83

    .line 9010
    .end local v23    # "hiswall":J
    .local v4, "hiswall":J
    .restart local v17    # "a":I
    :cond_74
    move-wide/from16 v23, v4

    .end local v4    # "hiswall":J
    .restart local v23    # "hiswall":J
    goto :goto_7b

    .end local v22    # "b":I
    .end local v23    # "hiswall":J
    .restart local v4    # "hiswall":J
    .restart local v8    # "b":I
    :cond_77
    move-wide/from16 v23, v4

    move/from16 v22, v8

    .line 9016
    .end local v4    # "hiswall":J
    .end local v8    # "b":I
    .restart local v22    # "b":I
    .restart local v23    # "hiswall":J
    :goto_7b
    add-long v4, v2, v15

    .line 9017
    .local v4, "point":J
    invoke-virtual {v6, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 9018
    rem-long v7, v4, v20

    long-to-int v7, v7

    .line 9020
    .end local v4    # "point":J
    .end local v17    # "a":I
    .local v7, "a":I
    :goto_83
    invoke-virtual {v6}, Ljava/util/Date;->getSeconds()I

    move-result v8

    .line 9021
    .end local v22    # "b":I
    .restart local v8    # "b":I
    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v9

    .line 9022
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v10

    .line 9023
    const/16 v4, 0xa

    const/16 v5, 0x30

    if-ge v10, v4, :cond_98

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    :cond_98
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 9024
    if-ge v9, v4, :cond_a8

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_aa

    :cond_a8
    const/16 v4, 0x30

    :goto_aa
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 9025
    const/16 v5, 0xa

    if-ge v8, v5, :cond_b7

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_b7
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 9026
    if-ge v7, v5, :cond_c7

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_c9

    :cond_c7
    const/16 v4, 0x30

    :goto_c9
    const/16 v5, 0x64

    if-ge v7, v5, :cond_d0

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_d0
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9027
    const-string v4, "--->"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9028
    const/16 v4, 0x3c

    ushr-long v4, v13, v4

    .line 9029
    .local v4, "y1":J
    const/16 v17, 0x4

    shl-long v20, v13, v17

    const/16 v17, 0x20

    move-wide/from16 v25, v2

    .end local v2    # "walltime":J
    .local v25, "walltime":J
    ushr-long v2, v20, v17

    long-to-int v2, v2

    .line 9030
    .local v2, "y2":I
    cmp-long v3, v4, v18

    if-nez v3, :cond_f3

    .line 9031
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->evString:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_132

    .line 9032
    :cond_f3
    const-wide/16 v17, 0x1

    cmp-long v3, v4, v17

    if-nez v3, :cond_103

    .line 9033
    const-string/jumbo v3, "wakelock_on_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9034
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_132

    .line 9035
    :cond_103
    const-wide/16 v17, 0x2

    cmp-long v3, v4, v17

    if-nez v3, :cond_113

    .line 9036
    const-string/jumbo v3, "wakelock_off_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9037
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_132

    .line 9038
    :cond_113
    const-wide/16 v17, 0x3

    cmp-long v3, v4, v17

    if-nez v3, :cond_123

    .line 9039
    const-string/jumbo v3, "sensor_on_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9040
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_132

    .line 9041
    :cond_123
    const-wide/16 v17, 0x4

    cmp-long v3, v4, v17

    if-nez v3, :cond_132

    .line 9042
    const-string/jumbo v3, "sensor_off_type:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9043
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 9005
    .end local v2    # "y2":I
    .end local v4    # "y1":J
    .end local v13    # "z":J
    .end local v15    # "det":J
    :cond_132
    :goto_132
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, v23

    move-wide/from16 v2, v25

    goto/16 :goto_2a

    .end local v23    # "hiswall":J
    .end local v25    # "walltime":J
    .local v2, "walltime":J
    .local v4, "hiswall":J
    :cond_13c
    move-wide/from16 v25, v2

    .line 9046
    .end local v2    # "walltime":J
    .end local v11    # "i":I
    .end local v12    # "m":I
    .restart local v25    # "walltime":J
    const/4 v2, 0x1

    return v2
.end method

.method blacklist noteEvent(IJI)Z
    .registers 13
    .param p1, "event"    # I
    .param p2, "time"    # J
    .param p4, "type"    # I

    .line 8965
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->crt:J

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    if-gez v2, :cond_10

    .line 8966
    const-string/jumbo v0, "testtttt"

    const-string v1, "e"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8967
    return v3

    .line 8969
    :cond_10
    sub-long v0, p2, v0

    .line 8970
    .local v0, "ve":J
    sget-wide v4, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->Lday:J

    div-long v4, v0, v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-lez v2, :cond_1d

    return v3

    .line 8971
    :cond_1d
    int-to-long v2, p1

    .line 8972
    .local v2, "eve":J
    const/16 v4, 0x1c

    shl-long v4, v2, v4

    or-long/2addr v0, v4

    .line 8973
    if-lez p4, :cond_2b

    .line 8974
    int-to-long v4, p4

    .line 8975
    .local v4, "lt":J
    const/16 v6, 0x3c

    shl-long v6, v4, v6

    or-long/2addr v0, v6

    .line 8977
    .end local v4    # "lt":J
    :cond_2b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->addData(J)V

    .line 8978
    const/4 v4, 0x1

    return v4
.end method

.method public blacklist prepareToWrite(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 8953
    .local p1, "as":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8954
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 8955
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_17

    const/4 v0, 0x0

    .line 8956
    :cond_17
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->historydex:I

    if-gt v0, v2, :cond_20

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->head:I

    if-lt v0, v2, :cond_20

    goto :goto_2b

    .line 8958
    :cond_20
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UID1000data;->dataist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8954
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 8961
    .end local v0    # "i":I
    .end local v1    # "m":I
    :cond_30
    return-object p1
.end method
