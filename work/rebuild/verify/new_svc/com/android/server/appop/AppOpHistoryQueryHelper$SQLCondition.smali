.class public final Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;
.super Ljava/lang/Object;
.source "AppOpHistoryQueryHelper.java"


# instance fields
.field public final mColumnFilter:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

.field public final mFilterValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;Ljava/lang/Object;)V
    .registers 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    .line 158
    iput-object p2, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->mFilterValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getColumnFilter()Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    return-object p0
.end method

.method public getFilterValue()Ljava/lang/Object;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->mFilterValue:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    sget-object v1, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    if-ne v0, v1, :cond_24

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryQueryHelper$SQLCondition;->mFilterValue:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpHistoryQueryHelper$ColumnFilter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
