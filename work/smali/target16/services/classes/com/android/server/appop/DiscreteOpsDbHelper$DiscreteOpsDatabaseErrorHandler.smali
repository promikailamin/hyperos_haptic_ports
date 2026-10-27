.class public final Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DiscreteOpsDbHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 284
    const-string v0, "DiscreteOpsDbHelper"

    const-string v1, "discrete ops database got corrupted."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-virtual {p0, p1}, Landroid/database/DefaultDatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
