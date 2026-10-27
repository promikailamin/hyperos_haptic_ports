.class public Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;
.super Ljava/lang/Object;
.source "DefaultExceptionContext.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x132dd72L


# instance fields
.field private final blacklist contextValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    new-instance v1, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method

.method public bridge synthetic blacklist addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getContextEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getContextLabels()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 102
    .local v0, "labels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/tuple/Pair;

    .line 103
    .local v2, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v2    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_b

    .line 105
    :cond_21
    return-object v0
.end method

.method public blacklist getContextValues(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/tuple/Pair;

    .line 78
    .local v2, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 79
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v2    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2a
    goto :goto_b

    .line 82
    :cond_2b
    return-object v0
.end method

.method public blacklist getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "label"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/miui/commons/lang3/tuple/Pair;

    .line 90
    .local v1, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lorg/apache/miui/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 91
    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 93
    .end local v1    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_23
    goto :goto_6

    .line 94
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "baseMessage"    # Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_c

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_c
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8c

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 129
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :cond_1f
    const-string v1, "Exception Context:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/tuple/Pair;

    .line 135
    .local v3, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "\t["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 141
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_60

    .line 142
    const-string v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 146
    :cond_60
    :try_start_60
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_65

    .line 149
    .local v5, "valueStr":Ljava/lang/String;
    goto :goto_7e

    .line 147
    .end local v5    # "valueStr":Ljava/lang/String;
    :catch_65
    move-exception v5

    .line 148
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown on toString(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 150
    .local v5, "valueStr":Ljava/lang/String;
    :goto_7e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .end local v5    # "valueStr":Ljava/lang/String;
    :goto_81
    const-string v5, "]\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v3    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_2b

    .line 154
    :cond_87
    const-string v2, "---------------------------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .end local v1    # "i":I
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;
    .registers 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/miui/commons/lang3/tuple/Pair;

    .line 64
    .local v1, "p":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lorg/apache/miui/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 67
    .end local v1    # "p":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_21
    goto :goto_6

    .line 68
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/miui/commons/lang3/tuple/Pair<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_22
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    .line 69
    return-object p0
.end method

.method public bridge synthetic blacklist setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    move-result-object p1

    return-object p1
.end method
