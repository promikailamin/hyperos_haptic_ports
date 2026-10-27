.class public interface abstract Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
.super Ljava/lang/Object;
.source "ExceptionContext.java"


# virtual methods
.method public abstract blacklist addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
.end method

.method public abstract blacklist getContextEntries()Ljava/util/List;
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
.end method

.method public abstract blacklist getContextLabels()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getContextValues(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract blacklist getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract blacklist getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
.end method
