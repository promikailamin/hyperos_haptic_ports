.class public Lmiui/stepcounter/StepProvider$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StepProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/stepcounter/StepProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DBHelper"
.end annotation


# static fields
.field private static blacklist sSingleton:Lmiui/stepcounter/StepProvider$DBHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 358
    const/4 v0, 0x0

    sput-object v0, Lmiui/stepcounter/StepProvider$DBHelper;->sSingleton:Lmiui/stepcounter/StepProvider$DBHelper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 369
    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lmiui/stepcounter/StepProvider$DBHelper;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lmiui/stepcounter/StepProvider$DBHelper;

    monitor-enter v0

    .line 361
    :try_start_3
    sget-object v1, Lmiui/stepcounter/StepProvider$DBHelper;->sSingleton:Lmiui/stepcounter/StepProvider$DBHelper;

    if-nez v1, :cond_12

    .line 362
    new-instance v1, Lmiui/stepcounter/StepProvider$DBHelper;

    const-string v2, "Steps.db"

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {v1, p0, v2, v3, v4}, Lmiui/stepcounter/StepProvider$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lmiui/stepcounter/StepProvider$DBHelper;->sSingleton:Lmiui/stepcounter/StepProvider$DBHelper;

    .line 364
    :cond_12
    sget-object v1, Lmiui/stepcounter/StepProvider$DBHelper;->sSingleton:Lmiui/stepcounter/StepProvider$DBHelper;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 360
    .end local p0    # "context":Landroid/content/Context;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 373
    const-string v0, "CREATE TABLE StepsTable (_id INTEGER PRIMARY KEY AUTOINCREMENT, _begin_time INTEGER NOT NULL, _end_time INTEGER NOT NULL, _mode INTEGER NOT NULL, _steps INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 378
    const-string v0, "DROP TABLE IF EXISTS StepsTable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, p1}, Lmiui/stepcounter/StepProvider$DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 380
    return-void
.end method
