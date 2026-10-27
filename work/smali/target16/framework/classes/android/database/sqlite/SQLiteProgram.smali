.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final greylist-max-r mBindArgs:[Ljava/lang/Object;

.field private final greylist-max-o mColumnNames:[Ljava/lang/String;

.field private final greylist-max-o mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final greylist-max-o mNumParameters:I

.field private final greylist-max-o mReadOnly:Z

.field private final greylist mSql:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .registers 9

    .line 45
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 49
    iget-object p2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {p2}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result p2

    .line 50
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_8c

    .line 60
    const/4 v1, 0x1

    if-ne p2, v1, :cond_22

    goto :goto_23

    .line 54
    :pswitch_19
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 55
    sget-object p1, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 56
    iput v0, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    .line 57
    goto :goto_41

    .line 60
    :cond_22
    move v1, v0

    .line 61
    :goto_23
    new-instance p2, Landroid/database/sqlite/SQLiteStatementInfo;

    invoke-direct {p2}, Landroid/database/sqlite/SQLiteStatementInfo;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result p1

    .line 62
    invoke-virtual {v2, v3, p1, p4, p2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 65
    iget-boolean p1, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 66
    iget-object p1, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 67
    iget p1, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iput p1, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    .line 71
    :goto_41
    if-eqz p3, :cond_75

    array-length p1, p3

    iget p2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, p2, :cond_49

    goto :goto_75

    .line 72
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Too many bind arguments.  "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " arguments were provided but the statement needs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " arguments."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_75
    :goto_75
    iget p1, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz p1, :cond_88

    .line 78
    iget p1, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 79
    if-eqz p3, :cond_8b

    .line 80
    iget-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    array-length p2, p3

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8b

    .line 83
    :cond_88
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 85
    :cond_8b
    :goto_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x4
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private greylist-max-o bind(ILjava/lang/Object;)V
    .registers 5

    .line 215
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    iget v1, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, v1, :cond_d

    .line 220
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    sub-int/2addr p1, v0

    aput-object p2, v1, p1

    .line 221
    return-void

    .line 216
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind argument at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because the index is out of range.  The statement has "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " parameters."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public whitelist bindAllArgsAsStrings([Ljava/lang/String;)V
    .registers 4

    .line 202
    if-eqz p1, :cond_f

    .line 203
    array-length v0, p1

    :goto_3
    if-eqz v0, :cond_f

    .line 204
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 207
    :cond_f
    return-void
.end method

.method public whitelist bindBlob(I[B)V
    .registers 5

    .line 181
    if-eqz p2, :cond_6

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 185
    return-void

    .line 182
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the bind value at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist bindDouble(ID)V
    .registers 4

    .line 156
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public whitelist bindLong(IJ)V
    .registers 4

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public whitelist bindNull(I)V
    .registers 3

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public whitelist bindString(ILjava/lang/String;)V
    .registers 5

    .line 167
    if-eqz p2, :cond_6

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 171
    return-void

    .line 168
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the bind value at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist clearBindings()V
    .registers 3

    .line 191
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 192
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    :cond_a
    return-void
.end method

.method final greylist-max-o getBindArgs()[Ljava/lang/Object;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method final greylist-max-o getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected final greylist-max-o getConnectionFlags()I
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v0

    return v0
.end method

.method final greylist-max-o getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected final greylist-max-o getSession()Landroid/database/sqlite/SQLiteSession;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o getSql()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getUniqueId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist onAllReferencesReleased()V
    .registers 1

    .line 211
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 212
    return-void
.end method

.method protected final greylist-max-o onCorruption()V
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 116
    return-void
.end method
