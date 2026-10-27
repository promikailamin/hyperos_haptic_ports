.class public abstract Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "UsageStatsProtoV2.java"


# static fields
.field public static final ONE_HOUR_MS:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method public static getOffsetTimestamp(JJ)J
    .registers 4

    .line 0
    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_a

    const-wide/16 p2, 0x1

    add-long/2addr p0, p2

    :cond_a
    return-wide p0
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 9

    const-wide v0, 0x10500000001L

    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    .line 141
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 142
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-nez v4, :cond_2b

    .line 144
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 145
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b

    .line 148
    :cond_26
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 152
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_53

    if-eq v2, v3, :cond_48

    const/4 v5, 0x2

    if-eq v2, v5, :cond_38

    goto :goto_2b

    :cond_38
    const-wide v5, 0x20b00000002L

    .line 160
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 161
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V

    .line 162
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2b

    .line 155
    :cond_48
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 157
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b

    :cond_53
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 12

    .line 197
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 198
    new-instance v1, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    const-wide v2, 0x10b00000001L

    .line 199
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    .line 201
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 202
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 206
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7b

    const/4 v6, 0x1

    if-eq v4, v6, :cond_66

    const/4 v6, 0x2

    if-eq v4, v6, :cond_57

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3f

    const/4 v6, 0x5

    if-eq v4, v6, :cond_34

    goto :goto_1d

    :cond_34
    const-wide v4, 0x10800000005L

    .line 229
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    move v5, v4

    goto :goto_1d

    :cond_3f
    const-wide v6, 0x10500000004L

    .line 225
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    iput v4, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_1d

    :cond_4b
    const-wide v6, 0x10300000003L

    .line 221
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_1d

    .line 217
    :cond_57
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v8, 0x10300000002L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_1d

    .line 209
    :cond_66
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 210
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v4

    .line 211
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 212
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 213
    iget v1, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v1, v4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    move-object v1, v4

    goto :goto_1d

    :cond_7b
    if-eqz v5, :cond_81

    .line 234
    iget-object p0, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_81
    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 8

    .line 114
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 116
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    goto :goto_4

    :cond_12
    const-wide v2, 0x10300000002L

    .line 122
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    goto :goto_4

    :catch_1e
    move-exception p0

    goto :goto_30

    :cond_20
    const-wide v2, 0x10500000001L

    .line 118
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    goto :goto_4

    .line 126
    :cond_2c
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_1e

    return-void

    .line 131
    :goto_30
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read event tracker "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsageStatsProtoV2"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 175
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, v0, :cond_25

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    goto :goto_3

    :cond_10
    const-wide v3, 0x10500000002L

    .line 182
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_3

    :cond_1a
    const-wide v2, 0x10500000001L

    .line 177
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_3

    :cond_25
    if-eq v2, v0, :cond_2a

    .line 187
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2a
    return-void
.end method

