.class public Lcom/android/server/tare/Analyst;
.super Ljava/lang/Object;
.source "Analyst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Analyst$Report;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final NUM_PERIODS_TO_RETAIN:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPeriodIndex:I

.field private final mReports:[Lcom/android/server/tare/Analyst$Report;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/Analyst;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Analyst;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_29

    const/4 v1, 0x3

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    sput-boolean v0, Lcom/android/server/tare/Analyst;->DEBUG:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    .line 94
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/tare/Analyst$Report;

    iput-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    return-void
.end method

.method private padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "targetLength"    # I

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    .line 198
    .local v0, "padding":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 19
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Reports:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 204
    const-string v2, "      Total Discharge"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 205
    const/16 v2, 0x2f

    .line 206
    .local v2, "statColsLength":I
    const-string v3, "Profit (avg/action : avg/discharge)"

    const/16 v4, 0x2f

    invoke-direct {v0, v3, v4}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 207
    const-string v3, "Loss (avg/action : avg/discharge)"

    invoke-direct {v0, v3, v4}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string v3, "Rewards (avg/reward : avg/discharge)"

    invoke-direct {v0, v3, v4}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 209
    const-string v3, "+Regs (avg/reg : avg/discharge)"

    invoke-direct {v0, v3, v4}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 210
    const-string v3, "-Regs (avg/reg : avg/discharge)"

    invoke-direct {v0, v3, v4}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 212
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_46
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1f4

    .line 213
    iget v6, v0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    sub-int/2addr v6, v3

    add-int/2addr v6, v5

    rem-int/2addr v6, v5

    .line 214
    .local v6, "idx":I
    iget-object v5, v0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v5, v5, v6

    .line 215
    .local v5, "report":Lcom/android/server/tare/Analyst$Report;
    if-nez v5, :cond_58

    .line 216
    move v8, v4

    goto/16 :goto_1ef

    .line 218
    :cond_58
    const-string/jumbo v7, "t-"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 220
    const-string v7, ":  "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget v7, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xf

    invoke-direct {v0, v7, v8}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget v7, v5, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const-string v11, "%s (%s : %s)"

    const-string v13, "N/A"

    if-lez v7, :cond_bd

    .line 223
    iget v7, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v7, :cond_91

    .line 224
    iget-wide v14, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iget v7, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    move-object/from16 v16, v13

    int-to-long v12, v7

    div-long/2addr v14, v12

    invoke-static {v14, v15}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_95

    .line 225
    :cond_91
    move-object/from16 v16, v13

    move-object/from16 v7, v16

    :goto_95
    nop

    .line 226
    .local v7, "perDischarge":Ljava/lang/String;
    new-array v12, v10, [Ljava/lang/Object;

    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 227
    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iget v15, v5, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    int-to-long v9, v15

    div-long/2addr v13, v9

    .line 228
    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v12, v10

    aput-object v7, v12, v8

    .line 226
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v4}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 231
    .end local v7    # "perDischarge":Ljava/lang/String;
    move-object/from16 v7, v16

    goto :goto_c8

    .line 232
    :cond_bd
    move-object/from16 v16, v13

    move-object/from16 v7, v16

    invoke-direct {v0, v7, v4}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 234
    :goto_c8
    iget v9, v5, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    if-lez v9, :cond_108

    .line 235
    iget v9, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v9, :cond_db

    .line 236
    iget-wide v9, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iget v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    int-to-long v12, v12

    div-long/2addr v9, v12

    invoke-static {v9, v10}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_dc

    .line 237
    :cond_db
    move-object v9, v7

    :goto_dc
    nop

    .line 238
    .local v9, "perDischarge":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 239
    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v12, v13

    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iget v10, v5, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    move-object/from16 v16, v5

    .end local v5    # "report":Lcom/android/server/tare/Analyst$Report;
    .local v16, "report":Lcom/android/server/tare/Analyst$Report;
    int-to-long v4, v10

    div-long/2addr v13, v4

    .line 240
    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v12, v5

    aput-object v9, v12, v8

    .line 238
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-direct {v0, v4, v5}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .end local v9    # "perDischarge":Ljava/lang/String;
    goto :goto_112

    .line 244
    .end local v16    # "report":Lcom/android/server/tare/Analyst$Report;
    .restart local v5    # "report":Lcom/android/server/tare/Analyst$Report;
    :cond_108
    move-object/from16 v16, v5

    move v5, v4

    .end local v5    # "report":Lcom/android/server/tare/Analyst$Report;
    .restart local v16    # "report":Lcom/android/server/tare/Analyst$Report;
    invoke-direct {v0, v7, v5}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    :goto_112
    move-object/from16 v4, v16

    .end local v16    # "report":Lcom/android/server/tare/Analyst$Report;
    .local v4, "report":Lcom/android/server/tare/Analyst$Report;
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    if-lez v5, :cond_153

    .line 247
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_127

    .line 248
    iget-wide v9, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    int-to-long v12, v5

    div-long/2addr v9, v12

    invoke-static {v9, v10}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_128

    .line 249
    :cond_127
    move-object v5, v7

    :goto_128
    nop

    .line 250
    .local v5, "perDischarge":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-wide v12, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 251
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v10, v12

    iget-wide v12, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iget v9, v4, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    int-to-long v8, v9

    div-long/2addr v12, v8

    .line 252
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v10, v9

    const/4 v8, 0x2

    aput-object v5, v10, v8

    .line 250
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-direct {v0, v8, v9}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .end local v5    # "perDischarge":Ljava/lang/String;
    goto :goto_15c

    .line 256
    :cond_153
    const/16 v9, 0x2f

    invoke-direct {v0, v7, v9}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 258
    :goto_15c
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    if-lez v5, :cond_19b

    .line 259
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_16f

    .line 260
    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    int-to-long v12, v5

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_170

    .line 262
    :cond_16f
    move-object v5, v7

    :goto_170
    nop

    .line 263
    .restart local v5    # "perDischarge":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    iget-wide v12, v4, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 264
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    iget-wide v12, v4, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iget v8, v4, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    int-to-long v14, v8

    div-long/2addr v12, v14

    .line 265
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v9, v12

    const/4 v8, 0x2

    aput-object v5, v9, v8

    .line 263
    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-direct {v0, v8, v9}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 269
    .end local v5    # "perDischarge":Ljava/lang/String;
    goto :goto_1a4

    .line 270
    :cond_19b
    const/16 v9, 0x2f

    invoke-direct {v0, v7, v9}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 272
    :goto_1a4
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    if-lez v5, :cond_1e3

    .line 273
    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v5, :cond_1b7

    .line 274
    iget-wide v7, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iget v5, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    int-to-long v9, v5

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v13

    goto :goto_1b8

    .line 276
    :cond_1b7
    move-object v13, v7

    :goto_1b8
    move-object v5, v13

    .line 277
    .restart local v5    # "perDischarge":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 278
    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-wide v8, v4, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iget v10, v4, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    int-to-long v12, v10

    div-long/2addr v8, v12

    .line 279
    invoke-static {v8, v9}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object v5, v7, v8

    .line 277
    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-direct {v0, v7, v8}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    .end local v5    # "perDischarge":Ljava/lang/String;
    goto :goto_1ec

    .line 284
    :cond_1e3
    const/16 v8, 0x2f

    invoke-direct {v0, v7, v8}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 286
    :goto_1ec
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 212
    .end local v4    # "report":Lcom/android/server/tare/Analyst$Report;
    .end local v6    # "idx":I
    :goto_1ef
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto/16 :goto_46

    .line 288
    .end local v3    # "r":I
    :cond_1f4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 289
    return-void
.end method

.method getReports()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Analyst$Report;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Analyst$Report;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    if-gt v2, v1, :cond_1a

    .line 101
    iget v3, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    add-int/2addr v3, v2

    rem-int/2addr v3, v1

    .line 102
    .local v3, "idx":I
    iget-object v4, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v4, v4, v3

    .line 103
    .local v4, "report":Lcom/android/server/tare/Analyst$Report;
    if-eqz v4, :cond_17

    .line 104
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v3    # "idx":I
    .end local v4    # "report":Lcom/android/server/tare/Analyst$Report;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 107
    .end local v2    # "i":I
    :cond_1a
    return-object v0
.end method

.method loadReports(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Analyst$Report;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "reports":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Analyst$Report;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    .local v0, "numReports":I
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const/16 v2, 0x8

    if-ge v1, v2, :cond_27

    .line 118
    if-ge v1, v0, :cond_1f

    .line 119
    iget-object v2, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/Analyst$Report;

    aput-object v3, v2, v1

    goto :goto_24

    .line 121
    :cond_1f
    iget-object v2, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 117
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 124
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method noteBatteryLevelChange(I)V
    .registers 5
    .param p1, "newBatteryLevel"    # I

    .line 127
    const/16 v0, 0x64

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_26

    iget v0, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge v0, p1, :cond_26

    .line 129
    iget v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    .line 130
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v2, v1, v0

    if-eqz v2, :cond_26

    .line 131
    aget-object v0, v1, v0

    .line 132
    .local v0, "report":Lcom/android/server/tare/Analyst$Report;
    invoke-static {v0}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$mclear(Lcom/android/server/tare/Analyst$Report;)V

    .line 133
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    .line 134
    return-void

    .line 138
    .end local v0    # "report":Lcom/android/server/tare/Analyst$Report;
    :cond_26
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    if-nez v2, :cond_3c

    .line 139
    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    .line 140
    .restart local v0    # "report":Lcom/android/server/tare/Analyst$Report;
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v2, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aput-object v0, v1, v2

    .line 141
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    .line 142
    return-void

    .line 145
    .end local v0    # "report":Lcom/android/server/tare/Analyst$Report;
    :cond_3c
    aget-object v0, v0, v1

    .line 146
    .restart local v0    # "report":Lcom/android/server/tare/Analyst$Report;
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge p1, v1, :cond_4a

    .line 147
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    iget v2, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 149
    :cond_4a
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    .line 150
    return-void
.end method

.method noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .registers 9
    .param p1, "transaction"    # Lcom/android/server/tare/Ledger$Transaction;

    .line 153
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    if-nez v2, :cond_f

    .line 154
    new-instance v2, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v2}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    aput-object v2, v0, v1

    .line 156
    :cond_f
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v0, v0, v1

    .line 157
    .local v0, "report":Lcom/android/server/tare/Analyst$Report;
    iget v1, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v1}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v1

    const-wide/16 v2, 0x0

    sparse-switch v1, :sswitch_data_94

    goto/16 :goto_92

    .line 161
    :sswitch_22
    iget-wide v1, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    neg-long v1, v1

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3d

    .line 162
    iget-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    neg-long v3, v3

    iget-wide v5, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 163
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    goto :goto_92

    .line 164
    :cond_3d
    iget-wide v1, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    neg-long v1, v1

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_92

    .line 165
    iget-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    iget-wide v5, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 166
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    goto :goto_92

    .line 170
    :sswitch_57
    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_6b

    .line 171
    iget-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 172
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    goto :goto_92

    .line 173
    :cond_6b
    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_92

    .line 174
    iget-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 175
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    goto :goto_92

    .line 179
    :sswitch_7f
    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_92

    .line 180
    iget-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iget-wide v3, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 181
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    .line 185
    :cond_92
    :goto_92
    return-void

    nop

    :sswitch_data_94
    .sparse-switch
        -0x80000000 -> :sswitch_7f
        0x0 -> :sswitch_57
        0x40000000 -> :sswitch_22
    .end sparse-switch
.end method

.method tearDown()V
    .registers 4

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 189
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "i":I
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    .line 192
    return-void
.end method
