.class final Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "UsageStatsProtoV2.java"


# static fields
.field private static final ONE_HOUR_MS:J

.field private static final TAG:Ljava/lang/String; = "UsageStatsProtoV2"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOffsetTimestamp(JJ)J
    .registers 8
    .param p0, "timestamp"    # J
    .param p2, "offset"    # J

    .line 303
    sub-long v0, p0, p2

    .line 305
    .local v0, "offsetTimestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_d

    :cond_c
    move-wide v2, v0

    :goto_d
    return-wide v2
.end method

.method private static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 135
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 136
    .local v2, "actionToken":I
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 137
    .local v3, "counts":Landroid/util/SparseIntArray;
    if-nez v3, :cond_2d

    .line 138
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v4

    .line 139
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2d

    .line 142
    .end local v2    # "actionToken":I
    .end local v3    # "counts":Landroid/util/SparseIntArray;
    :cond_27
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v2

    .line 146
    .restart local v3    # "counts":Landroid/util/SparseIntArray;
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    :pswitch_34
    goto :goto_52

    .line 154
    :pswitch_35
    const-wide v4, 0x20b00000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 155
    .local v4, "token":J
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V

    .line 156
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 157
    goto :goto_52

    .line 149
    .end local v4    # "token":J
    :pswitch_45
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 151
    .restart local v2    # "actionToken":I
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    goto :goto_52

    .line 159
    .end local v2    # "actionToken":I
    :pswitch_51
    return-void

    :goto_52
    goto :goto_2d

    nop

    :pswitch_data_54
    .packed-switch -0x1
        :pswitch_51
        :pswitch_34
        :pswitch_45
        :pswitch_35
    .end packed-switch
.end method

.method private static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "configActive":Z
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 192
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v2}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 193
    .local v2, "configStats":Landroid/app/usage/ConfigurationStats;
    const-wide v3, 0x10b00000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 195
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 196
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v2

    .line 200
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    packed-switch v5, :pswitch_data_74

    :pswitch_24
    goto :goto_72

    .line 223
    :pswitch_25
    const-wide v5, 0x10800000005L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v0

    .line 225
    goto :goto_72

    .line 219
    :pswitch_2f
    const-wide v5, 0x10500000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 221
    goto :goto_72

    .line 215
    :pswitch_3b
    const-wide v5, 0x10300000003L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 217
    goto :goto_72

    .line 211
    :pswitch_47
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 213
    goto :goto_72

    .line 203
    :pswitch_56
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 204
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    .line 205
    .local v5, "temp":Landroid/app/usage/ConfigurationStats;
    iget-wide v6, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 206
    iget-wide v6, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 207
    iget v6, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v6, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 208
    move-object v2, v5

    .line 209
    goto :goto_72

    .line 227
    .end local v5    # "temp":Landroid/app/usage/ConfigurationStats;
    :pswitch_6b
    if-eqz v0, :cond_71

    .line 228
    iget-object v3, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 230
    :cond_71
    return-void

    :goto_72
    goto :goto_1d

    nop

    :pswitch_data_74
    .packed-switch -0x1
        :pswitch_6b
        :pswitch_24
        :pswitch_56
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_25
    .end packed-switch
.end method

.method private static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .param p3, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 108
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 110
    .local v0, "token":J
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    :pswitch_b
    goto :goto_28

    .line 116
    :pswitch_c
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 118
    goto :goto_28

    .line 112
    :pswitch_18
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 114
    goto :goto_28

    .line 120
    :pswitch_24
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_29

    .line 121
    return-void

    :goto_28
    goto :goto_4

    .line 124
    .end local v0    # "token":J
    :catch_29
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read event tracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    return-void

    nop

    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_24
        :pswitch_b
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method

