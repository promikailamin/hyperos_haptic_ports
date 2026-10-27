.class public abstract Landroid/filterfw/io/GraphReader;
.super Ljava/lang/Object;
.source "GraphReader.java"


# instance fields
.field protected blacklist mReferences:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    return-void
.end method


# virtual methods
.method public blacklist addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 58
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public varargs blacklist addReferencesByKeysAndValues([Ljava/lang/Object;)V
    .registers 3

    .line 66
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public blacklist addReferencesByMap(Landroid/filterfw/core/KeyValueMap;)V
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public blacklist readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 43
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 44
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 45
    const/16 v0, 0x400

    new-array v1, v0, [C

    .line 48
    :goto_16
    const/4 v2, 0x0

    :try_start_17
    invoke-virtual {p2, v1, v2, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    if-lez v3, :cond_21

    .line 49
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_2b

    goto :goto_16

    .line 53
    :cond_21
    nop

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object p1

    return-object p1

    .line 51
    :catch_2b
    move-exception p1

    .line 52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not read specified resource file!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract blacklist readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method

.method public abstract blacklist readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method
