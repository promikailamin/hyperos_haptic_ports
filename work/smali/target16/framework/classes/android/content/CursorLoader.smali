.class public Landroid/content/CursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-r mCancellationSignal:Landroid/os/CancellationSignal;

.field greylist-max-o mCursor:Landroid/database/Cursor;

.field final greylist-max-r mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field greylist-max-o mProjection:[Ljava/lang/String;

.field greylist-max-o mSelection:Ljava/lang/String;

.field greylist-max-o mSelectionArgs:[Ljava/lang/String;

.field greylist-max-o mSortOrder:Ljava/lang/String;

.field greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance p1, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object p1, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 143
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance p1, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object p1, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 145
    iput-object p2, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 146
    iput-object p3, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 147
    iput-object p4, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 149
    iput-object p6, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist cancelLoadInBackground()V
    .registers 2

    .line 94
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 96
    monitor-enter p0

    .line 97
    :try_start_4
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 100
    :cond_d
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public whitelist deliverResult(Landroid/database/Cursor;)V
    .registers 4

    .line 106
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 108
    if-eqz p1, :cond_b

    .line 109
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_b
    return-void

    .line 113
    :cond_c
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 114
    iput-object p1, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 116
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 117
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 120
    :cond_19
    if-eqz v0, :cond_26

    if-eq v0, p1, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_26

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_26
    return-void
.end method

.method public bridge synthetic whitelist deliverResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mUri="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mProjection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mSelection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mSelectionArgs="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mSortOrder="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mCursor="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mContentChanged="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 250
    return-void
.end method

.method public whitelist getProjection()[Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSelection()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSelectionArgs()[Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSortOrder()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist loadInBackground()Landroid/database/Cursor;
    .registers 10

    .line 65
    monitor-enter p0

    .line 66
    :try_start_1
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 69
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 70
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_50

    .line 72
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_41

    .line 74
    if-eqz v2, :cond_38

    .line 77
    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 78
    iget-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_32} :catch_33
    .catchall {:try_start_2a .. :try_end_32} :catchall_41

    .line 82
    goto :goto_38

    .line 79
    :catch_33
    move-exception v0

    .line 80
    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    throw v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_41

    .line 84
    :cond_38
    :goto_38
    nop

    .line 86
    monitor-enter p0

    .line 87
    :try_start_3a
    iput-object v1, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 88
    monitor-exit p0

    .line 84
    return-object v2

    .line 88
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    throw v0

    .line 86
    :catchall_41
    move-exception v0

    monitor-enter p0

    .line 87
    :try_start_43
    iput-object v1, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 88
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 89
    throw v0

    .line 88
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 67
    :cond_4a
    :try_start_4a
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    .line 70
    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_50

    throw v0
.end method

.method public bridge synthetic whitelist loadInBackground()Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCanceled(Landroid/database/Cursor;)V
    .registers 3

    .line 180
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 181
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_b
    return-void
.end method

.method public bridge synthetic whitelist onCanceled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected whitelist onReset()V
    .registers 2

    .line 187
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 190
    invoke-virtual {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    .line 192
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 193
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 196
    return-void
.end method

.method protected whitelist onStartLoading()V
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 164
    :cond_9
    invoke-virtual {p0}, Landroid/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_16

    .line 165
    :cond_13
    invoke-virtual {p0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 167
    :cond_16
    return-void
.end method

.method protected whitelist onStopLoading()V
    .registers 1

    .line 175
    invoke-virtual {p0}, Landroid/content/CursorLoader;->cancelLoad()Z

    .line 176
    return-void
.end method

.method public whitelist setProjection([Ljava/lang/String;)V
    .registers 2

    .line 211
    iput-object p1, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 212
    return-void
.end method

.method public whitelist setSelection(Ljava/lang/String;)V
    .registers 2

    .line 219
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public whitelist setSelectionArgs([Ljava/lang/String;)V
    .registers 2

    .line 227
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 228
    return-void
.end method

.method public whitelist setSortOrder(Ljava/lang/String;)V
    .registers 2

    .line 235
    iput-object p1, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public whitelist setUri(Landroid/net/Uri;)V
    .registers 2

    .line 203
    iput-object p1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 204
    return-void
.end method