.method private static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V
    .registers 6
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "counts"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const/4 v0, -0x1

    .line 167
    .local v0, "categoryToken":I
    const/4 v1, 0x0

    .line 169
    .local v1, "count":I
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :pswitch_9
    goto :goto_28

    .line 176
    :pswitch_a
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 178
    goto :goto_28

    .line 171
    :pswitch_14
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 174
    .end local v0    # "categoryToken":I
    .local v2, "categoryToken":I
    move v0, v2

    goto :goto_28

    .line 180
    .end local v2    # "categoryToken":I
    .restart local v0    # "categoryToken":I
    :pswitch_21
    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    :cond_27
    return-void

    :goto_28
    goto :goto_2

    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_21
        :pswitch_9
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method private static loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V
    .registers 6
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    .local p1, "tokensToPackagesMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, -0x1

    .line 591
    .local v0, "key":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v1, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    :pswitch_d
    goto :goto_2f

    .line 598
    :pswitch_e
    const-wide v2, 0x20900000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    goto :goto_2f

    .line 595
    :pswitch_1b
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 596
    .end local v0    # "key":I
    .local v2, "key":I
    move v0, v2

    goto :goto_2f

    .line 601
    .end local v2    # "key":I
    .restart local v0    # "key":I
    :pswitch_28
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    .line 602
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    :cond_2e
    return-void

    :goto_2f
    goto :goto_6

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_28
        :pswitch_d
        :pswitch_1b
        :pswitch_e
    .end packed-switch
.end method

.method private static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .registers 7
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "beginTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 239
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_d0

    :pswitch_c
    goto/16 :goto_ce

    .line 282
    :pswitch_e
    const-wide v1, 0x1050000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 284
    goto/16 :goto_ce

    .line 278
    :pswitch_1d
    const-wide v1, 0x1050000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 280
    goto/16 :goto_ce

    .line 274
    :pswitch_2c
    const-wide v1, 0x1050000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 276
    goto/16 :goto_ce

    .line 271
    :pswitch_3b
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 272
    goto/16 :goto_ce

    .line 267
    :pswitch_48
    const-wide v1, 0x10500000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 269
    goto/16 :goto_ce

    .line 264
    :pswitch_57
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 265
    goto/16 :goto_ce

    .line 260
    :pswitch_64
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 262
    goto :goto_ce

    .line 256
    :pswitch_72
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 257
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 258
    goto :goto_ce

    .line 253
    :pswitch_84
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 254
    goto :goto_ce

    .line 250
    :pswitch_90
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 251
    goto :goto_ce

    .line 247
    :pswitch_9c
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 248
    goto :goto_ce

    .line 244
    :pswitch_a9
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 245
    goto :goto_ce

    .line 241
    :pswitch_b7
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 242
    goto :goto_ce

    .line 286
    :pswitch_c5
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_cc

    const/4 v1, 0x0

    goto :goto_cd

    :cond_cc
    move-object v1, v0

    :goto_cd
    return-object v1

    :goto_ce
    goto/16 :goto_5

    :pswitch_data_d0
    .packed-switch -0x1
        :pswitch_c5
        :pswitch_c
        :pswitch_b7
        :pswitch_a9
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_72
        :pswitch_64
        :pswitch_57
        :pswitch_48
        :pswitch_3b
        :pswitch_2c
        :pswitch_1d
        :pswitch_e
    .end packed-switch
.end method

.method private static parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .registers 6
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    const-string v0, ""

    .line 825
    .local v0, "packageName":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 827
    .local v1, "time":J
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    packed-switch v3, :pswitch_data_2c

    :pswitch_b
    goto :goto_2a

    .line 833
    :pswitch_c
    const-wide v3, 0x10300000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    .line 834
    goto :goto_2a

    .line 829
    :pswitch_16
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 831
    goto :goto_2a

    .line 836
    :pswitch_20
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :goto_2a
    goto :goto_4

    nop

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_20
        :pswitch_b
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method

