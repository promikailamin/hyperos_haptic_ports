.class public Landroid/content/ClipboardManagerStubImpl;
.super Landroid/content/ClipboardManagerStub;
.source "ClipboardManagerStubImpl.java"


# instance fields
.field private blacklist mTraceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/ClipboardManagerStub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isMatchReadRule(Landroid/content/IClipboard;)Z
    .registers 9
    .param p1, "service"    # Landroid/content/IClipboard;

    .line 21
    iget-object v0, p0, Landroid/content/ClipboardManagerStubImpl;->mTraceInfo:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 22
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManagerStubImpl;->mTraceInfo:Ljava/util/Map;

    .line 24
    :try_start_12
    invoke-interface {p1}, Landroid/content/IClipboard;->getClipboardClickTrace()Ljava/util/Map;

    move-result-object v0

    .line 25
    .local v0, "rule":Ljava/util/Map;
    if-eqz v0, :cond_1d

    .line 26
    iget-object v2, p0, Landroid/content/ClipboardManagerStubImpl;->mTraceInfo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_55

    .line 30
    .end local v0    # "rule":Ljava/util/Map;
    :cond_1d
    nop

    .line 32
    :cond_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 33
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    move v3, v1

    :goto_28
    if-ge v3, v2, :cond_54

    aget-object v4, v0, v3

    .line 34
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    .line 35
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Landroid/content/ClipboardManagerStubImpl;->mTraceInfo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 36
    iget-object v1, p0, Landroid/content/ClipboardManagerStubImpl;->mTraceInfo:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 33
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "key":Ljava/lang/String;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 39
    :cond_54
    return v1

    .line 28
    .end local v0    # "elements":[Ljava/lang/StackTraceElement;
    :catch_55
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
