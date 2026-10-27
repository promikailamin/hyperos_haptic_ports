.class public Lcom/android/internal/phrase/QueryPhraseTask;
.super Landroid/os/AsyncTask;
.source "QueryPhraseTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QueryPhraseTask"


# instance fields
.field private blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQueryPhraseListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/phrase/QueryPhraseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/phrase/QueryPhraseListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queryPhraseListener"    # Lcom/android/internal/phrase/QueryPhraseListener;

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/phrase/QueryPhraseTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/phrase/QueryPhraseTask;->mQueryPhraseListenerRef:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method

.method private static blacklist queryPhrase(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/phrase/Phrases;->WORDS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 48
    if-eqz v0, :cond_31

    .line 49
    :goto_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 50
    sget-object v2, Lcom/android/internal/phrase/Phrases;->WORDS:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "word":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v2    # "word":Ljava/lang/String;
    :cond_30
    goto :goto_17

    .line 56
    :cond_31
    const-string v2, "QueryPhraseTask"

    const-string v3, "fail to query Phrases.Phrase.WORDS_CONTENT_URI"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_3e

    .line 59
    :cond_38
    if-eqz v0, :cond_3d

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_3d
    return-object v1

    .line 59
    :catchall_3e
    move-exception v2

    if-eqz v0, :cond_44

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_44
    throw v2
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/phrase/QueryPhraseTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/android/internal/phrase/QueryPhraseTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 28
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v1, "phrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/phrase/QueryPhraseTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_19

    .line 30
    invoke-static {v0}, Lcom/android/internal/phrase/QueryPhraseTask;->queryPhrase(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 32
    :cond_19
    return-object v1
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 15
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/internal/phrase/QueryPhraseTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "phrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/phrase/QueryPhraseTask;->mQueryPhraseListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/phrase/QueryPhraseListener;

    .line 38
    .local v0, "queryPhraseListener":Lcom/android/internal/phrase/QueryPhraseListener;
    if-eqz p1, :cond_f

    if-eqz v0, :cond_f

    .line 39
    invoke-interface {v0, p1}, Lcom/android/internal/phrase/QueryPhraseListener;->onPostExecute(Ljava/util/ArrayList;)V

    .line 41
    :cond_f
    return-void
.end method
