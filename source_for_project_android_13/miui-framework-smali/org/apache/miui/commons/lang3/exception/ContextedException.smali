.class public Lorg/apache/miui/commons/lang3/exception/ContextedException;
.super Ljava/lang/Exception;
.source "ContextedException.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/exception/ExceptionContext;


# static fields
.field private static final whitelist serialVersionUID:J = 0x132dd72L


# instance fields
.field private final blacklist exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 99
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 112
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/miui/commons/lang3/exception/ExceptionContext;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "context"    # Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    if-nez p3, :cond_b

    .line 149
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    move-object p3, v0

    .line 151
    :cond_b
    iput-object p3, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 123
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 124
    return-void
.end method


# virtual methods
.method public blacklist addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 170
    return-object p0
.end method

.method public bridge synthetic blacklist addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 3

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;

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

    .line 209
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContextLabels()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContextValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 195
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "label"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "baseMessage"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 227
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/exception/ContextedException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRawMessage()Ljava/lang/String;
    .registers 2

    .line 238
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 188
    return-object p0
.end method

.method public bridge synthetic blacklist setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 3

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedException;

    move-result-object p1

    return-object p1
.end method
