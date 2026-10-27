.class public Landroid/os/statistics/SystemTraceSuperviser;
.super Ljava/lang/Object;
.source "SystemTraceSuperviser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asyncBeginSupervisedTrace(JLjava/lang/String;I)V
    .registers 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 26
    return-void
.end method

.method public static blacklist asyncBeginTrace(JLjava/lang/String;I)V
    .registers 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 20
    return-void
.end method

.method public static blacklist asyncEndSupervisedTrace(JLjava/lang/String;ILjava/lang/Object;)V
    .registers 5
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static blacklist asyncEndTrace(JLjava/lang/String;I)V
    .registers 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 23
    return-void
.end method

.method public static blacklist beginSupervisedTrace(JLjava/lang/String;)V
    .registers 3
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static blacklist beginTrace(JLjava/lang/String;)V
    .registers 3
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static blacklist endSupervisedTrace(JLjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "traceTag"    # J
    .param p2, "traceName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public static blacklist endTrace(J)V
    .registers 2
    .param p0, "traceTag"    # J

    .line 11
    return-void
.end method
