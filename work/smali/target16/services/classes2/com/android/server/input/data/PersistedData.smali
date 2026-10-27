.class public abstract Lcom/android/server/input/data/PersistedData;
.super Ljava/lang/Object;
.source "PersistedData.java"


# instance fields
.field public final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/input/data/PersistedData;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/input/data/PersistedData;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public readData(Ljava/io/InputStream;Z)Ljava/util/List;
    .registers 4

    if-eqz p2, :cond_10

    .line 59
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    .line 60
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 62
    :cond_10
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    .line 64
    :goto_14
    invoke-virtual {p0, p2}, Lcom/android/server/input/data/PersistedData;->readListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract readListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
.end method

.method public writeData(Ljava/io/OutputStream;ZLjava/util/List;)V
    .registers 5

    if-eqz p2, :cond_10

    .line 78
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 79
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 81
    :cond_10
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 83
    :goto_14
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/data/PersistedData;->writeListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    return-void
.end method

.method public abstract writeListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
.end method