.method private static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .registers 5
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 667
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_d6

    :pswitch_c
    goto/16 :goto_d4

    .line 704
    :pswitch_e
    const-wide v1, 0x1090000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 705
    goto/16 :goto_d4

    .line 701
    :pswitch_1b
    const-wide v1, 0x1090000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 702
    goto/16 :goto_d4

    .line 698
    :pswitch_28
    const-wide v1, 0x1050000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 699
    goto/16 :goto_d4

    .line 694
    :pswitch_35
    const-wide v1, 0x10900000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 696
    goto/16 :goto_d4

    .line 691
    :pswitch_42
    const-wide v1, 0x10500000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 692
    goto/16 :goto_d4

    .line 688
    :pswitch_4f
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 689
    goto/16 :goto_d4

    .line 684
    :pswitch_5c
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 685
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 686
    goto/16 :goto_d4

    .line 681
    :pswitch_6f
    const-wide v1, 0x10500000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 682
    goto :goto_d4

    .line 678
    :pswitch_7b
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 679
    goto :goto_d4

    .line 675
    :pswitch_87
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 676
    goto :goto_d4

    .line 672
    :pswitch_93
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 673
    goto :goto_d4

    .line 669
    :pswitch_9f
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 670
    goto :goto_d4

    .line 708
    :pswitch_ab
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const-string v2, ""

    sparse-switch v1, :sswitch_data_f6

    goto :goto_cc

    .line 720
    :sswitch_b3
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v1, :cond_cc

    .line 721
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_cc

    .line 715
    :sswitch_ba
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v1, :cond_cc

    .line 716
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_cc

    .line 710
    :sswitch_c1
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_cc

    .line 711
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 725
    :cond_cc
    :goto_cc
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_d2

    const/4 v1, 0x0

    goto :goto_d3

    :cond_d2
    move-object v1, v0

    :goto_d3
    return-object v1

    :goto_d4
    goto/16 :goto_5

    :pswitch_data_d6
    .packed-switch -0x1
        :pswitch_ab
        :pswitch_c
        :pswitch_9f
        :pswitch_93
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_5c
        :pswitch_4f
        :pswitch_42
        :pswitch_35
        :pswitch_28
        :pswitch_1b
        :pswitch_e
    .end packed-switch

    :sswitch_data_f6
    .sparse-switch
        0x5 -> :sswitch_c1
        0x8 -> :sswitch_ba
        0xc -> :sswitch_b3
    .end sparse-switch
.end method