.method public static loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V
    .registers 7

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    move v2, v1

    .line 615
    :goto_7
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, v1, :cond_2c

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    goto :goto_7

    :cond_14
    const-wide v3, 0x20900000002L

    .line 620
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_21
    const-wide v2, 0x10500000001L

    .line 617
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_7

    :cond_2c
    if-eq v2, v1, :cond_31

    .line 624
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .registers 7

    .line 243
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 245
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_e6

    :pswitch_c
    goto :goto_5

    :pswitch_d
    const-wide v1, 0x10b0000000eL

    .line 293
    :try_start_12
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 295
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUserInteractionEventExtras(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    move-result-object v3

    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 296
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_5

    :catch_20
    move-exception v1

    .line 298
    const-string v2, "UsageStatsProtoV2"

    const-string v3, "Unable to read some user interaction extras from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_29
    const-wide v1, 0x1050000000dL

    .line 288
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    goto :goto_5

    :pswitch_37
    const-wide v1, 0x1050000000cL

    .line 284
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    goto :goto_5

    :pswitch_45
    const-wide v1, 0x1050000000bL

    .line 280
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    goto :goto_5

    :pswitch_53
    const-wide v1, 0x1050000000aL

    .line 277
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_5

    :pswitch_5f
    const-wide v1, 0x10500000009L

    .line 273
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    goto :goto_5

    :pswitch_6d
    const-wide v1, 0x10500000008L

    .line 270
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_5

    :pswitch_79
    const-wide v1, 0x10500000007L

    .line 266
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    goto/16 :goto_5

    .line 262
    :pswitch_88
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    .line 263
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto/16 :goto_5

    :pswitch_99
    const-wide v1, 0x10500000005L

    .line 259
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_5

    :pswitch_a6
    const-wide v1, 0x10500000004L

    .line 256
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_5

    :pswitch_b3
    const-wide v1, 0x10300000003L

    .line 253
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_5

    :pswitch_c1
    const-wide v1, 0x10500000002L

    .line 250
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    goto/16 :goto_5

    :pswitch_d0
    const-wide v1, 0x10500000001L

    .line 247
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    goto/16 :goto_5

    .line 302
    :pswitch_df
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_e5

    const/4 v0, 0x0

    :cond_e5
    return-object v0

    :pswitch_data_e6
    .packed-switch -0x1
        :pswitch_df
        :pswitch_c
        :pswitch_d0
        :pswitch_c1
        :pswitch_b3
        :pswitch_a6
        :pswitch_99
        :pswitch_88
        :pswitch_79
        :pswitch_6d
        :pswitch_5f
        :pswitch_53
        :pswitch_45
        :pswitch_37
        :pswitch_29
        :pswitch_d
    .end packed-switch
.end method

.method public static parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .registers 6

    .line 855
    const-string v0, ""

    const-wide/16 v1, 0x0

    .line 857
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    goto :goto_4

    :cond_12
    const-wide v1, 0x10300000002L

    .line 863
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    goto :goto_4

    :cond_1c
    const-wide v3, 0x10900000001L

    .line 859
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 866
    :cond_26
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .registers 5

    .line 687
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 689
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_e2

    :pswitch_c
    goto :goto_5

    :pswitch_d
    const-wide v1, 0x10c0000000eL

    .line 729
    invoke-static {p0, v1, v2}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEventExtras(Landroid/util/proto/ProtoInputStream;J)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_5

    :pswitch_19
    const-wide v1, 0x1090000000cL

    .line 726
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_5

    :pswitch_25
    const-wide v1, 0x1090000000bL

    .line 723
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_5

    :pswitch_31
    const-wide v1, 0x1050000000aL

    .line 720
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_5

    :pswitch_3d
    const-wide v1, 0x10900000009L

    .line 716
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_5

    :pswitch_49
    const-wide v1, 0x10500000008L

    .line 713
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_5

    :pswitch_55
    const-wide v1, 0x10900000007L

    .line 710
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_5

    .line 706
    :pswitch_61
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    .line 707
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_5

    :pswitch_71
    const-wide v1, 0x10500000005L

    .line 703
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto :goto_5

    :pswitch_7d
    const-wide v1, 0x10500000004L

    .line 700
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_5

    :pswitch_8a
    const-wide v1, 0x10300000003L

    .line 697
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_5

    :pswitch_97
    const-wide v1, 0x10900000002L

    .line 694
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_a4
    const-wide v1, 0x10900000001L

    .line 691
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_5

    .line 733
    :pswitch_b1
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq p0, v1, :cond_cf

    const/16 v1, 0x8

    const-string v2, ""

    if-eq p0, v1, :cond_c8

    const/16 v1, 0xc

    if-eq p0, v1, :cond_c1

    goto :goto_da

    .line 745
    :cond_c1
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p0, :cond_da

    .line 746
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_da

    .line 740
    :cond_c8
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p0, :cond_da

    .line 741
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_da

    .line 735
    :cond_cf
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p0, :cond_da

    .line 736
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 750
    :cond_da
    :goto_da
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez p0, :cond_e0

    const/4 p0, 0x0

    return-object p0

    :cond_e0
    return-object v0

    nop

    :pswitch_data_e2
    .packed-switch -0x1
        :pswitch_b1
        :pswitch_c
        :pswitch_a4
        :pswitch_97
        :pswitch_8a
        :pswitch_7d
        :pswitch_71
        :pswitch_61
        :pswitch_55
        :pswitch_49
        :pswitch_3d
        :pswitch_31
        :pswitch_25
        :pswitch_19
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static parsePendingEventExtras(Landroid/util/proto/ProtoInputStream;J)Landroid/os/PersistableBundle;
    .registers 4

    .line 967
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .registers 8

    .line 56
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 59
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8e

    packed-switch v1, :pswitch_data_b8

    goto :goto_5

    :pswitch_19
    const-wide v1, 0x1030000000cL

    .line 102
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_5

    :pswitch_26
    const-wide v1, 0x1030000000bL

    .line 98
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_5

    :pswitch_32
    const-wide v1, 0x1030000000aL

    .line 94
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_5

    :pswitch_3f
    const-wide v1, 0x10300000009L

    .line 90
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_5

    :pswitch_4b
    const-wide v1, 0x10300000008L

    .line 86
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_5

    :pswitch_58
    const-wide v1, 0x20b00000007L

    .line 78
    :try_start_5d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 79
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 80
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_68

    goto :goto_5

    .line 82
    :catch_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_81
    const-wide v1, 0x10500000006L

    .line 73
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto/16 :goto_5

    :cond_8e
    const-wide v1, 0x10300000004L

    .line 69
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_5

    :cond_9b
    const-wide v1, 0x10300000003L

    .line 65
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_5

    :cond_a9
    const-wide v3, 0x10500000001L

    .line 61
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    goto/16 :goto_5

    :cond_b7
    return-object v0

    :pswitch_data_b8
    .packed-switch 0x6
        :pswitch_81
        :pswitch_58
        :pswitch_4b
        :pswitch_3f
        :pswitch_32
        :pswitch_26
        :pswitch_19
    .end packed-switch
.end method

.method public static parseUserInteractionEventExtras(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;
    .registers 6

    .line 924
    new-instance v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;-><init>()V

    .line 927
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_22

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    goto :goto_5

    :cond_16
    const-wide v1, 0x10c00000003L

    .line 938
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mTokenizedExtras:[B

    goto :goto_5

    :cond_22
    const-wide v3, 0x10500000002L

    .line 933
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    goto :goto_5

    :cond_2f
    const-wide v3, 0x10500000001L

    .line 929
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    goto :goto_5

    :cond_3c
    return-object v0
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    .registers 10

    .line 465
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 467
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_d6

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_b9

    const/4 v2, 0x3

    if-eq p0, v2, :cond_ac

    packed-switch p0, :pswitch_data_f4

    const-string v2, "UsageStatsProtoV2"

    packed-switch p0, :pswitch_data_100

    goto :goto_5

    :pswitch_1e
    if-eqz p2, :cond_21

    goto :goto_5

    :cond_21
    const-wide v3, 0x20b00000016L

    .line 522
    :try_start_26
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 524
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    .line 525
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_5

    .line 527
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3a} :catch_3b

    goto :goto_5

    :catch_3b
    move-exception p0

    .line 530
    const-string v1, "Unable to read some events from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_42
    const-wide v3, 0x20b00000015L

    .line 509
    :try_start_47
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 511
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 512
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_51} :catch_52

    goto :goto_5

    :catch_52
    move-exception p0

    .line 514
    const-string v1, "Unable to read some configuration stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_59
    const-wide v3, 0x20b00000014L

    .line 496
    :try_start_5e
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 498
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object p0

    .line 499
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 500
    iget v3, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    if-eq v3, v1, :cond_5

    .line 501
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_74} :catch_75

    goto :goto_5

    :catch_75
    move-exception p0

    .line 504
    const-string v1, "Unable to read some usage stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_7c
    const-wide v1, 0x10b0000000dL

    .line 491
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_88
    const-wide v1, 0x10b0000000cL

    .line 487
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_94
    const-wide v1, 0x10b0000000bL

    .line 483
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_a0
    const-wide v1, 0x10b0000000aL

    .line 479
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :cond_ac
    const-wide v1, 0x10500000003L

    .line 476
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto/16 :goto_5

    :cond_b9
    const-wide v1, 0x10500000002L

    .line 473
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_5

    .line 469
    :cond_c6
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_5

    .line 535
    :cond_d6
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_dd
    if-ge p2, p0, :cond_f2

    .line 537
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 538
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 539
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_dd

    :cond_f2
    return-void

    nop

    :pswitch_data_f4
    .packed-switch 0xa
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_7c
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x14
        :pswitch_59
        :pswitch_42
        :pswitch_1e
    .end packed-switch
