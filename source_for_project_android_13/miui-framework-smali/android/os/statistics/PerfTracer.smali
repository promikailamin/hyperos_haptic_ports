.class public Landroid/os/statistics/PerfTracer;
.super Ljava/lang/Object;
.source "PerfTracer.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist beginTracePoint(Ljava/lang/String;)V
    .registers 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;)V
    .registers 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;I)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "thresholdInMillis"    # I

    .line 14
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;J)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J

    .line 17
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;JI)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J
    .param p3, "thresholdInMillis"    # I

    .line 20
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;JLjava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J
    .param p3, "objectValue"    # Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberValue"    # J
    .param p3, "objectValue"    # Ljava/lang/Object;
    .param p4, "thresholdInMillis"    # I

    .line 32
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "objectValue"    # Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static blacklist endTracePoint(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "objectValue"    # Ljava/lang/Object;
    .param p2, "thresholdInMillis"    # I

    .line 26
    return-void
.end method
