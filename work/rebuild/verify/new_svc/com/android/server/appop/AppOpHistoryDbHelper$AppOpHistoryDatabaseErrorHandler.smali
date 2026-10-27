.class public final Lcom/android/server/appop/AppOpHistoryDbHelper$AppOpHistoryDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "AppOpHistoryDbHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpHistoryDbHelper$AppOpHistoryDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app ops database "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got corrupted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOpHistoryDbHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryDbHelper$AppOpHistoryDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-virtual {p0, p1}, Landroid/database/DefaultDatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