.method private static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .registers 7
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "beginTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 53
    .local v0, "stats":Landroid/app/usage/UsageStats;
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_c
    goto/16 :goto_b0

    .line 96
    :pswitch_e
    const-wide v1, 0x1030000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 98
    goto/16 :goto_b0

    .line 92
    :pswitch_1c
    const-wide v1, 0x1030000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 94
    goto/16 :goto_b0

    .line 88
    :pswitch_29
    const-wide v1, 0x1030000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 90
    goto/16 :goto_b0

    .line 84
    :pswitch_37
    const-wide v1, 0x10300000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 86
    goto :goto_b0

    .line 80
    :pswitch_43
    const-wide v1, 0x10300000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 82
    goto :goto_b0

    .line 72
    :pswitch_50
    const-wide v1, 0x20b00000007L

    :try_start_55
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 73
    .local v1, "token":J
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_60

    .line 77
    .end local v1    # "token":J
    goto :goto_b0

    .line 75
    :catch_60
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read chooser counts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsProtoV2"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_b0

    .line 67
    :pswitch_7c
    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 69
    goto :goto_b0

    .line 63
    :pswitch_88
    const-wide v1, 0x10300000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 65
    goto :goto_b0

    .line 59
    :pswitch_94
    const-wide v1, 0x10300000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 61
    goto :goto_b0

    .line 55
    :pswitch_a1
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 57
    goto :goto_b0

    .line 100
    :pswitch_af
    return-object v0

    :goto_b0
    goto/16 :goto_5

    :pswitch_data_b2
    .packed-switch -0x1
        :pswitch_af
        :pswitch_c
        :pswitch_a1
        :pswitch_c
        :pswitch_94
        :pswitch_88
        :pswitch_c
        :pswitch_7c
        :pswitch_50
        :pswitch_43
        :pswitch_37
        :pswitch_29
        :pswitch_1c
        :pswitch_e
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    .registers 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 445
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const-string v2, "UsageStatsProtoV2"

    sparse-switch v1, :sswitch_data_ea

    goto/16 :goto_e8

    .line 496
    :sswitch_10
    if-eqz p2, :cond_14

    .line 497
    goto/16 :goto_e8

    .line 500
    :cond_14
    const-wide v3, 0x20b00000016L

    :try_start_19
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 502
    .local v3, "eventsToken":J
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 503
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 504
    if-eqz v1, :cond_2d

    .line 505
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v1}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2d} :catch_2f

    .line 509
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v3    # "eventsToken":J
    :cond_2d
    goto/16 :goto_e8

    .line 507
    :catch_2f
    move-exception v1

    .line 508
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Unable to read some events from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_e8

    .line 487
    :sswitch_37
    const-wide v3, 0x20b00000015L

    :try_start_3c
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 489
    .local v3, "configsToken":J
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 490
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_48

    .line 493
    .end local v3    # "configsToken":J
    goto/16 :goto_e8

    .line 491
    :catch_48
    move-exception v1

    .line 492
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "Unable to read some configuration stats from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_e8

    .line 474
    :sswitch_50
    const-wide v3, 0x20b00000014L

    :try_start_55
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 476
    .local v3, "packagesToken":J
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object v1

    .line 477
    .local v1, "usageStats":Landroid/app/usage/UsageStats;
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 478
    iget v5, v1, Landroid/app/usage/UsageStats;->mPackageToken:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6e

    .line 479
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    iget v6, v1, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_6e} :catch_70

    .line 483
    .end local v1    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v3    # "packagesToken":J
    :cond_6e
    goto/16 :goto_e8

    .line 481
    :catch_70
    move-exception v1

    .line 482
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Unable to read some usage stats from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_e8

    .line 469
    :sswitch_78
    const-wide v1, 0x10b0000000dL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 471
    goto :goto_e8

    .line 465
    :sswitch_83
    const-wide v1, 0x10b0000000cL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 467
    goto :goto_e8

    .line 461
    :sswitch_8e
    const-wide v1, 0x10b0000000bL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 463
    goto :goto_e8

    .line 457
    :sswitch_99
    const-wide v1, 0x10b0000000aL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 459
    goto :goto_e8

    .line 454
    :sswitch_a4
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 455
    goto :goto_e8

    .line 451
    :sswitch_b0
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 452
    goto :goto_e8

    .line 447
    :sswitch_bc
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 449
    goto :goto_e8

    .line 513
    :sswitch_cb
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 514
    .local v1, "usageStatsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d2
    if-ge v2, v1, :cond_e7

    .line 515
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 516
    .local v3, "usageStats":Landroid/app/usage/UsageStats;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 517
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 514
    .end local v3    # "usageStats":Landroid/app/usage/UsageStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 519
    .end local v2    # "i":I
    :cond_e7
    return-void

    .end local v1    # "usageStatsSize":I
    :goto_e8
    goto/16 :goto_5

    :sswitch_data_ea
    .sparse-switch
        -0x1 -> :sswitch_cb
        0x1 -> :sswitch_bc
        0x2 -> :sswitch_b0
        0x3 -> :sswitch_a4
        0xa -> :sswitch_99
        0xb -> :sswitch_8e
        0xc -> :sswitch_83
        0xd -> :sswitch_78
        0x14 -> :sswitch_50
        0x15 -> :sswitch_37
        0x16 -> :sswitch_10
    .end sparse-switch
.end method

.method static readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    .local p1, "lastTimeComponentUsedGlobal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 851
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    sparse-switch v1, :sswitch_data_4c

    goto :goto_4b

    .line 854
    :sswitch_d
    const-wide v1, 0x20b00000018L

    :try_start_12
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 855
    .local v1, "token":J
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object v3

    .line 856
    .local v3, "usage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 857
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_40

    .line 858
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_40} :catch_41

    .line 862
    .end local v1    # "token":J
    .end local v3    # "usage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_40
    goto :goto_4b

    .line 860
    :catch_41
    move-exception v1

    .line 861
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsProtoV2"

    const-string v3, "Unable to parse some package usage from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_4b

    .line 865
    :sswitch_4a
    return-void

    :goto_4b
    goto :goto_5

    :sswitch_data_4c
    .sparse-switch
        -0x1 -> :sswitch_4a
        0x18 -> :sswitch_d
    .end sparse-switch
