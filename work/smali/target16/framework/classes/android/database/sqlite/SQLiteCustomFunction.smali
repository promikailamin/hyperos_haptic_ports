.class public final Landroid/database/sqlite/SQLiteCustomFunction;
.super Ljava/lang/Object;
.source "SQLiteCustomFunction.java"


# instance fields
.field public final greylist-max-o callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field public final greylist-max-p name:Ljava/lang/String;

.field public final greylist-max-r numArgs:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_c

    .line 48
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCustomFunction;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Landroid/database/sqlite/SQLiteCustomFunction;->numArgs:I

    .line 50
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 51
    return-void

    .line 45
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-r dispatchCallback([Ljava/lang/String;)V
    .registers 3

    .line 57
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$CustomFunction;->callback([Ljava/lang/String;)V

    .line 58
    return-void
.end method
