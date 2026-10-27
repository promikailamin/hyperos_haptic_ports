.class public abstract Lcom/android/server/appop/AppOpHistoryQueryHelper;
.super Ljava/lang/Object;
.source "AppOpHistoryQueryHelper.java"


# direct methods
.method public static bindValues(Landroid/database/sqlite/SQLiteRawStatement;Ljava/util/List;)V
    .registers 8

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_6a

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    .line 61
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->getColumnFilter()Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "AppOpHistoryQueryHelper"

    packed-switch v3, :pswitch_data_6c

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown sql condition "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 68
    :pswitch_30
    const-string v2, "No binding for In operator"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :pswitch_36
    add-int/lit8 v3, v1, 0x1

    .line 67
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->getFilterValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 66
    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    goto :goto_67

    :pswitch_48
    add-int/lit8 v3, v1, 0x1

    .line 65
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->getFilterValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    goto :goto_67

    :pswitch_5a
    add-int/lit8 v3, v1, 0x1

    .line 63
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->getFilterValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_48
        :pswitch_5a
        :pswitch_36
        :pswitch_48
        :pswitch_36
        :pswitch_48
        :pswitch_30
    .end packed-switch
.end method

.method public static buildSqlQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 8

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_30

    .line 78
    const-string p0, " WHERE "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p0, :cond_30

    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_2d

    .line 83
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_30
    if-eqz p2, :cond_44

    .line 89
    const-string p0, " ORDER BY "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3f

    .line 90
    const-string p0, " ASC "

    goto :goto_41

    :cond_3f
    const-string p0, " DESC "

    :goto_41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    if-lez p4, :cond_4e

    .line 93
    const-string p0, " LIMIT "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;
    .registers 5

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_39

    .line 38
    new-instance p0, Landroid/util/IntArray;

    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    const/4 v0, 0x0

    .line 39
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_38

    .line 42
    :try_start_e
    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_14} :catch_18

    .line 47
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_35

    .line 44
    :catch_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop name `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "` is not recognized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOpHistoryQueryHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_38
    return-object p0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public static prepareConditions(JJIILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;I)Ljava/util/List;
    .registers 15

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_19

    .line 111
    new-instance v3, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object v4, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->BEGIN_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    cmp-long p0, p2, v1

    if-lez p0, :cond_2b

    .line 114
    new-instance p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object p1, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->END_TIME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    if-eqz p9, :cond_3b

    .line 117
    new-instance p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object p1, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_FLAGS:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    if-eqz p4, :cond_bc

    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_4b

    .line 122
    new-instance p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object p1, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->PACKAGE_NAME:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-direct {p0, p1, p6}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_5d

    .line 125
    new-instance p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object p1, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->UID:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_6b

    .line 129
    new-instance p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object p1, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->ATTR_TAG:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-direct {p0, p1, p7}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6b
    const/4 p0, 0x0

    const/4 p1, 0x1

    if-eqz p8, :cond_88

    .line 132
    invoke-virtual {p8}, Landroid/util/IntArray;->size()I

    move-result p2

    if-ne p2, p1, :cond_88

    .line 133
    new-instance p1, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object p2, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_CODE_EQUAL:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-virtual {p8, p0}, Landroid/util/IntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_88
    if-eqz p8, :cond_bc

    .line 134
    invoke-virtual {p8}, Landroid/util/IntArray;->size()I

    move-result p2

    if-le p2, p1, :cond_bc

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {p8}, Landroid/util/IntArray;->size()I

    move-result p2

    :goto_99
    if-ge p0, p2, :cond_ae

    .line 138
    invoke-virtual {p8, p0}, Landroid/util/IntArray;->get(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p2, -0x1

    if-ge p0, p3, :cond_ab

    .line 140
    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ab
    add-int/lit8 p0, p0, 0x1

    goto :goto_99

    .line 143
    :cond_ae
    new-instance p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;

    sget-object p2, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;-><init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bc
    return-object v0
.end method
