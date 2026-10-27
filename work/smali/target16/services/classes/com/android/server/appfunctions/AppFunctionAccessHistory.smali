.class public interface abstract Lcom/android/server/appfunctions/AppFunctionAccessHistory;
.super Ljava/lang/Object;
.source "AppFunctionAccessHistory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract deleteAll()V
.end method

.method public abstract deleteExpiredAppFunctionAccessHistories(J)V
.end method

.method public abstract insertAppFunctionAccessHistory(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)J
.end method

.method public abstract queryAppFunctionAccessHistory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method