.end method

.method public static readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 7

    .line 879
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 881
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_4e

    const/16 v1, 0x18

    if-eq p0, v1, :cond_11

    goto :goto_5

    :cond_11
    const-wide v1, 0x20b00000018L

    .line 884
    :try_start_16
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 885
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object p0

    .line 886
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 887
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 888
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_44} :catch_45

    goto :goto_5

    :catch_45
    move-exception p0

    .line 891
    const-string v1, "UsageStatsProtoV2"

    const-string v2, "Unable to parse some package usage from proto."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_4e
    return-void
.end method

.method public static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 5

    .line 639
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 641
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_31

    const/4 v1, 0x1

    if-eq p0, v1, :cond_25

    const/4 v1, 0x2

    if-eq p0, v1, :cond_13

    goto :goto_5

    :cond_13
    const-wide v1, 0x20b00000002L

    .line 646
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 647
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V

    .line 648
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_5

    :cond_25
    const-wide v1, 0x10500000001L

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    goto :goto_5

    :cond_31
    return-void
.end method

.method public static readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    .registers 5

    .line 763
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 765
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_30

    const/16 v1, 0x17

    if-eq p0, v1, :cond_11

    goto :goto_5

    :cond_11
    const-wide v1, 0x20b00000017L

    .line 768
    :try_start_16
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 769
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    .line 770
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_5

    .line 772
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_5

    :catch_27
    move-exception p0

    .line 775
    const-string v1, "UsageStatsProtoV2"

    const-string v2, "Unable to parse some pending events from proto."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_30
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 12

    .line 554
    const-string v1, "UsageStatsProtoV2"

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 555
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 556
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v3

    const-wide v5, 0x10300000001L

    .line 555
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000002L

    .line 557
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    invoke-virtual {v2, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    .line 558
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    invoke-virtual {v2, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 561
    :try_start_2b
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000aL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 563
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000bL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 565
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000cL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 567
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000dL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_63} :catch_64

    goto :goto_6b

    :catch_64
    move-exception v0

    move-object p0, v0

    .line 570
    const-string v0, "Unable to write some interval stats trackers to proto."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :goto_6b
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_73
    if-ge v4, p0, :cond_98

    const-wide v5, 0x20b00000014L

    .line 576
    :try_start_7a
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 577
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-static {v2, v7, v8, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    .line 578
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_8e} :catch_8f

    goto :goto_95

    :catch_8f
    move-exception v0

    .line 580
    const-string v5, "Unable to write some usage stats to proto."

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 583
    :cond_98
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v4, v3

    :goto_9f
    if-ge v4, p0, :cond_d2

    .line 585
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    const-wide v5, 0x20b00000015L

    .line 587
    :try_start_b4
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 588
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v9, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/ConfigurationStats;

    invoke-static {v2, v7, v8, v9, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V

    .line 589
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_c8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b4 .. :try_end_c8} :catch_c9

    goto :goto_cf

    :catch_c9
    move-exception v0

    .line 591
    const-string v5, "Unable to write some configuration stats to proto."

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_cf
    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    .line 594
    :cond_d2
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    :goto_d8
    if-ge v3, p0, :cond_fb

    const-wide v4, 0x20b00000016L

    .line 597
    :try_start_df
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 598
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v3}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    .line 599
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_df .. :try_end_f1} :catch_f2

    goto :goto_f8

    :catch_f2
    move-exception v0

    .line 601
    const-string v4, "Unable to write some events to proto."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f8
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 605
    :cond_fb
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 10

    if-eqz p1, :cond_47

    .line 357
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_47

    .line 360
    :cond_b
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_47

    .line 362
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 363
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_44

    .line 364
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_44

    :cond_2b
    const-wide v4, 0x20b00000007L

    .line 367
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    add-int/lit8 v2, v2, 0x1

    .line 368
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 369
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V

    .line 370
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_47
    :goto_47
    return-void