.end method

.method static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 619
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    :pswitch_c
    goto :goto_2c

    .line 624
    :pswitch_d
    const-wide v1, 0x20b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 625
    .local v1, "token":J
    iget-object v3, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V

    .line 626
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 627
    goto :goto_2c

    .line 621
    .end local v1    # "token":J
    :pswitch_1f
    const-wide v1, 0x10500000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    .line 622
    goto :goto_2c

    .line 629
    :pswitch_2b
    return-void

    :goto_2c
    goto :goto_5

    nop

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_2b
        :pswitch_c
        :pswitch_1f
        :pswitch_d
    .end packed-switch
.end method

.method static readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    .local p1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 740
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e

    goto :goto_2d

    .line 743
    :sswitch_d
    const-wide v1, 0x20b00000017L

    :try_start_12
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 744
    .local v1, "token":J
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 745
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 746
    if-eqz v3, :cond_22

    .line 747
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_22} :catch_23

    .line 751
    .end local v1    # "token":J
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_22
    goto :goto_2d

    .line 749
    :catch_23
    move-exception v1

    .line 750
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsProtoV2"

    const-string v3, "Unable to parse some pending events from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2d

    .line 754
    :sswitch_2c
    return-void

    :goto_2d
    goto :goto_5

    :sswitch_data_2e
    .sparse-switch
        -0x1 -> :sswitch_2c
        0x17 -> :sswitch_d
    .end sparse-switch
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 13
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 532
    const-string v0, "UsageStatsProtoV2"

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 533
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 534
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v2

    .line 533
    const-wide v4, 0x10300000001L

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 535
    iget v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v3, 0x10500000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 536
    iget v2, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v3, 0x10500000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 539
    const-wide v3, 0x10b0000000aL

    :try_start_30
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 541
    const-wide v3, 0x10b0000000bL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 543
    const-wide v3, 0x10b0000000cL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 545
    const-wide v3, 0x10b0000000dL

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_6f} :catch_70

    .line 549
    goto :goto_76

    .line 547
    :catch_70
    move-exception v2

    .line 548
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Unable to write some interval stats trackers to proto."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_76
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 552
    .local v2, "statsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7d
    if-ge v3, v2, :cond_a2

    .line 554
    const-wide v4, 0x20b00000014L

    :try_start_84
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 555
    .local v4, "token":J
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v8, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    invoke-static {v1, v6, v7, v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    .line 556
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_98} :catch_99

    .line 559
    .end local v4    # "token":J
    goto :goto_9f

    .line 557
    :catch_99
    move-exception v4

    .line 558
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Unable to write some usage stats to proto."

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 561
    .end local v3    # "i":I
    :cond_a2
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 562
    .local v3, "configCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a9
    if-ge v4, v3, :cond_dc

    .line 563
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    .line 565
    .local v5, "active":Z
    const-wide v6, 0x20b00000015L

    :try_start_be
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 566
    .local v6, "token":J
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v10, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/ConfigurationStats;

    invoke-static {v1, v8, v9, v10, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V

    .line 567
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_d2} :catch_d3

    .line 570
    .end local v6    # "token":J
    goto :goto_d9

    .line 568
    :catch_d3
    move-exception v6

    .line 569
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Unable to write some configuration stats to proto."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    .end local v5    # "active":Z
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_d9
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 572
    .end local v4    # "i":I
    :cond_dc
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4}, Landroid/app/usage/EventList;->size()I

    move-result v4

    .line 573
    .local v4, "eventCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e3
    if-ge v5, v4, :cond_106

    .line 575
    const-wide v6, 0x20b00000016L

    :try_start_ea
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 576
    .local v6, "token":J
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v10, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v10, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v10

    invoke-static {v1, v8, v9, v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    .line 577
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_fc} :catch_fd

    .line 580
    .end local v6    # "token":J
    goto :goto_103

    .line 578
    :catch_fd
    move-exception v6

    .line 579
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Unable to write some events to proto."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_103
    add-int/lit8 v5, v5, 0x1

    goto :goto_e3

    .line 583
    .end local v5    # "i":I
    :cond_106
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 584
    return-void
