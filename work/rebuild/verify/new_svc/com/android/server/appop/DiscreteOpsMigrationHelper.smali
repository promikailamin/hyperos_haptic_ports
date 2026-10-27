.class public abstract Lcom/android/server/appop/DiscreteOpsMigrationHelper;
.super Ljava/lang/Object;
.source "DiscreteOpsMigrationHelper.java"


# direct methods
.method public static synthetic $r8$lambda$5KccGh2ZepeUwGNKWIU-tVQn1F8(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V
    .registers 5

    .line 204
    iget-object p3, p3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RbSXLLcmh5TF2eZHMt-P7jQ9rUo(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V
    .registers 12

    .line 206
    iget-object p5, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {p5, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFquJKaVjn1Oa6YsPc7UofBgw6M(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 24

    .line 208
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 210
    new-instance v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 212
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v9, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v10, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    int-to-long v11, v4

    iget-wide v13, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    move-object/from16 v6, p2

    move-wide v15, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v16}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    move-object/from16 v1, p4

    .line 217
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_37
    return-void
.end method

.method public static synthetic $r8$lambda$cXPbgwd46zQjFAmaWCA8CyWISQY(Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V
    .registers 4

    .line 203
    iget-object p2, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kLNNt_jytRZmpUGBi3vT_hF1rdA(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;)V
    .registers 6

    .line 205
    iget-object p4, p4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static convertXmlToSqlDiscreteOps(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)Ljava/util/List;
    .registers 3

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 202
    :cond_c
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static getAggregatedAppOpAccessEvents(Ljava/util/List;)Ljava/util/List;
    .registers 23

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 233
    new-instance v3, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 234
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v10

    .line 237
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v11

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v12

    .line 238
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAccessTime()J

    move-result-wide v14

    .line 239
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v16

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v3 .. v21}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJII)V

    .line 233
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_50
    return-object v0
.end method

.method public static migrateFromSqliteToUnifiedSchemaSqlite(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Lcom/android/server/appop/AppOpHistoryHelper;)V
    .registers 4

    .line 77
    const-string v0, "DiscreteOpsMigration"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->getAllDiscreteOps()Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->getAggregatedAppOpAccessEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v1}, Lcom/android/server/appop/AppOpHistoryHelper;->migrateDiscreteAppOpHistory(Ljava/util/List;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->deleteDatabase()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 82
    const-string p1, "Couldn\'t delete appops sql database."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    goto :goto_1c

    :cond_1b
    return-void

    .line 85
    :goto_1c
    const-string/jumbo v1, "migrateFromSqliteToUnifiedSchemaSqlite failed."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->deleteDatabase()Z

    return-void
.end method

.method public static migrateFromXmlToUnifiedSchemaSqlite(Lcom/android/server/appop/DiscreteOpsXmlRegistry;Lcom/android/server/appop/AppOpHistoryHelper;)V
    .registers 4

    .line 56
    const-string v0, "DiscreteOpsMigration"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->convertXmlToSqlDiscreteOps(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->getAggregatedAppOpAccessEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Lcom/android/server/appop/AppOpHistoryHelper;->migrateDiscreteAppOpHistory(Ljava/util/List;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->deleteDiscreteOpsDir()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 63
    const-string p1, "Couldn\'t delete appops xml directories."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    goto :goto_20

    :cond_1f
    return-void

    .line 66
    :goto_20
    const-string/jumbo v1, "migrateFromXmlToUnifiedSchemaSqlite failed."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->deleteDiscreteOpsDir()Z

    return-void
.end method