.end method

.method public static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V
    .registers 15

    .line 394
    iget-object v0, p3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x10300000002L

    .line 396
    iget-wide v6, p3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide p0, 0x10300000003L

    .line 398
    iget-wide v0, p3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {v3, p0, p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p0, 0x10500000004L

    .line 400
    iget p2, p3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {v3, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p0, 0x10800000005L

    .line 401
    invoke-virtual {v3, p0, p1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 8

    .line 349
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000001L

    .line 350
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    .line 351
    invoke-virtual {p0, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 352
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V
    .registers 10

    .line 376
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    .line 378
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 379
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-gtz v3, :cond_12

    goto :goto_30

    :cond_12
    const-wide v4, 0x20b00000002L

    .line 383
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    add-int/lit8 v2, v2, 0x1

    .line 384
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 386
    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 387
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_33
    return-void
.end method

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .registers 15

    .line 406
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 407
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    const-wide v2, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    .line 408
    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1b
    const-wide v5, 0x10300000003L

    .line 410
    iget-wide v7, p3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide p0, 0x10500000004L

    .line 411
    iget p2, p3, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {v4, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p0, 0x10500000005L

    .line 412
    iget p2, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v4, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p0, 0x1050000000aL

    .line 413
    iget p2, p3, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v4, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 414
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq p0, v1, :cond_53

    const-wide p1, 0x1050000000bL

    add-int/lit8 p0, p0, 0x1

    .line 415
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 418
    :cond_53
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq p0, v1, :cond_61

    const-wide p1, 0x1050000000cL

    add-int/lit8 p0, p0, 0x1

    .line 419
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 421
    :cond_61
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_c1

    const/16 p1, 0x1e

    if-eq p0, p1, :cond_b2

    const/4 p1, 0x7

    if-eq p0, p1, :cond_a5

    const/16 p1, 0x8

    if-eq p0, p1, :cond_96

    const/16 p1, 0xb

    if-eq p0, p1, :cond_89

    const/16 p1, 0xc

    if-eq p0, p1, :cond_7a

    goto :goto_cd

    .line 443
    :cond_7a
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq p0, v1, :cond_cd

    const-wide p1, 0x10500000009L

    add-int/lit8 p0, p0, 0x1

    .line 444
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 428
    :cond_89
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p0, :cond_cd

    const-wide p1, 0x10500000008L

    .line 429
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 433
    :cond_96
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq p0, v1, :cond_cd

    const-wide p1, 0x10500000007L

    add-int/lit8 p0, p0, 0x1

    .line 434
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 449
    :cond_a5
    iget-object p0, p3, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    if-eqz p0, :cond_cd

    const-wide p1, 0x10b0000000eL

    .line 450
    invoke-static {v4, p1, p2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUserInteractionEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;)V

    return-void

    .line 438
    :cond_b2
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq p0, v1, :cond_cd

    const-wide p1, 0x1050000000dL

    add-int/lit8 p0, p0, 0x1

    .line 439
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 423
    :cond_c1
    iget-object p0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p0, :cond_cd

    const-wide p1, 0x10b00000006L

    .line 424
    invoke-virtual {p0, v4, p1, p2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_cd
    :goto_cd
    return-void
.end method

.method public static writeGlobalComponentUsage(Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 10

    .line 908
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 910
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 911
    array-length p1, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p1, :cond_59

    .line 913
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    goto :goto_56

    :cond_26
    const-wide v2, 0x20b00000018L

    .line 914
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 915
    aget-object v4, p0, v1

    .line 916
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    .line 915
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 917
    aget-object v4, p0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0x10300000002L

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 918
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_59
    return-void
.end method

.method public static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 15

    .line 664
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 665
    iget p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    const-wide v1, 0x10500000001L

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 667
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, p0, :cond_53

    const-wide v5, 0x20b00000002L

    .line 669
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 670
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 671
    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 673
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 674
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_3a
    if-ge v9, v8, :cond_4d

    .line 676
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-wide v11, 0x20900000002L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 678
    :cond_4d
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 681
    :cond_53
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 9

    .line 311
    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_f

    .line 314
    invoke-static {p3, p4, p5, p6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_f
    return-void
.end method

.method public static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .registers 6

    const-wide v0, 0x10900000001L

    .line 786
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 787
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-wide v1, 0x10900000002L

    .line 788
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_16
    const-wide v0, 0x10300000003L

    .line 790
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000004L

    .line 791
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 792
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000aL

    .line 793
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 794
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_4a

    const-wide v1, 0x1090000000bL

    .line 795
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 797
    :cond_4a
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_56

    const-wide v1, 0x1090000000cL

    .line 798
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 800
    :cond_56
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_92

    const/16 v1, 0x8

    if-eq v0, v1, :cond_85

    const/16 v1, 0xb

    if-eq v0, v1, :cond_78

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6b

    goto :goto_b3

    .line 817
    :cond_6b
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p1, :cond_b3

    const-wide v0, 0x10900000009L

    .line 818
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    .line 807
    :cond_78
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p1, :cond_b3

    const-wide v0, 0x10500000008L

    .line 808
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 812
    :cond_85
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p1, :cond_b3

    const-wide v0, 0x10900000007L

    .line 813
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    .line 823
    :cond_92
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    if-eqz v0, :cond_b3

    const-wide v0, 0x10c0000000eL

    .line 824
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/os/PersistableBundle;)V

    return-void

    .line 802
    :cond_a7
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_b3

    const-wide v0, 0x10b00000006L

    .line 803
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public static writePendingEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/os/PersistableBundle;)V
    .registers 5

    .line 975
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 976
    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 977
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void
.end method

.method public static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .registers 7

    .line 838
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 839
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_2d

    const-wide v2, 0x20b00000017L

    .line 842
    :try_start_11
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 843
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    .line 844
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v2

    .line 846
    const-string v3, "UsageStatsProtoV2"

    const-string v4, "Unable to write some pending events to proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 849
    :cond_2d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .registers 11

    .line 326
    iget v1, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    add-int/lit8 v1, v1, 0x1

    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000003L

    .line 327
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-object v0, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10300000004L

    .line 329
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000008L

    .line 330
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10300000009L

    .line 332
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000aL

    .line 334
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x1030000000bL

    .line 336
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000cL

    .line 337
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10500000006L

    .line 339
    iget v3, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 341
    :try_start_5e
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static writeUserInteractionEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;)V
    .registers 7

    .line 950
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 951
    iget v0, p3, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 953
    iget v0, p3, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10c00000003L

    .line 956
    iget-object p3, p3, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mTokenizedExtras:[B

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 959
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