.end method

.method private static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "stats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 341
    if-eqz p1, :cond_48

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_48

    .line 344
    :cond_b
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 345
    .local v0, "chooserCountSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_47

    .line 346
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 347
    .local v2, "action":I
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 348
    .local v3, "counts":Landroid/util/SparseIntArray;
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_2b

    .line 349
    goto :goto_44

    .line 351
    :cond_2b
    const-wide v4, 0x20b00000007L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 352
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 353
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V

    .line 354
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 345
    .end local v2    # "action":I
    .end local v3    # "counts":Landroid/util/SparseIntArray;
    .end local v4    # "token":J
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 356
    .end local v1    # "i":I
    :cond_47
    return-void

    .line 342
    .end local v0    # "chooserCountSize":I
    :cond_48
    :goto_48
    return-void
.end method

.method private static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V
    .registers 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "statsBeginTime"    # J
    .param p3, "configStats"    # Landroid/app/usage/ConfigurationStats;
    .param p4, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 378
    iget-object v0, p3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 380
    iget-wide v6, p3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-wide v4, 0x10300000002L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 382
    iget-wide v0, p3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 384
    iget v0, p3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 385
    const-wide v0, 0x10800000005L

    invoke-virtual {p0, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 386
    return-void
.end method

.method private static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 10
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "count"    # I
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 334
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 335
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 336
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 337
    return-void
.end method

.method private static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "counts"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 361
    .local v0, "countsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_33

    .line 362
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 363
    .local v2, "category":I
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 364
    .local v3, "count":I
    if-gtz v3, :cond_12

    .line 365
    goto :goto_30

    .line 367
    :cond_12
    const-wide v4, 0x20b00000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 368
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 370
    const-wide v6, 0x10500000002L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 371
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 361
    .end local v2    # "category":I
    .end local v3    # "count":I
    .end local v4    # "token":J
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 373
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method private static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .registers 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "statsBeginTime"    # J
    .param p3, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 390
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 391
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 392
    const-wide v2, 0x10500000002L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 394
    :cond_1d
    const-wide v5, 0x10300000003L

    iget-wide v7, p3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 395
    const-wide v2, 0x10500000004L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 396
    const-wide v2, 0x10500000005L

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 397
    const-wide v2, 0x1050000000aL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 398
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v0, v1, :cond_57

    .line 399
    const-wide v2, 0x1050000000bL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 402
    :cond_57
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v0, v1, :cond_67

    .line 403
    const-wide v2, 0x1050000000cL

    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 405
    :cond_67
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v0, :sswitch_data_be

    goto :goto_bd

    .line 422
    :sswitch_6d
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq v0, v1, :cond_bd

    .line 423
    const-wide v0, 0x1050000000dL

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 427
    :sswitch_7e
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq v0, v1, :cond_bd

    .line 428
    const-wide v0, 0x10500000009L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 412
    :sswitch_8f
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_bd

    .line 413
    const-wide v0, 0x10500000008L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 417
    :sswitch_9e
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq v0, v1, :cond_bd

    .line 418
    const-wide v0, 0x10500000007L

    iget v2, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 407
    :sswitch_af
    iget-object v0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_bd

    .line 408
    iget-object v0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 433
    :cond_bd
    :goto_bd
    return-void

    :sswitch_data_be
    .sparse-switch
        0x5 -> :sswitch_af
        0x8 -> :sswitch_9e
        0xb -> :sswitch_8f
        0xc -> :sswitch_7e
        0x1e -> :sswitch_6d
    .end sparse-switch
.end method

.method static writeGlobalComponentUsage(Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 12
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 878
    .local p1, "lastTimeComponentUsedGlobal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 879
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    nop

    .line 880
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 881
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    array-length v2, v1

    .line 882
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_5a

    .line 883
    aget-object v4, v1, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_27

    goto :goto_57

    .line 884
    :cond_27
    const-wide v4, 0x20b00000018L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 885
    .local v4, "token":J
    const-wide v6, 0x10900000001L

    aget-object v8, v1, v3

    .line 886
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 885
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 887
    const-wide v6, 0x10300000002L

    aget-object v8, v1, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 888
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 882
    .end local v4    # "token":J
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 890
    .end local v3    # "i":I
    :cond_5a
    return-void
.end method

.method static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 16
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 642
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 643
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget v1, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    const-wide v2, 0x10500000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 645
    iget-object v1, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 646
    .local v1, "mapSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v1, :cond_52

    .line 647
    const-wide v5, 0x20b00000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 648
    .local v5, "token":J
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 649
    .local v7, "packageToken":I
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 651
    iget-object v8, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 652
    .local v8, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 653
    .local v9, "listSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_39
    if-ge v10, v9, :cond_4c

    .line 654
    const-wide v11, 0x20900000002L

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 653
    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    .line 656
    .end local v10    # "j":I
    :cond_4c
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 646
    .end local v5    # "token":J
    .end local v7    # "packageToken":I
    .end local v8    # "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "listSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 659
    .end local v4    # "i":I
    :cond_52
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 660
    return-void
.end method

.method static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "timestamp"    # J
    .param p5, "beginTime"    # J

    .line 295
    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    .line 296
    .local v0, "rolloverGracePeriod":J
    cmp-long v2, p3, v0

    if-lez v2, :cond_f

    .line 298
    invoke-static {p3, p4, p5, p6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 300
    :cond_f
    return-void
.end method

.method private static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 761
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 762
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 763
    const-wide v0, 0x10900000002L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 765
    :cond_18
    const-wide v0, 0x10300000003L

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 766
    const-wide v0, 0x10500000004L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 767
    const-wide v0, 0x10500000005L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 768
    const-wide v0, 0x1050000000aL

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 769
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 770
    const-wide v0, 0x1090000000bL

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 772
    :cond_4e
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 773
    const-wide v0, 0x1090000000cL

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 775
    :cond_5c
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v0, :sswitch_data_9e

    goto :goto_9d

    .line 792
    :sswitch_62
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 793
    const-wide v0, 0x10900000009L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_9d

    .line 782
    :sswitch_71
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v0, :cond_9d

    .line 783
    const-wide v0, 0x10500000008L

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9d

    .line 787
    :sswitch_80
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 788
    const-wide v0, 0x10900000007L

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_9d

    .line 777
    :sswitch_8f
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_9d

    .line 778
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 798
    :cond_9d
    :goto_9d
    return-void

    :sswitch_data_9e
    .sparse-switch
        0x5 -> :sswitch_8f
        0x8 -> :sswitch_80
        0xb -> :sswitch_71
        0xc -> :sswitch_62
    .end sparse-switch
.end method

.method static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .registers 8
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 808
    .local p1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 809
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 810
    .local v1, "eventCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2d

    .line 812
    const-wide v3, 0x20b00000017L

    :try_start_11
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 813
    .local v3, "token":J
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    .line 814
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_21} :catch_22

    .line 817
    .end local v3    # "token":J
    goto :goto_2a

    .line 815
    :catch_22
    move-exception v3

    .line 816
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "UsageStatsProtoV2"

    const-string v5, "Unable to write some pending events to proto."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 819
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 820
    return-void
.end method

.method private static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .registers 15
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "beginTime"    # J
    .param p3, "stats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 310
    iget v0, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 311
    iget-wide v6, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    const-wide v4, 0x10300000003L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 313
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    const-wide v2, 0x10300000004L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 314
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    const-wide v5, 0x10300000008L

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 316
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    const-wide v2, 0x10300000009L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 318
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    const-wide v5, 0x1030000000aL

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 320
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    const-wide v2, 0x1030000000bL

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 321
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    const-wide v5, 0x1030000000cL

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 323
    iget v0, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 325
    :try_start_60
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_63} :catch_64

    .line 328
    goto :goto_7f

    .line 326
    :catch_64
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_7f
    return-void
.end method
